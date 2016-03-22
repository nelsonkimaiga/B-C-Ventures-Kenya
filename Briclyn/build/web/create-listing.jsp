<%-- 
    Document   : create-listing
    Created on : Mar 22, 2016, 10:01:43 AM
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
            <h3 class="menu-headings">List Your Property</h3>
            <div class="row">
                <div class="large-8 large-centered columns">
                    <form action="" method="post" name="listForm" onsubmit="return ValidateForm()">
                        <fieldset>
                            <label class="labels">Title</label>
                            <input type="text" name="title" placeholder="Property Title">
                        </fieldset>
                        <fieldset>
                            <label>Transaction type (E.g Sale or rent?</label>
                            <select name="type">
                                <option value="default" selected disabled>Select a transaction type</option>
                                <option value="Rent">Rent</option>
                                <option value="For Sale">For Sale</option>
                            </select>
                        </fieldset>
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
                        <hr>
                        <p class="menu-headings">Pick Location</p>
                        <hr>
                        <fieldset>
                            <label class="labels">Region</label>
                            <select name="region">
                            <option value="default" selected disabled>Choose Your Region</option>
                            <option value="Nairobi">Nairobi</option>
                            </select>
                        </fieldset>
                        <fieldset>
                            <label class="labels">City</label>
                            <select name="city">
                            <option value="default" selected disabled>Choose Your City</option>
                            <option value="Nairobi">Nairobi</option>
                            </select>
                        </fieldset>
                        <fieldset>
                            <label class="labels">Area</label>
                            <select name="area">
                            <option value="default" selected disabled>Choose Your Area</option>
                            <option value="Nairobi">Nairobi</option>
                            </select>
                        </fieldset>
                        <fieldset>
                            <label class="labels">Address</label>
                            <input type="text" name="address" placeholder="Address">
                        </fieldset>
                        <fieldset>
                            <label class="labels">Price</label>
                            <input type="text" name="price" placeholder="Price">
                        </fieldset>
                        <button type="submit" class="button success">Create Listing</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
