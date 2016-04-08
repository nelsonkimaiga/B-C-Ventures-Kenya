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
                <!-- form validation -->
        <script type="text/javascript">
            function validateForm() {
                var a = document.forms["listForm"]["title"].value;
                var b = document.forms["listForm"]["type"].value;
                var c = document.forms["listForm"]["propertytype"].value;
                var d = document.forms["listForm"]["region"].value;
                var e = document.forms["listForm"]["city"].value;
                var f = document.forms["listForm"]["area"].value;
                var g = document.forms["listForm"]["address"].value;
                var h = document.forms["listForm"]["price"].value;

                if (a == null || a == "") {
                    alert("Title must be filled out");
                    return false;
                }

                if (b == null || b == "") {
                    alert("Listing type must be filled out");
                    return false;
                }
                
                if (c == null || c == "") {
                    alert("Property type must be filled out");
                    return false;
                }
                
                if (d == null || d == "") {
                    alert("Region must be filled out");
                    return false;
                }
                
                if(e == null || e == ""){
                    alert("City must be filled out");
                    return false;
                }
                
                if(f == null || f == ""){
                    alert("Area must be filled out");
                    return false;
                }
                
                if(g == null || g == ""){
                    alert("Address must be filled out");
                    return false;
                }
                
                if(h == null || h == ""){
                    alert("Price must be filled out");
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
                <div class="large-4 columns" id="profile">
                    <h2 id="profileheading">My Account</h2>
                    <ul id="sidenav">
                        <li><a href="">My Profile</a></li>
                        <li><a href="">Listings</a></li>
                        <li><a href="">Messages</a></li>
                        <li><a href="">Change Password</a></li>
                    </ul>
                </div>                
                <div class="large-8 columns">
                    <h3 class="menu-headings">List Your Property</h3>
                    <form action="doListing.jsp" method="post" name="listForm" autocomplete="off" onsubmit="return validateForm()">
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
