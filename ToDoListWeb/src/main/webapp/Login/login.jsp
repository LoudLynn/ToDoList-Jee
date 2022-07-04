<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="../css/style.css"/>

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

</head>
<style>
body {
  font-size: 13px;
  line-height: 1.8;
  color: #222;
  background: #f8f8f8;
  font-weight: 400;
  font-family: Poppins; }
  
  .container {
  width: 900px;
  background: #fff;
  margin: 0 auto;
  box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -webkit-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -o-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  -ms-box-shadow: 0px 15px 16.83px 0.17px rgba(0, 0, 0, 0.05);
  border-radius: 20px;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  -o-border-radius: 20px;
  -ms-border-radius: 20px; }
  
  .signin-image {
    margin-left: 110px;
    margin-right: 20px;
    margin-top: 10px;
}
h2 {
  line-height: 1.66;
  margin: 0;
  padding: 0;
  font-weight: bold;
  color: #222;
  font-family: Poppins;
  font-size: 36px; }
  figure {
  margin-bottom: 50px;
  text-align: center; }
.signin-form {
    order: 1;
    -moz-order: 1;
    -webkit-order: 1;
    -o-order: 1;
    -ms-order: 1;
    margin-right: 0px;
    margin-left: 0px;
    padding: 0 30px; }
.signin-form, .signin-image{
    width: 50%;
    overflow: hidden;
}
.signin-content {
    @extend display-flex;
    padding-top: 67px;
    padding-bottom: 87px;
    display: flex;
    display: -webkit-flex;
    
}
.form-submit {
  display: inline-block;
  background: #6dabe4;
  color: #fff;
  border-bottom: none;
  width: auto;
  padding: 15px 39px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  margin-top: 25px;
  cursor: pointer; }
  .form-submit:hover {
    background: #4292dc; }
.signin-form {
    margin-right: 90px;
    margin-left: 80px;
}
.form-group {
  position: relative;
  margin-bottom: 25px;
  overflow: hidden; }
  .form-group:last-child {
    margin-bottom: 0px; }
}
.register-form {
  width: 100%; }
</style>


<body>
	<div class="main" style=" background: #f8f8f8; padding: 50px 0;">

		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="../images/Checklist.png" alt="sing in image"></img>
						</figure>
					</div>
					
					<div class="signin-form">
						<h2 class="form-title">Login Form</h2>

						<form action="<%=request.getContextPath()%>/login" method="post"
							class="register-form" id="login-form">

							<div class="form-group">
								<label for="username"> <i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" class="form-control" id="username"
									placeholder="User Name" name="username" required>
							</div>

							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" class="form-control" id="password"
									placeholder="Password" name="password" required>
							</div>


							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
							<div>
														   <p>You are not a member ?</p>
                               <a href="Register/register.jsp">Sign up</a>

							</div>
						</form>

					</div>
				</div>
			</div>
		</section>
	</div>
	<jsp:include page="../HomePage/PageFooter.jsp"></jsp:include>
</body>
</html>
