<%-- 
    Document   : doLogin
    Created on : Mar 24, 2016, 10:59:18 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.sql.*" errorPage=""%>
<%@ include file="function.jsp"%>
<%
    String user = nullconv(request.getParameter("username"));
    String pass = nullconv(request.getParameter("password"));
    
    String message="User login successfully ";
    String loginYes="";
    
            try {
                //attempt to authenticate user
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/briclyn","root","303seminarian");
                String query = "SELECT * FROM registration WHERE username='"+user+"'and password ='"+pass+"'";
                Statement st = conn.createStatement(); 
                ResultSet rs = st.executeQuery(query);
                if (rs.next()) {
                    
			  loginYes="yes";
			  session.setAttribute("username",rs.getString("username"));
			  session.setAttribute("username",rs.getString("name"));
			  response.sendRedirect("index.jsp");
                } 
			else
			{
			  message="No user or password matched" ;
			  response.sendRedirect("login.jsp?error="+message);
			}                
            } catch (ClassNotFoundException ex) {
                
            }
            
%>
