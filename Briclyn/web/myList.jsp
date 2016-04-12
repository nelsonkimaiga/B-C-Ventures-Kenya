<%-- 
    Document   : myList
    Created on : Apr 10, 2016, 7:53:38 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.text.*,java.util.*,java.io.*" errorPage=""%>
<%@page import="scripts.DbConn"%>
<%--<%@ include file="sessionchk.jsp"%>--%>
<%	
//    session checker
    if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
	 }%>
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
        <script src="js/checkbox.js" type="text/javascript"></script>
        <script>
	function validate()
	{
		var chge="Are you sure to Delete List!";
		if(confirm(chge)==false)
		{  
		   return false;
		}
	} 
	
	function cancalit()
	{
		history.back();
	}
	
	function goRecord(iListID)
	{
	  var pathURL="deleteList.jsp";
	  window.open(pathURL+"?iListID="+iListID,"_self");
	}
	
	function goSubmitForm()
	{
	var chge="Are you sure to Delete!";
		if(confirm(chge)==false)
		{  
		   return false;
		}
	}
	function onErrorLoad(im)
	{
		var id="im"+im;
		document.getElementById(id).src="proImage/blank.jpg";
		document.getElementById(id).style.width="1px";
		document.getElementById(id).style.height="1px";
	}
	
	function openWindow(iListID)
	{
		window.open("display.jsp?iListID="+iListID,'my','status=no,menubar=no,scrollbars=yes,toolbar=no,resize=yes');
	}
</script> 

    </head>
    <script type="text/javascript">
        fieldSName("iListID","listForm");
        </script>
    <body>
        <!--dynamic navbar-->
        <%@include file="navbar.jsp"%>
        <br>
        <div class="container">
            <div class="row">
                <div class="large-4 columns" id="profile">
                    <h2 id="profileheading"><%
                        String x = session.getAttribute("username").toString();
                        out.println(x);%> - My Account</h2>
                    <ul id="sidenav">
                        <li><a href="myProfile.jsp">My Profile</a></li>
                        <li><a href="myList.jsp">Listings</a></li>
                        <li><a href="">Messages</a></li>
                        <li><a href="">Change Password</a></li>
                    </ul>
                </div>
                <div class="large-8 columns">
                    <br>
                    <label class="labels">My List of Property</label>
                    <form name="listForm" action="" method="" onsubmit="return goSubmitForm()">
                        <input type="hidden" name="iPageID" value="My">
                        
                        <table class="stack">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" name="allCheck" onClick="selectallMe()" styleClass="ch" /></th>
                                    <th width="200">Location</th>
                                    <th width="200">Specification</th>
                                    <th width="150">Price</th>
                                    <th width="150">Contact</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>    
            </div>    
        </div>
    </body>
</html>
