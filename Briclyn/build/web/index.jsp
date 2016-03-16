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
                var x = document.forms["contactForm"]["name"].value;
                var y = document.forms["contactForm"]["phone"].value;
                var z = document.forms["contactForm"]["email"].value;
                var m = document.forms["contactForm"]["message"].value;

                if (x == null || x == "") {
                    alert("Name must be filled out");
                    return false;
                }

                if (y == null || y == "" || (y.value < 10) || (isNaN(y.value))) {
                    alert("number must be filled out");
                    return false;
                }

                if (z == null || z == "") {
                    alert("email must be filled out");
                    return false;
                }

                if (m == null || m == "") {
                    alert("message must be filled out");
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
    </body>
</html>
