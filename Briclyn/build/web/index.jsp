<%-- 
    Document   : index
    Created on : Mar 16, 2016, 10:34:40 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.text.*"%>
<%@page import="scripts.DbConn" %>
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
        <!-- form validation -->
        <script type="text/javascript">
            function validateForm() {
                var x = document.forms["searchForm"]["location"].value;
                var y = document.forms["searchForm"]["propertytype"].value;
                var z = document.forms["searchForm"]["price"].value;

                if (x == null || x == "") {
                    alert("Name must be filled out");
                    return false;
                }

                if (y == null || y == "") {
                    alert("Property type must be filled out");
                    return false;
                }
                
                if (z == null || z == "") {
                    alert("Price must be filled out");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <!--dynamic navbar-->
        <%@include file="navbar.jsp"%>
    <br>
        <div class="container">
            <form action="" method="get" name="searchForm" onsubmit="return validateForm()">
                <div class="row">
                    <div class="large-4 medium-12 small-12 columns">
                        <label>Name of Location</label>
                        <input type="text" name="location" autocomplete="off" placeholder="What is your location?">                    
                    </div>
                    <div class="large-4 medium-12 small-12 columns">
                        <fieldset>
                            <label>Property Type</label>
                            <select name="propertytype">
                                <option value="default" selected disabled>Property Type</option>
                                <option value=""></option>
                            </select>
                        </fieldset>
                    </div>
                    <div class="large-4 medium-12 small-12 columns">
                        <fieldset>
                            <label>Maximum Price</label>
                            <input type="text" name="price" placeholder="Maximum Price">
                        </fieldset>
                    </div>
                        
                </div>
                <button type="submit" class="button success"><i class="fi-magnifying-glass">Search</i></button>
            </form>
        </div>    
    </body>
</html>
