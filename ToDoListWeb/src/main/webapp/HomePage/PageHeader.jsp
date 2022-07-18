<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<header>

		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #63AEC4">
			<div>
				<h3>My List To Do</h3>
			</div>
            
			<ul class="navbar-nav">
			    <li> <a href="<%=request.getContextPath()%>/home"
					class="nav-link">Home</a></li>
					
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Tasks</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">Logout</a></li>
				
			</ul>
		</nav>
</header>
</body>
<style>
		.navbar-nav{
		margin-left:35px;
		}
		.nav-link:hover{
		font-size:17px;
		}
		
		h3{
		font-family:Garamond;
		}
</style>
</html>	
