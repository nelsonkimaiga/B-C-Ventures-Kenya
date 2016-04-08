<%-- 
    Document   : sessionchk
    Created on : Apr 8, 2016, 6:40:33 PM
    Author     : kimaiga
--%>

<%@ page contentType="text/html" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="doLogin.jsp"%>

<%  
	if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
	 }
%>
