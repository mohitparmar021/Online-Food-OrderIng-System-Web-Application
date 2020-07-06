<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Change PAsssword</title>
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
	background-image: url(image/changepassword.jpg);
	background-repeat: no-repeat;
	background-size: 100% 700px;
	/*   width: 100%;
          height: 601px;*/
}

.main-content {
	width: 400px;
	height: 380px;
	background-color: black;
	opacity: 0.8;
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
	width: 40%;
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
.btn-change:hover {
	color: black;
	background: white;
}
</style>
</head>
<body>
	<div class="main">
		<%@ include file="view/adminnavwhite.jsp" %>	
		<h1 align="center" class="text-white">Change Password</h1>
		<div class="main-content">
			<form action="changepassword" method="post" onsubmit="return validate()">
                
                <div class="form-group  ml-3 mr-3">
					<label for="user" class="text-white mt-3">User Name</label>
					<input type="text" required name="username" id="user"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="newpassword" class="text-white">New Password</label> <input
						type="text" required name="newpassword"  id="Password"
						class="form-control bg-dark text-white">
				</div>
				<div class="form-group ml-3 mr-3">
					<label for="confirmPassword" class="text-white">Confirm Password</label> <input
						type="text" required name="confirmPassword" id="confirmPassword"
						class="form-control bg-dark text-white">
				</div>

               	 <input type="submit" value="Change Password" name="" class="btn btn-change mt-3 ml-3">   


			</form>

		</div>

	</div>
	<script type="text/javascript">
    
   function validate()
   {
	   var newp=document.getElementById('Password').value;
	   var confirmp=document.getElementById('confirmPassword').value;
	   
	   if(newp==conformp)
		   {	  
		   return true;
		   }
	   else
		   {
		      alert("Enter Correct Confirm Password");
		    return false;
		   }
	    
   }
  
   

</script>
</body>
</html>