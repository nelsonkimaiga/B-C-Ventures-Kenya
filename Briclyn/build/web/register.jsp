<%-- 
    Document   : register
    Created on : Mar 16, 2016, 3:13:41 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Real Estate">
        <!-- for-mobile-view -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>B&C Ventures|Registration</title>
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
                var u = document.forms["registrationForm"]["name"].value;
                var v = document.forms["registrationForm"]["email"].value;
                var w = document.forms["registrationForm"]["username"].value;
                var x = document.forms["registrationForm"]["password"].value;

                if (u == null || x == "") {
                    alert("Username must be filled out");
                    return false;
                }

                if (v == null || y == "") {
                    alert("Email must be filled out");
                    return false;
                }
                
                if (w == null || z == "") {
                    alert("Username must be filled out");
                    return false;
                }
                
                if (x == null || z == "") {
                    alert("Password must be filled out");
                    return false;
                }
                return true;
            }
        </script>
    </head>
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
            <div class="row">
                <div class="large-6 large-centered columns">
                    <form action="" method="POST" name="registrationForm" onsubmit="return validateForm()">
                        <fieldset>
                            <label>Full Names*</label>
                            <input type="text" name="names" placeholder="Full Names" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label>Email Address*</label>
                            <input type="email" name="email" placeholder="Email" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label>Username*</label>
                            <input type="text" name="username" placeholder="Username" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label>Password*</label>
                            <input type="text" name="password" placeholder="Password" autocomplete="off"> 
                        </fieldset>
                        <button type="submit" class="button success">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
