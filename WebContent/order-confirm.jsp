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
	background-image: url("image/confirmorder.jpg");
	background-repeat: no-repeat;
	background-size: 100% 700px;
	/*   width: 100%;
          height: 601px;*/
}

h1 {
	font-family: arial;
	padding-top: 20px;
}

.main-content {
	margin-top: 200px;
	width: 570px;
	height: 340px;
	background-color: black;
	opacity: 0.6;
	margin-left: 25%;
}

p{
   font-size: 30px;
}
.btn {
	width: 25%;
	font-size: 16px;
	border-radius: 0px;
	border: 2px solid;
	color: white;
	margin-left: 38%;
}

.home-btn:hover {
	color: black;
	background: white;
}
</style>

</head>
<body>
	<div class="container">

		<div class="main-content">
		<h1 align="center" class="text-white ">Order Confirm</h1>
			<p class="text-white text-center mt-3">Your Order is getting Process.</p>
			<p class="text-white text-center ">Track your order at your Email Id... </p>
			<p class="text-white text-center">Thank You</p>
			
			<a href="index.jsp"  class="btn btn-lg home-btn">Home</a>
		</div>

	</div>

</body>
</html>