<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>


<body>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2>User Register Form</h2>
						<div class="col-md-6 col-md-offset-3">
							<%-- <div class="alert alert-success center" role="alert">
								<p>${NOTIFICATION}</p>
							</div> --%>

							<form action="<%=request.getContextPath()%>/Register"
								method="post" class="register-form" id="register-form">

								<div class="form-group">
									<label for="firstname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input type="text"
										class="form-control" id="uname" placeholder="First Name"
										name="firstName" required>
								</div>

								<div class="form-group">
									<label for="uname"><i class="zmdi"></i></label> <input type="text"
										class="form-control" id="uname" placeholder="last Name"
										name="lastName" required>
								</div>

								<div class="form-group">
									<label for="uname"><i class="zmdi"></i></label> <input type="text"
										class="form-control" id="username" placeholder="User Name"
										name="username" required>
								</div>

								<div class="form-group">
									<label for="uname"><i class="zmdi"></i></label> <input type="password"
										class="form-control" id="password" placeholder="Password"
										name="password" required>
								</div>
								
                                <div class="form-group">
                            		<button type="submit" class="btn btn-primary">Sign up</button>
                                
                                </div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
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
  
  .signup-image {
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
.signup-form {
    order: 1;
    -moz-order: 1;
    -webkit-order: 1;
    -o-order: 1;
    -ms-order: 1;
    margin-right: 0px;
    margin-left: 0px;
    padding: 0 30px; }
.signup-form, .signup-image{
    width: 50%;
    overflow: hidden;
}
.signup-content {
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
  padding: 10px 30px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  margin-top: 25px;
  cursor: pointer; }
  .form-submit:hover {
    background: #4292dc; }
.signup-form {
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
</html>