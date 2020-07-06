<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.foody.dao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Dinner Menu</title>
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
	background-color: #f1f1f1;
}

.main-content {
	
}

.main-content a {
	width: 13%;
	padding-left: 5px;
	margin-left: 8px;
}

h1 {
	margin-top: 20px;
	color: black;
	padding-bottom: 20px;
	font-family: arial;
}
</style>
</head>
<body>
	<div class="main">

		<%@ include file="view/navdark.jsp"%>
		<div class="main-content" align="center">

			<h1>Dinner Menu</h1>

			<div class="container">

				<table border="2px"
					class="table  mt-3 table-responsive-sm table-responsive-lg">
					<thead>
						<tr class="text-dark" style="background:;">
							<th>Item Number</th>
							<th>Item Name</th>
							<th>Price</th>
							<th>Delivery Time(Min)</th>
							<th>Action</th>

						</tr>
					</thead>
					<tbody>
		<%
					try
					{
						Connection con=DBConnection.getMyConnection();
						
						Statement stmt=con.createStatement();
						ResultSet rs=stmt.executeQuery("select * from dinnermenu;");
						
						   while(rs.next())
						   {				   
						%>
					   <tr style="color: dark; font-size: 20px">
							<td><%=rs.getInt(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><a href="place-order.jsp?item-name=<%=rs.getString(2) %>"
								class="btn-lg bg-warning text-white pl-3 pd-2">Order Now</a></td>

						</tr>
						
					<%  
						   }
					}
					catch(Exception e)
					{
				     System.out.println(e);
					}
					%>
					</tbody>
					</div>
					</div>
					</div>
</body>
</html>
</html>