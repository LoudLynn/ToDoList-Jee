package Model;

import java.time.LocalDate;

//import java.util.Objects;

public class Task {
	
	
	  private  int IdTask;
	  private  String Title;
	  private  String Description;
	  private  String  Status;
	  private  LocalDate Deadline;
	  private  int Idur;
	  private  String Category;
	  
	  
	  
	  
	protected Task() {
		
	}
	
	
	
	public Task(Integer idTask, String title, String description, LocalDate deadline,String isDone,
			 int idur,String category) {
		super();
		IdTask = idTask;
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		Idur = idur;
		Category = category;
		
	}
	public Task(String title, String description, LocalDate deadline,String isDone,
			 int idur,String category) {
		super();
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		Idur = idur;
		Category = category;
		
	}

	public Task(Integer idTask,String title, String description, LocalDate deadline,String isDone, int idur) {
		super();
		IdTask = idTask;
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		Idur = idur;
	}
	public Task(Integer idTask,String title, String description, LocalDate deadline,String isDone) {
		super();
		IdTask = idTask;
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
	}
	public Task(String title, String description, LocalDate deadline,String isDone) {
		super();
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		
	}
	public Task(Integer idTask,String title, String description, LocalDate deadline,String isDone,String category) {
		super();
		IdTask = idTask;
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		Category = category;
	}
	public Task(String title, String description, LocalDate deadline,String isDone,String category) {
		super();
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		Category = category;
		
	}
	

	
	public Task(String title, String description, LocalDate deadline,String isDone, int idur) {
		super();
		Title = title;
		Description = description;
		Status = isDone;
		Deadline = deadline;
		Idur = idur;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (IdTask ^ (IdTask >>> 32));
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Task other = (Task) obj;
		if (IdTask != other.IdTask)
			return false;
		return true;
	}



	public Integer getIdTask() {
		return IdTask;
	}
	public void setIdTask(Integer idTask) {
		IdTask = idTask;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public LocalDate getDeadline() {
		return Deadline;
	}
	public void setDeadline(LocalDate deadline) {
		Deadline = deadline;
	}

	public int getIdur() {
		return Idur;
	}

	public void setIdur(int idur) {
		this.Idur = idur;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}
	 
}
