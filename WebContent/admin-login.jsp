<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Foody</title>
<link rel="stylesheet" type="text/css" href="libfile/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="FontAwesome\css\all.css">

<style type="text/css">
body {
	background-image: url("image/loginpic1.jpg");
	background-repeat: no-repeat;
	background-size: 100% 700px;
	/*   width: 100%;
          height: 601px;*/
}

h2 {
	font-family: arial;
}

.main-content {
	margin-top: 200px;
	width: 350px;
	height: 310px;
	background-color: black;
	opacity: 0.8;
	margin-left: 33%;
}

.btn {
	width: 25%;
	font-size: 16px;
	border-radius: 0px;
	border: 2px solid;
	color: white
}

.login-btn:hover {
	color: black;
	background: white;
}
</style>

</head>
<body>
	<div class="container">

		<div class="main-content">
			<form action="loginform" method="post">
				<h2 class="ml-3 text-white pt-3">Login</h2>
				<div class="form-group  ml-3 mr-3">
					<label for="username" class="text-white mt-3">UserName</label> <input
						type="text" required name="username" id="username"
						autocomplete="off" class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="password" class="text-white">Password</label> <input
						type="password" required name="password" id="password"
						class="form-control bg-dark text-white">
				</div>

				<input type="submit" value="Login" class="btn ml-3 login-btn">


			</form>
		</div>

	</div>

</body>
</html>