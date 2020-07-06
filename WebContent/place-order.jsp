<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Foody</title>
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
	background-image: url(image/placeorder.jpg);
	background-repeat: no-repeat;
	background-size: 100% 700px;
	/*   width: 100%;
          height: 601px;*/
}

.main-content {
	width: 400px;
	height: 575px;
	background-color: black;
	opacity: 0.8;
	margin-left: 36%;
	border-radius: 20px;
}

.main-content a {
	width: 13%;
	padding-left: 5px;
	margin-left: 8px;
}

label {
	font-size: 15px;
}

.btn {
	width: 35%;
	font-size: 16px;
	border-radius: 0px;
	border: 2px solid;
	color: white
}

.confirm-btn:hover {
	color: black;
	background: white;
}
</style>
</head>
<body>
	<div class="main">
		<%@ include file="view/nav.jsp" %>	
		<div class="main-content">
			<form action="confirmOrder" method="get">
            <%
                String itemname=request.getParameter("item-name");
            %>
				<div class="form-group  ml-3 mr-3">
					<label for="order-name" class="text-white mt-3">Order Item</label>
					<input type="text" required value="<%=itemname %>"  readonly name="orderName" id="order-name"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="your-name" class="text-white">Your Name</label> <input
						type="text" required name="userName" style="text-transform: capitalize" autocomplete="off" id="your-name"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="userEmail" class="text-white">Email</label> <input
						type="email" required name="userEmail" autocomplete="off" id="userEmail"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="mobile" class="text-white">Mobile No.</label> <input
						type="number" required name="mobile" autocomplete="off" id="mobile"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="location" class="text-white">Location</label> <select
						name="location" required id="location"
						class="form-control bg-dark text-white">
						<option value="null">Please Select</option>
						<option value="Mhow">Mhow</option>
						<option value="Indore">Indore</option>
					</select>
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="your-address" class="text-white">Address</label> <input
						type="text" name="userAddress" autocomplete="off" required id="your-address"
						class="form-control bg-dark text-white">
				</div>
				<input type="submit" value="Confirm Order"
					class="btn ml-3 confirm-btn">


			</form>

		</div>

	</div>
</body>
</html>