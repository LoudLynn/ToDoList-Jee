<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Tasks Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

</head>
<body style="background-color: #DAE1E7">
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #3A597A">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> My
					list To Do</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Tasks</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${task != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${task == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${task != null}">
            			Edit Task
            		    </c:if>
						<c:if test="${task == null}">
            			Add New Task
            		    </c:if>
					</h2>
				</caption>

				<c:if test="${Task != null}">
					<input type="hidden" name="idTask"
						value="<c:out value='${task.idTask}'/>" />
				</c:if>

				<fieldset class="form-group">
					<label>Task Title</label> <input type="text"
						value="<c:out value='${task.Title}' />" class="form-control"
						name="title" required="required" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Task Description</label> <input type="text"
						value="<c:out value='${task.Description}' />" class="form-control"
						name="description" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Task Status</label> <select class="form-control"
						name="isDone">
						<option value="To do">To do</option>
						<option value="Doing">Doing</option>
						<option value="Done">Done</option>
					</select>
				</fieldset>

				<fieldset class="form-group">
					<label>Task Deadline</label> 
					<input type="date"
						value="<c:out value='${task.Deadline}' />" class="form-control"
						name="deadline" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Task Category</label> <select class="form-control"
						name="category">
						<option value="Developing">Developing</option>
						<option value="Debugging">Debugging</option>
						<option value="Testing">Testing</option> 
					</select>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="../HomePage/PageFooter.jsp"></jsp:include>
</body>
</html>