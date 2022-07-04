package Connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;

public class Connect {

	private static String URL = "jdbc:postgresql://localhost:5432/brief8";
	private static String Username = "postgres";
	private static String Password = "1234";

	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(URL, Username, Password);
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
		return connection;
	}

	public static void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

	public static Date getSQLDate(LocalDate date) {
		return java.sql.Date.valueOf(date);
	}

	public static LocalDate getUtilDate(Date sqlDate) {
		return ((java.sql.Date) sqlDate).toLocalDate();
	}
}
