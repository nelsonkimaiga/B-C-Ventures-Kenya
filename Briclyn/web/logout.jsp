<%-- 
    Document   : logout
    Created on : Mar 20, 2016, 9:21:04 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.text.*;" errorPage=""%>
<%@include file="function.jsp"%>
<%
	if(!(nullconv((String)session.getAttribute("username")).equals("")))
	{
	  session.invalidate();
	  response.sendRedirect("index.jsp");
	}
	else{
	  response.sendRedirect("index.jsp");
	}
%>
