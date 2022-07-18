<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<title>Home</title>
</head>
<body style="background-color: white">
<jsp:include page="../HomePage/PageHeader.jsp"></jsp:include>

    <h3 id="wlc">Welcome Home</h3>

    <div id="info">This is my To Do List that i  created with JEE </div>
    
<jsp:include page="../HomePage/PageFooter.jsp"></jsp:include>


</body>
<style>
#info{padding: 50px;
  margin: 5px 20px 5px 20px;}
#wlc{

padding: 50px;
  margin: 20px;}  
</style>
</html>