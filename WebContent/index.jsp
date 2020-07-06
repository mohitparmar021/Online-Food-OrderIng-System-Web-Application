<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="libfile/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="FontAwesome\css\all.css">
<style type="text/css">
.dropbtn {
	cursor: pointer;
	font-size: 20px;
	border: none;
	outline: none;
	color: white;
	padding: 8px 12px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

body {
	background-image: url(image/front.jpg);
	background-repeat: no-repeat;
	background-size: 100% 700px;
	/*   width: 100%;
          height: 601px;*/
}

.main-content {
	margin-top: 250px;
}

.main-content a {
	width: 13%;
	padding-left: 5px;
	margin-left: 8px;
}
</style>
</head>
<body>
	<div class="main">
	
<%@ include file="view/nav.jsp" %>	

		<div class="main-content" align="center">

			<a href="breakfast-menu.jsp" class="btn btn-lg btn-primary">BreakFast
				Menu</a> <a href="lunch-menu.jsp" class="btn btn-lg btn-success">Lunch Menu</a><br>
			<br> <a href="dinner-menu.jsp" class="btn btn-lg btn-info">Dinner Menu</a>
		</div>

	</div>
</body>
</html>