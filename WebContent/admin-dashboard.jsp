<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.foody.dao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Foody</title>
<link rel="stylesheet" type="text/css" href="libfile/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="FontAwesome\css\all.css">
<script src="libfile/jquery-3.4.1.min.js"></script>

<style type="text/css">
.dropbtn, .dropbtn1, .dropbtn2 {
	cursor: pointer;
	font-size: 20px;
	border: none;
	outline: none;
	color: white;
	padding: 8px 12px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
	margin-left: 20px;
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
.btn
{
   width: 30%;
}
</style>
</head>
<body>
	<div class="main">

		<%@ include file="view/adminnavdark.jsp"%>

		<div class="main-content" align="center">

			<div class="container-fluid">
				<h1 align="left" class="mt-5">Order Information</h1>

				<table border="2px"
					class="table  mt-3 table-responsive-sm table-responsive-lg">
					<thead>
						<tr class="text-dark" style="background:;">
							<th>Sr. No.</th>
							<th>User Name</th>
							<th>Item Name</th>
							<th>Email Id</th>
							<th>Mobile No.</th>
							<th>Location</th>
							<th>Address</th>
                             <th>Status</th>
						</tr>
					</thead>
					<tbody>
              <%
							try {
								Connection con = DBConnection.getMyConnection();

								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select * from order_info;");
                              int i=1;
								while (rs.next()) {
						%>
						<tr style="color: dark; font-size: 20px">
							<td><%=i++%></td>
							<td style="text-transform: capitalize"><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							<td><%=rs.getString(7)%></td>
							<td><a	href=""
								class="btn-lg bg-warning text-white pl-3 pd-2">Pending</a></td>

						</tr>

						<%
							}
							} catch (Exception e) {
								System.out.println(e);
							}
						%>
					</tbody>
				</table>
			</div>



		</div>
	</div>
</body>
</html>
</html>