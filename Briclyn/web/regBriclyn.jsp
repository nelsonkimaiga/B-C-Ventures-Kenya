<%@page import="scripts.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%
    String name = request.getParameter("names");
    String email = request.getParameter("email");
    String contacts = request.getParameter("phonenumber");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

        
        if ("".equals(username) || "".equals(name) || "".equals(email) || "".equals(contacts) || "".equals(username) || "".equals(password)){
        //redirect to error page
        response.sendRedirect("error.jsp");
        } else{
            try {
                //attempt to save data
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/briclyn","root","303seminarian");
                String sql = "INSERT into registration VALUES('"+name+"','"+email+"','"+contacts+"','"+username+"', '"+password+"')" ;
                Statement st = conn.createStatement();
                //change type of Resultset
                boolean rs;
                rs = st.execute(sql);
                response.sendRedirect("dashboard.html");
 
            } catch (ClassNotFoundException ex){
//                ex.printStackTrace();
//                request.setAttribute("error","<span class='sSError'>&nbsp; Registration is not successful, May be User ID already Exists &nbsp; </span>");
//                RequestDispatcher dispatch = request.getRequestDispatcher("/register.jsp");
//                dispatch.forward(request, response);
            }
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
