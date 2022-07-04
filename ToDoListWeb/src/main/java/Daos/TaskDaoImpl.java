package Daos;

import java.sql.Connection;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import Connexion.Connect;
import Model.Task;

public class TaskDaoImpl implements TaskDao{

	public TaskDaoImpl() {}
	
	private static final String insert = "INSERT INTO task"+ " (title, description, deadline,status,category) VALUES " + " (?, ?, ?, ?,?);";

	private static final String SelectById = "select idtask,title,description,deadline,status,category from task where idtask =?";
	private static final String SelectAll= "select * from task";
	private static final String DeleteById = "delete from task where idtask = ?;";
	private static final String Update = "update task set title = ?, description =?, deadline =?, status = ?, category= ? where idtask = ?;";

	
	@Override
	public void insertTask(Task task) throws SQLException {
		try (Connection connection = Connect.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(insert)) {
			preparedStatement.setString(1, task.getTitle());
			preparedStatement.setString(2, task.getDescription());
			preparedStatement.setDate(3, (Date) Connect.getSQLDate(task.getDeadline()));
			preparedStatement.setString(4, task.getStatus());
			preparedStatement.setString(5, task.getCategory());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException exception) {
			Connect.printSQLException(exception);
		}		
	}

	@Override
	public Task selectTask(int taskId) {
		Task task = null;
	
		try (Connection connection = Connect.getConnection();
			
				PreparedStatement preparedStatement = connection.prepareStatement(SelectById);) {
			preparedStatement.setInt(1, taskId);
		
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("idTask");
				String title = rs.getString("title");
				String description = rs.getString("description");
				LocalDate deadline = rs.getDate("deadline").toLocalDate();
				String isDone = rs.getString("status");
			    String category=rs.getString("category");
				//String username = rs.getString("username");

			    
				task = new Task(id, title, description,deadline,isDone,category);
			}
		} catch (SQLException exception) {
			Connect.printSQLException(exception);
		}
		return task;
	}

	@Override
	public List<Task> selectAllTasks() {
		List<Task> tasks = new ArrayList<>();

		try (Connection connection = Connect.getConnection();

				PreparedStatement preparedStatement = connection.prepareStatement(SelectAll);) {
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();

		
			while (rs.next()) {
				int id = rs.getInt("idTask");
				String title = rs.getString("title");
				String description = rs.getString("description");
				LocalDate deadline = rs.getDate("deadline").toLocalDate();
				String isDone = rs.getString("status");
			    String category=rs.getString("category");
				//String username = rs.getString("username");

				tasks.add(new Task(id, title, description,deadline,isDone,category));
			}
		} catch (SQLException exception) {
			Connect.printSQLException(exception);
		}
		return tasks;
	}

	@Override
	public boolean deleteTask(int IdTask) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = Connect.getConnection();
				PreparedStatement statement = connection.prepareStatement(DeleteById);) {
			statement.setInt(1, IdTask);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	@Override
	public boolean updateTask(Task task) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = Connect.getConnection();
				PreparedStatement statement = connection.prepareStatement(Update);) {
			statement.setString(1, task.getTitle());
			statement.setString(2, task.getDescription());
			statement.setDate(3, (Date) Connect.getSQLDate(task.getDeadline()));
			statement.setString(4, task.getStatus());
			statement.setString(5, task.getCategory());
			statement.setInt(6, task.getIdTask());
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

}
