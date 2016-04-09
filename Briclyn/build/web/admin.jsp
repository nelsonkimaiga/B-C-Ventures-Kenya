<%-- 
    Document   : admin
    Created on : Apr 9, 2016, 5:16:54 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@include file="doLogin.jsp"%>
<%
    String status="Login";
    String fileCall="login.jsp";
    String usersessionid=nullconv((String)session.getAttribute("username"));
    if(!(usersessionid).equals(null))
    {
        status="Logout";
        fileCall="logout.jsp";
        usersessionid="Hi!  "+nullconv((String)session.getAttribute("username"));
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
        <title>B&C Ventures|Home</title>
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
    </head>
    <body>
        <div class="top-bar">
            <div class="top-bar-left">
                <ul class="dropdown menu" data-dropdown-menu>
                    <li class="menu-text">Briclyn Kenya</li>
                    <li></li>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="">Search</a></li>
                    <%
if(usersessionid.equals(""))
{
%>
                    <li><a href="register.jsp">Register</a></li>
                    <%
}
%>
                    <li><a href="create-listing.jsp">List Your Property</a></li>
                    <li><a href="create-posting.jsp">Post Your Requirement</a></li>
                    <li><a href="<%=fileCall%>"><span><%=usersessionid%> <%=status%></span></a></li>
                </ul>
            </div>
        </div>
    </body>    