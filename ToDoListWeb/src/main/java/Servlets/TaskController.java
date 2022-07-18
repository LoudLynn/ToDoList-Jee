package Servlets;

import java.io.IOException; 

import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.TaskDao;
import Daos.TaskDaoImpl;
import Daos.UserDao;
import Model.Task;
@WebServlet("/")
public class TaskController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private TaskDao taskDAO;

	public void init() {
		taskDAO = new TaskDaoImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertTask(request, response);
				break;
			case "/delete":
				deleteTask(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateTask(request, response);
				break;
			case "/list":
				listTask(request, response);
				break;
			case "/home":
				homePage(request, response);
				break;	
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("Login/login.jsp");
				dispatcher.forward(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listTask(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Task> listTask = taskDAO.selectAllTasks();
		request.setAttribute("listTask", listTask);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Task/TaskList.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Task/TaskForm.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Task existingTask = taskDAO.selectTask(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Task/TaskForm.jsp");
		request.setAttribute("task", existingTask);
		dispatcher.forward(request, response);

	}

	private void insertTask(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String isDone = request.getParameter("isDone");
		String category = request.getParameter("category");
		Task newTask = new Task(title, description, LocalDate.now(), isDone,category);
		taskDAO.insertTask(newTask);
		response.sendRedirect("list");
	}

	private void updateTask(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("idTask"));
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-mm-dd");
		LocalDate deadline = LocalDate.parse(request.getParameter("deadline"),df);
		String isDone = request.getParameter("isDone");
		String category = request.getParameter("category");
		Task updateTask = new Task(id, title, description, deadline, isDone,category);
		
		taskDAO.updateTask(updateTask);
		
		response.sendRedirect("list");
	}

	private void deleteTask(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		           
		            String id = request.getParameter("id");
		            if(null != id && !("".equals(id))) {
		                try {
		                    int number = Integer.parseInt(id.trim());
		                    taskDAO.deleteTask(number);
		                }
		                catch(NumberFormatException e) {
		                    e.printStackTrace();
		                }
		            }
		     
		
		response.sendRedirect("list");
	}
	private void homePage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("HomePage/Home.jsp");
		dispatcher.forward(request, response);
	}
}
