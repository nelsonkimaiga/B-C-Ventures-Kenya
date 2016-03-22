<%-- 
    Document   : doListing
    Created on : Mar 22, 2016, 12:58:26 PM
    Author     : kimaiga
--%>

<%@page import="scripts.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%
    String title = request.getParameter("title");
    String type = request.getParameter("type");
    String proptype = request.getParameter("propertytype");
    String region = request.getParameter("region");
    String city = request.getParameter("city");
    String area = request.getParameter("area");
    String address = request.getParameter("address");
    String price = request.getParameter("price");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Real Estate">
        <!-- for-mobile-view -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>List</title>
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
        <h1>Hello World!</h1>
    </body>
</html>
