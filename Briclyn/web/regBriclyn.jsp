<%-- 
    Document   : regBriclyn
    Created on : Mar 20, 2016, 4:06:17 PM
    Author     : kimaiga
--%>

<%@page import="scripts.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<jsp:useBean id="dbConn" scope="request" class="scripts.DbConn"/>
<%
    Connection conn = null;
    conn = DbConn.connectDB();
    PreparedStatement st = null;
    
String name = request.getParameter("names");
String email = request.getParameter("email");
String contacts = request.getParameter("phonenumber");
String username = request.getParameter("username");
String password = request.getParameter("password");

		
		try{
                    String sql="insert into registration (name, email, phonenumber, username, password)"+"values('"+name+"', '"+email+"', '"+contacts+"', '"+username+"', '"+password+"')";
			st=conn.prepareStatement(sql);
                        st.setString(0, name);
			
			st.executeUpdate();
		}
		catch(Exception e)
		{
		   e.printStackTrace();
		   request.setAttribute("error","<span class='sSError'>&nbsp; Registration is not successful, May be User ID already Exists &nbsp; </span>");
		   RequestDispatcher dispatch = request.getRequestDispatcher("/register.jsp");
		   dispatch.forward(request, response);
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
