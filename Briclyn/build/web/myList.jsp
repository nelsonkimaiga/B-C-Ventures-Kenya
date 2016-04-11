<%-- 
    Document   : myList
    Created on : Apr 10, 2016, 7:53:38 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.text.*,java.util.*,java.io.*" errorPage=""%>
<%@page import="scripts.DbConn"%>
<%@page import="scripts.DbConn"%>
<%@ include file="comman/header.jsp"%>
<%	
//    session checker
    if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
	 }
    
	Connection conn=null;
	conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/briclyn","root","303seminarian");
	
	ResultSet rsMyList=null;
	PreparedStatement psMyList=null;
	PreparedStatement psCurrency=null;
	ResultSet rsCurrency=null;
	
	PreparedStatement psAppImage=null;
	ResultSet rsAppImage=null;
	
	PreparedStatement psAppImageURL=null;
	ResultSet rsAppImageURL=null;
	
	String sCurrency="";
	
	String sSUserID=nullconv((String)session.getAttribute("username"));
	
	String sApprovalOptionListImage="";
	String sURLUploadImage="uLoad.jsp";
	String sImageURL="";
	
	String img=null;
	int imglen=0;
	byte [] img_arr=null;
	
	try{
		String sqlAppImage="SELECT cIsImageApprovalNeed FROM list_approval";
		psAppImage=conn.prepareStatement(sqlAppImage);
		rsAppImage=psAppImage.executeQuery();
		if(rsAppImage.next())
		{
		  sApprovalOptionListImage=rsAppImage.getString("cIsImageApprovalNeed");
		}
	     
		String sqlAppImageURL="SELECT iLAImageID, iListID, bImage FROM list_album where iListID=? and cStatus='A'";
		psAppImageURL=conn.prepareStatement(sqlAppImageURL);
		
		String sqlMyList="SELECT l.iListID, l.title, l.type, l.propertytype, l.region," 
		                 +" l.city, l.area, l.address," 
						 +" l.dCreatedDate,c.iCityName,lc.iLocationName,r.sRegEmail,sFirstName, sLastName,iUserContact "
						 +"   FROM list_requirement l "
						 +"    left join citymaster c on c.iCityID=l.iCityID "
						 +"	   left join locationmaster lc on lc.iLocationID=l.iLocalityID "
						 +"    left join registration r on r.username=l.username "
						 +"	   left join propertymaster p on p.iPropertyID=l.iPropertyID "
						 +"          where l.cStatus='A' and l.username='"+nullconv(sSUserID)+"' order by l.dCreatedDate desc";
		psMyList=conn.prepareStatement(sqlMyList);
		rsMyList=psMyList.executeQuery();
		
		String sqlCurrency="SELECT sCurrencyName, sSymbol FROM currency b where sStatus='A'";
		psCurrency=conn.prepareStatement(sqlCurrency);
		rsCurrency=psCurrency.executeQuery();
		if(rsCurrency.next())
		{
		  sCurrency=rsCurrency.getString("sSymbol");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
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
        <%@include file="menu.jsp"%>
        <div class="container">
            <div class="row">
                <div class="large-4 columns">
                    
                </div>
                <div class="large-8 columns">
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
                                <%
                                    boolean nextRow=false;
                                    String br="";
                                    while(rsMyList.next())
                                    {
    nextRow=true;
    String neo=rsMyList.getString("cPriceNegotiable");
    String trans=rsMyList.getString("iTransactionType");
    if(neo.equalsIgnoreCase("Y"))
    {
     neo="Negotiable";
    }
    else
    {
     neo="Not Negotiable";
   }
   
   if(trans.equalsIgnoreCase("1"))
   {
     trans="for Sale";
   }
   else
   {
     trans="for Rent";
   }
   int iListID=rsMyList.getInt("iListID"); 
  %>
                            </tbody>
                        </table>
                    </form>
                </div>    
            </div>    
        </div>
    </body>
</html>
