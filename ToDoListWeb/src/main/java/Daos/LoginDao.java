package Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Connexion.Connect;
import Model.Login;

public class LoginDao {

	public boolean validate(Login login) throws ClassNotFoundException {
		boolean status = false;

		Class.forName("org.postgresql.Driver");

		try (Connection connection = Connect.getConnection();
			
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from users where username = ? and pwd = ? ")) {
			preparedStatement.setString(1, login.getUsername());
			preparedStatement.setString(2, login.getPassword());

			//System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			
			Connect.printSQLException(e);
		}
		return status;
	}
}
