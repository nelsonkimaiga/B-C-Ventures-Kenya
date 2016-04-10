<%-- 
    Document   : editProfile
    Created on : Apr 9, 2016, 10:11:44 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@ include file="sessionchk.jsp"%>
<%
	Connection conn = null;
	conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/briclyn","root","303seminarian");
	
	PreparedStatement psEditProfile=null;
	
	String fullname=request.getParameter("names");
	String email=request.getParameter("email");
	String contact=request.getParameter("phonenumber");
	
	String sqlEditProfile=null;
	
	try{
		sqlEditProfile="update registration set name=?, email=?, phonenumber=? where username='"+session.getAttribute("username")+"'";
		psEditProfile=conn.prepareStatement(sqlEditProfile);
		psEditProfile.setString(1,fullname);
		psEditProfile.setString(2,email);
		psEditProfile.setString(3,contact);
		psEditProfile.executeUpdate();
	}
	catch(Exception e)
	{
	   e.printStackTrace();
	   response.sendRedirect("myProfile.jsp");
	}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
