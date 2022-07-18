package Daos;

import java.sql.SQLException;
import java.util.List;

import Model.Task;

public interface TaskDao {

	void insertTask(Task task) throws SQLException;

	Task selectTask(int Id);

	List<Task> selectAllTasks();

	boolean deleteTask(int IdTask) throws SQLException;

	boolean updateTask(Task task) throws SQLException;
}
