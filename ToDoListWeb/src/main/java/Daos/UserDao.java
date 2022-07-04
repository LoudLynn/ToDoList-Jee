package Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Connexion.Connect;
import Model.User;

public class UserDao {
 
	public int registerUser(User user) throws ClassNotFoundException {
		String insert = "insert into users ( lastname,firstname, username, pwd) VALUES (?, ?, ?, ?)";

		int result = 0;
		try (Connection connection = Connect.getConnection();
				
			PreparedStatement preparedStatement = connection.prepareStatement(insert)) {
			preparedStatement.setString(1, user.getLastName());
			preparedStatement.setString(2, user.getFirstName());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());

			System.out.println(preparedStatement);
		
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			Connect.printSQLException(e);
		}
		return result;
	}
}
