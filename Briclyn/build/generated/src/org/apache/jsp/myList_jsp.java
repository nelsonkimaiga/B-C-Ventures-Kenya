package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.io.*;
import scripts.DbConn;
import java.sql.*;
import java.text.SimpleDateFormat;

public final class myList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


public String nullconv(String str)
	 {	
	 	if(str==null)
	 		str="";
	 	else if(str.equals("null"))
	 		str="";
	 	else if((str.trim()).equals(""))
	 		str="";
	 	else if(str.equals(null))
	 		str="";
	 	else
	 		str=str.trim();
	 	return str;
	 }
	 
	 public int nullIntconv(String inv)
	{   
		int conv=0;
		if(inv==null)
		{
			inv="0";
		}
		else if((inv.trim()).equals("null"))
		{
			inv="0";
		}
		else if(inv.equals(""))
		{
			inv="0";
		}
		try{
			conv=Integer.parseInt(inv);
		}
		catch(Exception e)
		{}
		return conv;
	}
	
	String formatedDate="";
	String formatedDatetemp="";
    public String getDateFormat(java.util.Date sdate,String sFormat)
	{
		if(sdate==null)
		{
		 formatedDate="";
		}
		else
		if(sFormat==null)
		{
		 formatedDate="";
		}
		else
		formatedDatetemp=new SimpleDateFormat(sFormat).format(sdate);
	return formatedDatetemp;
	}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/sessionchk.jsp");
    _jspx_dependants.add("/function.jsp");
    _jspx_dependants.add("/comman/header.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
	
//    session checker
    if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
	 }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"description\" content=\"Real Estate\">\n");
      out.write("        <!-- for-mobile-view -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>My Profile</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/foundation.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/styles.css\">\n");
      out.write("        <!--foundation icons-->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/foundation-icons.css\">\n");
      out.write("        <!--fonts-->\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>\n");
      out.write("        <!--foundation icons cdn-->\n");
      out.write("        <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script src=\"js/checkbox.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("\tfunction validate()\n");
      out.write("\t{\n");
      out.write("\t\tvar chge=\"Are you sure to Delete List!\";\n");
      out.write("\t\tif(confirm(chge)==false)\n");
      out.write("\t\t{  \n");
      out.write("\t\t   return false;\n");
      out.write("\t\t}\n");
      out.write("\t} \n");
      out.write("\t\n");
      out.write("\tfunction cancalit()\n");
      out.write("\t{\n");
      out.write("\t\thistory.back();\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction goRecord(iListID)\n");
      out.write("\t{\n");
      out.write("\t  var pathURL=\"deleteList.jsp\";\n");
      out.write("\t  window.open(pathURL+\"?iListID=\"+iListID,\"_self\");\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction goSubmitForm()\n");
      out.write("\t{\n");
      out.write("\tvar chge=\"Are you sure to Delete!\";\n");
      out.write("\t\tif(confirm(chge)==false)\n");
      out.write("\t\t{  \n");
      out.write("\t\t   return false;\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\tfunction onErrorLoad(im)\n");
      out.write("\t{\n");
      out.write("\t\tvar id=\"im\"+im;\n");
      out.write("\t\tdocument.getElementById(id).src=\"proImage/blank.jpg\";\n");
      out.write("\t\tdocument.getElementById(id).style.width=\"1px\";\n");
      out.write("\t\tdocument.getElementById(id).style.height=\"1px\";\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction openWindow(iListID)\n");
      out.write("\t{\n");
      out.write("\t\twindow.open(\"display.jsp?iListID=\"+iListID,'my','status=no,menubar=no,scrollbars=yes,toolbar=no,resize=yes');\n");
      out.write("\t}\n");
      out.write("</script> \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        fieldSName(\"iListID\",\"listForm\");\n");
      out.write("        </script>\n");
      out.write("    <body>\n");
      out.write("        <!--dynamic navbar-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\r');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
  
	if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
	 }

      out.write('\n');
      out.write('\n');

String usertype=nullconv((String)session.getAttribute("username"));
String sPending="";
if(!(usertype).equals(""))
{
  if(usertype.equalsIgnoreCase("1"))
  {
   
      out.write("\n");
      out.write("   \n");
      out.write("       <h2 id=\"profileheading\">My Account</h2>\n");
      out.write("       <ul id=\"sidenav\">\n");
      out.write("           <li><a href=\"\">My Profile</a></li>\n");
      out.write("           <li><a href=\"\">Listings</a></li>\n");
      out.write("           <li><a href=\"\">Messages</a></li>\n");
      out.write("           <li><a href=\"\">Change Password</a></li>\n");
      out.write("       </ul>\n");
      out.write("       \n");
      out.write("       <h2 id=\"profileheading\">My Account</h2>\n");
      out.write("       <ul id=\"sidenav\">\n");
      out.write("           <li><a href=\"addCountry.jsp\">Add Country</a></li>\n");
      out.write("           <li><a href=\"viewCountry.jsp\">Edit Country</a></li>\n");
      out.write("           <li><a href=\"addState.jsp\">Add State</a></li>\n");
      out.write("           <li><a href=\"viewState.jsp\">Edit State</a></li>\n");
      out.write("           <li><a href=\"addCity.jsp\">Add City</a></li>\n");
      out.write("           <li><a href=\"viewCity.jsp\">Edit City</a></li>\n");
      out.write("           <li><a href=\"addLocation.jsp\">Add Location</a></li>\n");
      out.write("           <li><a href=\"viewLocation.jsp\">Edit Location</a></li>\n");
      out.write("           <li><a href=\"addproperty.jsp\">Add Property</a></li>\n");
      out.write("           <li><a href=\"viewproperty.jsp\">Edit Property</a></li>\n");
      out.write("           <li><a href=\"currency.jsp\">Add Currency</a></li>\n");
      out.write("           <li><a href=\"addBudget.jsp\">Add Budget</a></li>\n");
      out.write("           <li><a href=\"viewBudget.jsp\">Edit Budget</a></li>\n");
      out.write("           <li><a href=\"pendUser.jsp\">Pending User</a></li>\n");
      out.write("           <li><a href=\"viewforget.jsp\">Pending Forget Password</a></li>\n");
      out.write("           <li><a href=\"approveListAdmin.jsp\">Add Approval Option List</a></li>\n");
      out.write("           <li><a href=\"approvePostAdmin.jsp\">Add Approval Option Post</a></li>\n");
      out.write("           <li><a href=\"approveList.jsp\">Pending Approval List</a></li>\n");
      out.write("           <li><a href=\"approvePost.jsp\">Pending Approval Post</a></li>\n");
      out.write("           <li><a href=\"doSearchPost.jsp\">Search Post</a></li>\n");
      out.write("       </ul>\n");
      out.write("       ");
}
else if(usertype.equalsIgnoreCase("2"))
{
       
      out.write("\n");
      out.write("   \n");
      out.write("       <h2 id=\"profileheading\">My Account</h2>\n");
      out.write("       <ul id=\"sidenav\">\n");
      out.write("           <li><a href=\"\">My Profile</a></li>\n");
      out.write("           <li><a href=\"\">Listings</a></li>\n");
      out.write("           <li><a href=\"\">Messages</a></li>\n");
      out.write("           <li><a href=\"\">Change Password</a></li>\n");
      out.write("       </ul>\n");
      out.write("       \n");
      out.write("       <h2 id=\"profileheading\">My Account</h2>\n");
      out.write("       <ul id=\"sidenav\">\n");
      out.write("           <li><a href=\"addCountry.jsp\">Add Country</a></li>\n");
      out.write("           <li><a href=\"viewCountry.jsp\">Edit Country</a></li>\n");
      out.write("           <li><a href=\"addState.jsp\">Add State</a></li>\n");
      out.write("           <li><a href=\"viewState.jsp\">Edit State</a></li>\n");
      out.write("           <li><a href=\"addCity.jsp\">Add City</a></li>\n");
      out.write("           <li><a href=\"viewCity.jsp\">Edit City</a></li>\n");
      out.write("           <li><a href=\"addLocation.jsp\">Add Location</a></li>\n");
      out.write("           <li><a href=\"viewLocation.jsp\">Edit Location</a></li>\n");
      out.write("           <li><a href=\"addproperty.jsp\">Add Property</a></li>\n");
      out.write("           <li><a href=\"viewproperty.jsp\">Edit Property</a></li>\n");
      out.write("           <li><a href=\"currency.jsp\">Add Currency</a></li>\n");
      out.write("           <li><a href=\"addBudget.jsp\">Add Budget</a></li>\n");
      out.write("           <li><a href=\"viewBudget.jsp\">Edit Budget</a></li>\n");
      out.write("           <li><a href=\"pendUser.jsp\">Pending User</a></li>\n");
      out.write("           <li><a href=\"viewforget.jsp\">Pending Forget Password</a></li>\n");
      out.write("           <li><a href=\"approveListAdmin.jsp\">Add Approval Option List</a></li>\n");
      out.write("           <li><a href=\"approvePostAdmin.jsp\">Add Approval Option Post</a></li>\n");
      out.write("           <li><a href=\"approveList.jsp\">Pending Approval List</a></li>\n");
      out.write("           <li><a href=\"approvePost.jsp\">Pending Approval Post</a></li>\n");
      out.write("           <li><a href=\"doSearchPost.jsp\">Search Post</a></li>\n");
      out.write("       </ul>\n");
      out.write("  ");

  }
  else if(usertype.equalsIgnoreCase("3"))
  {
  
      out.write("\n");
      out.write("   \n");
      out.write("       <h2 id=\"profileheading\">My Account</h2>\n");
      out.write("       <ul id=\"sidenav\">\n");
      out.write("           <li><a href=\"\">My Profile</a></li>\n");
      out.write("           <li><a href=\"\">Listings</a></li>\n");
      out.write("           <li><a href=\"\">Messages</a></li>\n");
      out.write("           <li><a href=\"\">Change Password</a></li>\n");
      out.write("       </ul>\n");
      out.write("  ");

  }
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"large-4 columns\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"large-8 columns\">\n");
      out.write("                    <form name=\"listForm\" action=\"\" method=\"\" onsubmit=\"return goSubmitForm()\">\n");
      out.write("                        <input type=\"hidden\" name=\"iPageID\" value=\"My\">\n");
      out.write("                        \n");
      out.write("                        <table class=\"stack\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th><input type=\"checkbox\" name=\"allCheck\" onClick=\"selectallMe()\" styleClass=\"ch\" /></th>\n");
      out.write("                                    <th width=\"200\">Location</th>\n");
      out.write("                                    <th width=\"200\">Specification</th>\n");
      out.write("                                    <th width=\"150\">Price</th>\n");
      out.write("                                    <th width=\"150\">Contact</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td></td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                    <td</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                </div>    \n");
      out.write("            </div>    \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
