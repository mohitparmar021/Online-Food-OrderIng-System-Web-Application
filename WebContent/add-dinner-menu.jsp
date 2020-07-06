<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Menu</title>
<link rel="stylesheet" type="text/css" href="libfile/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="FontAwesome\css\all.css">
<script src="libfile/jquery-3.4.1.min.js"></script>


<style type="text/css">
.dropbtn ,.dropbtn1,.dropbtn2{
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
	background-image: url(image/addmenu.jpg);
	background-repeat: no-repeat;
	background-size: 100% 700px;
	/*   width: 100%;
          height: 601px;*/
}

.main-content {
	width: 400px;
	height: 380px;
	background-color: black;
	opacity: 0.9;
	margin-left: 35%;
	border-radius: 0px;
	margin-top:50px;
}

.main-content a {
	width: 13%;
	padding-left: 5px;
	margin-left: 8px;
}

label {
	font-size: 20px;
}

.btn {
	width: 35%;
	font-size: 16px;
	border-radius: 0px;
	border: 2px solid;
	color: white
}
h1
{
font-family: arial;
margin-top: 30px;
}
.confirm-btn:hover {
	color: black;
	background: white;
}
</style>
</head>
<body>
	<div class="main">
		<%@ include file="view/adminnavwhite.jsp" %>	
		<h1 align="center" class="text-white">Add Dinner Item</h1>
		<div class="main-content">
			<form action="addDinnerMenu" method="get">
         
				<div class="form-group  ml-3 mr-3">
					<label for="item_name" class="text-white mt-3"> Item Name</label>
					<input type="text" style="text-transform: capitalize"    name="itemName" id=""
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="price" class="text-white">Price</label> <input
						type="number" required name="price"  id="price"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="time" class="text-white">Time</label> <input
						type="number" required name="time" id="time"
						class="form-control bg-dark text-white">
				</div>
				
				<input type="submit" value="Add Item"
					class="btn ml-3 mt-3 confirm-btn">


			</form>

		</div>

	</div>
</body>
</html>