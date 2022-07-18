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
<body >
<jsp:include page="../HomePage/PageHeader.jsp"></jsp:include>

	<div class="row">

		<div class="container">
			<h3 class="text-center">List of Tasks</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new"
					class="btn btn-success">Add Task</a>
			</div>
			<br>
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th  scope="col">Title</th>
						<th scope="col">Deadline</th>
						<th scope="col">Status</th>
						<th scope="col">Category</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="task" items="${listTask}">

						<tr>
							<td><c:out value="${task.title}" /></td>
							<td><c:out value="${task.deadline}" /></td>
							<td><c:out value="${task.status}" /></td>
                            <td><c:out value="${task.category}" /></td>
							<td><a href="edit?id=<c:out value='${task.idTask}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="delete?id=<c:out value='${task.idTask}'/>">Delete</a></td>

						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

	<jsp:include page="../HomePage/PageFooter.jsp"></jsp:include>
</body>
</html>