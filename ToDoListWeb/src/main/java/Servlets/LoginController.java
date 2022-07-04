package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Daos.LoginDao;
import Model.Login;
@WebServlet("/login")
public class LoginController extends HttpServlet  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("Login/login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		authenticate(request, response);
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Login login = new Login();
		login.setUsername(username);
		login.setPassword(password);

		try {
			if (loginDao.validate(login)) {
				response.sendRedirect("list");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("user", username);		
				response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
