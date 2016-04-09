<%-- 
    Document   : myProfile
    Created on : Apr 9, 2016, 11:38:10 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" errorPage="" language="java"%>
<%@page import="scripts.DbConn"%>
<%@ include file="comman/header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Real Estate">
        <!-- for-mobile-view -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>My Profile</title>
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
        <script type="text/javascript">
            function validateForm() {
                var u = document.forms["registrationForm"]["names"].value;
                var v = document.forms["registrationForm"]["email"].value;
                var w = document.forms["registrationForm"]["phonenumber"].value;

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
                <div class="large-5 columns" id="profile">
                    <h2 id="profileheading"><%
                        String x = session.getAttribute("username").toString();
                        out.println(x);%> - My Account</h2>
                    <ul id="sidenav">
                        <li><a href="myProfile.jsp">My Profile</a></li>
                        <li><a href="">Listings</a></li>
                        <li><a href="">Messages</a></li>
                        <li><a href="">Change Password</a></li>
                    </ul>
                </div>                
                <div class="large-7 columns">
                    <h3 class="menu-headings">Edit your information</h3>
                    <form action="editProfile.jsp" method="POST" name="registrationForm" onsubmit="return validateForm()">
                        <fieldset>
                            <label class="labels">Full Names*</label>
                            <%
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/briclyn","root","303seminarian");
                                String q = "SELECT name from registration WHERE name = '"+session.getAttribute("username")+"'";
                                Statement t = c.createStatement();
                                ResultSet  r = t.executeQuery(q);
                                while(r.next()){
                            %>
                            <input type="text" name="names" placeholder="Full Names" value="<%=r.getString("name")%>" autocomplete="off">
                            <%}
                            %>
                        </fieldset>
                        <fieldset>
                            <label class="labels">Email Address*</label>
                            <%
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/briclyn","root","303seminarian");
                                String query = "SELECT email from registration WHERE name = '"+session.getAttribute("username")+"'";
                                Statement st = conn.createStatement();
                                ResultSet rs = st.executeQuery(query);
                                while(rs.next()){
                            %>
                            <input type="email" name="email" placeholder="Email" value="<%=rs.getString("email")%>" autocomplete="off">
                                                        <%}
                            %> 
                        </fieldset>
                        <fieldset>
                            <label class="labels">Phone Number</label>
                            <%
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection conn2 = DriverManager.getConnection( "jdbc:mysql://localhost:3306/briclyn","root","303seminarian");
                                String query2 = "SELECT phonenumber from registration WHERE name = '"+session.getAttribute("username")+"'";
                                Statement st2 = conn2.createStatement();
                                ResultSet rs2 = st2.executeQuery(query2);
                                while(rs2.next()){
                            %>
                            <input type="text" name="phonenumber" placeholder="Phone Number" value="<%=rs2.getString("phonenumber")%>" autocomplete="off">
                                                        <%}
                            %>
                        </fieldset>
                        <button class="button secondary" type="submit">Edit Profile Details</button>
                    </form>
                </div>
            </div>
        </div>    
    </body>
</html>
