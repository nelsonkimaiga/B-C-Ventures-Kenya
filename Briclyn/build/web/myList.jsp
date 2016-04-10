<%-- 
    Document   : myList
    Created on : Apr 10, 2016, 7:53:38 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.text.*,java.util.*,java.io.*" errorPage=""%>
<%@page import="scripts.DbConn"%>
<%@ include file="function.jsp"%>
<%
	if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
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
