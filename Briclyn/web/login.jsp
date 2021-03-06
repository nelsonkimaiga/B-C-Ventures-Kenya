<%-- 
    Document   : index
    Created on : Mar 16, 2016, 9:32:55 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Real Estate">
        <!-- for-mobile-view -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
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
                var x = document.forms["loginForm"]["username"].value;
                var y = document.forms["loginForm"]["password"].value;

                if (x == null || x == "") {
                    alert("Username must be filled out");
                    return false;
                }

                if (y == null || y == "") {
                    alert("password must be filled out");
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
            <div class="row">
                <div class="large-6 large-centered columns">
                    <form action="doLogin.jsp" method="POST" name="loginForm" autocomplete="off" onsubmit="return validateForm()">
                        <fieldset>
                            <label class="labels">Username</label>
                            <input type="text" name="username" autocomplete="off" placeholder="Username">
                        </fieldset>
                        <fieldset>
                            <label class="labels">Password</label>
                            <input type="password" name="password" autocomplete="off" placeholder="Password">
                        </fieldset>
                        <button type="submit" class="button primary">Login</button>
                        <div class="row">
                            <div class="large-6 small-12 columns">
                                <p><a href="#">Forgot Password?</a></p>
                            </div>
                            <div class="large-6 small-12 columns">
                                <p><a href="register.jsp">New User?</a></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div> 
        </div>
    </body>
</html>
