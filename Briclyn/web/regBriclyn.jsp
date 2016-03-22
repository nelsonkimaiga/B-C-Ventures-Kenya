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
//                response.sendRedirect("dashboard.html");
 
            } catch (ClassNotFoundException ex){
                ex.printStackTrace();
                request.setAttribute("error","<span class='sSError'>&nbsp; Registration is not successful, May be User ID already Exists &nbsp; </span>");
                RequestDispatcher dispatch = request.getRequestDispatcher("/register.jsp");
                dispatch.forward(request, response);
            }
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Real Estate">
        <!-- for-mobile-view -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User Registration</title>
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="css/foundation.css">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
        <!--foundation icons-->
        <link rel="stylesheet" type="text/css" href="css/foundation-icons.css">
        <!--fonts-->
        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
        <!--foundation icons cdn-->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/vendor/jquery.min.js"></script>
    <body>
        <div class="top-bar">
            <div class="top-bar-left">
                <ul class="dropdown menu" data-dropdown-menu>
                    <li class="menu-text">Briclyn Kenya</li>
                    <li></li>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#">Search</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="#">List Your Property</a></li>
                    <li><a href="#">Post Your Requirement</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
            </div>
            <div class="top-bar-right">
                <ul class="menu">
                    <li><input type="search" placeholder="Search"></li>
                    <li><button type="button" class="button">Search</button></li>
                </ul>
            </div>
        </div>
        <br>
        <div class="container">
            <h2>Registration Successfull</h2>
        </div>
    </body>
</html>
