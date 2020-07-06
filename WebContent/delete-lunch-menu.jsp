<%@page import="java.sql.Statement"%>
<%@page import="com.foody.dao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  int id=Integer.parseInt(request.getParameter("item-id"));  
  
Connection con = DBConnection.getMyConnection();
Statement ps=con.createStatement();
String query="delete from lunchmenu where srno ='"+id+"' ;";
int rs=ps.executeUpdate(query);

if(rs>0)
   {
	 request.getRequestDispatcher("view-lunch.jsp").forward(request, response);
   }
   else
   {
	   request.getRequestDispatcher("error-page.jsp").forward(request, response);
   }

%>
</body>
</html>