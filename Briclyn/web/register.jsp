<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="scripts.DbConn" %>
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
                var u = document.forms["registrationForm"]["names"].value;
                var v = document.forms["registrationForm"]["email"].value;
                var w = document.forms["registrationForm"]["username"].value;
                var x = document.forms["registrationForm"]["password"].value;

                if (u == null || u == "") {
                    alert("Name must be filled out");
                    return false;
                }

                if (v == null || v == "") {
                    alert("Email must be filled out");
                    return false;
                }
                
                if (w == null || w == "") {
                    alert("Username must be filled out");
                    return false;
                }
                
                if (x == null || x == "") {
                    alert("Password must be filled out");
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
                    <form action="regBriclyn.jsp" method="POST" name="registrationForm" onsubmit="return validateForm()">
                        <fieldset>
                            <label class="labels">User Type</label>
                            <select name="usertype">
                                <option value="default" selected>Choose a user type</option>
                                <option value="1">Individual User</option>
                                <option value="2">Agent/Brokers</option>
                            </select>
                        </fieldset>
                        <fieldset>
                            <label class="labels">Full Names*</label>
                            <input type="text" name="names" placeholder="Full Names" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label class="labels">Email Address*</label>
                            <input type="email" name="email" placeholder="Email" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label class="labels">Phone Number</label>
                            <input type="number" name="phonenumber" placeholder="Phone Number" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label class="labels">Username*</label>
                            <input type="text" name="username" placeholder="Username" autocomplete="off">
                        </fieldset>
                        <fieldset>
                            <label class="labels">Password*</label>
                            <input type="password" name="password" placeholder="Password" autocomplete="off"> 
                        </fieldset>
                        <button type="submit" class="button success">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
