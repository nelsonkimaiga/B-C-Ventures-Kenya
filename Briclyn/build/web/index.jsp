<%-- 
    Document   : index
    Created on : Mar 16, 2016, 9:32:55 AM
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
                var x = document.forms["loginForm"]["name"].value;
                var y = document.forms["loginForm"]["phone"].value;

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
        <div class="top-bar">
            <div class="top-bar-left">
                <ul class="dropdown menu" data-dropdown-menu>
                    <li class="menu-text">Briclyn Kenya</li>
                    <li></li>
                    <li><a href="#">foo</a></li>
                    <li><a href="#">foo</a></li>
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
        <div class="row">
            <div class="large-6 large-centered columns">
                <form action="" method="POST" name="loginForm" autocomplete="off" onsubmit="return validateForm()">
                    <fieldset>
                        <label>Username</label>
                        <input type="text" name="username" autocomplete="off" placeholder="Username">
                    </fieldset>
                    <fieldset>
                        <label>Password</label>
                        <input type="password" name="password" autocomplete="off" placeholder="Password">
                    </fieldset>
                    <button type="submit" class="button primary">Login</button>
                    <div class="row">
                        <div class="large-6 small-12 columns">
                            <p><a href="#">Forgot Password?</a></p>
                        </div>
                        <div class="large-6 small-12 columns">
                            <p><a href="#">New User</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
