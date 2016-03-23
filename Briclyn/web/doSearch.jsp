<%-- 
    Document   : doSearch
    Created on : Mar 23, 2016, 12:06:08 PM
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
        <title>Create Listing</title>
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
                var a = document.forms["searchForm"]["place"].value;
                var b = document.forms["searchForm"]["propertytype"].value;
                var c = document.forms["searchForm"]["price"].value;

                if (a == null || a == "") {
                    alert("Place must be filled out");
                    return false;
                }

                if (b == null || b == "") {
                    alert("Property type must be filled out");
                    return false;
                }
                
                if (c == null || c == "") {
                    alert("Price type must be filled out");
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
        <div class="container large-12 medium-12 small-12 columns">
            <div class="row">
                <div class="large-12 large-centered columns">
                    <form action="" method="post" name="searchForm" onsubmit="return validateForm()">
                        <div class="row">
                            <div class="large-4 columns">
                                <fieldset>
                                    <label class="labels">Where do You want to Live?</label>
                                    <input type="text" name="place" placeholder="Where do you want to live?">
                                </fieldset>
                            </div>
                            <div class="large-4 columns">
                                <fieldset>
                                    <label class="labels">Property Type</label>
                                    <select name="propertytype">
                                        <option value="default" selected disabled>Choose a property type</option>
                                        <option value="Apartment">Apartment</option>
                                        <option value="House">House</option>
                                        <option value="Land">Land</option>
                                        <option value="Commercial">Commercial</option>
                                    </select>
                                </fieldset>
                            </div>
                            <div class="large-4 columns">
                                <fieldset>
                                    <label class="labels">Price</label>
                                    <input type="text" name="price" placeholder="Price">
                                </fieldset>
                            </div>
                            <button type="submit" class="button primary"><i class="fi-magnifying-glass">Search</i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
