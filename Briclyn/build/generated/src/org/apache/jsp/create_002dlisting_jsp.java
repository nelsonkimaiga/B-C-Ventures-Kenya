package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import scripts.DbConn;
import java.sql.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.text.SimpleDateFormat;

public final class create_002dlisting_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants.add("/sessionchk.jsp");
    _jspx_dependants.add("/doLogin.jsp");
    _jspx_dependants.add("/function.jsp");
    _jspx_dependants.add("/navbar.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

    String user = nullconv(request.getParameter("username"));
    String pass = nullconv(request.getParameter("password"));
    
    String message="User login successfully ";
    String loginYes="";
    //test for admin login credentials
    if ("admin".equals(user) && "kimaiga".equals(pass)){
        //redirect to admin user page
        response.sendRedirect("admin.jsp");
    } else {
        //login as a normal user
            try {
                //attempt to authenticate user
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/briclyn","root","303seminarian");
                String query = "SELECT * FROM registration WHERE username='"+user+"'and password ='"+pass+"'";
                Statement st = conn.createStatement(); 
                ResultSet rs = st.executeQuery(query);
                if (rs.next()) {
                    
			  loginYes="yes";
			  session.setAttribute("username",rs.getString("username"));
			  session.setAttribute("username",rs.getString("name"));
			  response.sendRedirect("index.jsp");
                } 
			else
			{
			  message="No user or password matched" ;
			  response.sendRedirect("login.jsp?error="+message);
			}
			try{
				 if(st!=null){
					 st.close();
				 }
				 if(rs!=null){
					 rs.close();
				 }
				 
				 if(conn!=null){
				  conn.close();
				 }
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            }
         }
            

      out.write('\n');
      out.write('\n');
      out.write('\n');
  
	if((nullconv((String)session.getAttribute("username")).equals("")))
	{
	  response.sendRedirect("login.jsp");
	  return;
	 }

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"description\" content=\"Real Estate\">\n");
      out.write("        <!-- for-mobile-view -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Create Listing</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/foundation.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/styles.css\">\n");
      out.write("        <!--foundation icons-->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/foundation-icons.css\">\n");
      out.write("        <!--fonts-->\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>\n");
      out.write("        <!--foundation icons cdn-->\n");
      out.write("        <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/vendor/jquery.min.js\"></script>\n");
      out.write("                <!-- form validation -->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function validateForm() {\n");
      out.write("                var a = document.forms[\"listForm\"][\"title\"].value;\n");
      out.write("                var b = document.forms[\"listForm\"][\"type\"].value;\n");
      out.write("                var c = document.forms[\"listForm\"][\"propertytype\"].value;\n");
      out.write("                var d = document.forms[\"listForm\"][\"region\"].value;\n");
      out.write("                var e = document.forms[\"listForm\"][\"city\"].value;\n");
      out.write("                var f = document.forms[\"listForm\"][\"area\"].value;\n");
      out.write("                var g = document.forms[\"listForm\"][\"address\"].value;\n");
      out.write("                var h = document.forms[\"listForm\"][\"price\"].value;\n");
      out.write("\n");
      out.write("                if (a == null || a == \"\") {\n");
      out.write("                    alert(\"Title must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                if (b == null || b == \"\") {\n");
      out.write("                    alert(\"Listing type must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if (c == null || c == \"\") {\n");
      out.write("                    alert(\"Property type must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if (d == null || d == \"\") {\n");
      out.write("                    alert(\"Region must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if(e == null || e == \"\"){\n");
      out.write("                    alert(\"City must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if(f == null || f == \"\"){\n");
      out.write("                    alert(\"Area must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if(g == null || g == \"\"){\n");
      out.write("                    alert(\"Address must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                if(h == null || h == \"\"){\n");
      out.write("                    alert(\"Price must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head> \n");
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
      out.write('\n');
      out.write('\n');

    String status="Login";
    String fileCall="login.jsp";
    String usersessionid=nullconv((String)session.getAttribute("username"));
    if(!(usersessionid).equals(""))
    {
        status="Logout";
        fileCall="logout.jsp";
        usersessionid="Hi!  "+nullconv((String)session.getAttribute("username"));
    }

      out.write("\n");
      out.write("<!--dynamic navbar starts here-->\n");
      out.write("<div class=\"top-bar\">\n");
      out.write("    <div class=\"top-bar-left\">\n");
      out.write("        <ul class=\"dropdown menu\" data-dropdown-menu>\n");
      out.write("            <li class=\"menu-text\">Briclyn Kenya</li>\n");
      out.write("            <li></li>\n");
      out.write("            <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"\">Search</a></li>\n");
      out.write("             ");

                    if(usersessionid.equals(""))
                    {
             
      out.write("\n");
      out.write("             <li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("             ");
}
             
      out.write("\n");
      out.write("             <li><a href=\"create-listing.jsp\">List Your Property</a></li>\n");
      out.write("             <li><a href=\"create-posting.jsp\">Post Your Requirement</a></li>\n");
      out.write("             <li><a href=\"");
      out.print(fileCall);
      out.write("\"><span>");
      out.print(usersessionid);
      out.write(' ');
      out.print(status);
      out.write("</span></a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"large-4 columns\" id=\"profile\">\n");
      out.write("                    <h2 id=\"profileheading\">My Account</h2>\n");
      out.write("                    <ul id=\"sidenav\">\n");
      out.write("                        <li><a href=\"\">My Profile</a></li>\n");
      out.write("                        <li><a href=\"\">Listings</a></li>\n");
      out.write("                        <li><a href=\"\">Messages</a></li>\n");
      out.write("                        <li><a href=\"\">Change Password</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>                \n");
      out.write("                <div class=\"large-8 columns\">\n");
      out.write("                    <h3 class=\"menu-headings\">List Your Property</h3>\n");
      out.write("                    <form action=\"doListing.jsp\" method=\"post\" name=\"listForm\" autocomplete=\"off\" onsubmit=\"return validateForm()\">\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Title</label>\n");
      out.write("                            <input type=\"text\" name=\"title\" placeholder=\"Property Title\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"menu-headings\">Transaction type (E.g Sale or rent?</label>\n");
      out.write("                            <select name=\"type\">\n");
      out.write("                                <option value=\"default\" selected disabled>Select a transaction type</option>\n");
      out.write("                                <option value=\"Rent\">Rent</option>\n");
      out.write("                                <option value=\"For Sale\">For Sale</option>\n");
      out.write("                            </select>\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Property Type</label>\n");
      out.write("                            <select name=\"propertytype\">\n");
      out.write("                                <option value=\"default\" selected disabled>Choose a property type</option>\n");
      out.write("                                <option value=\"Apartment\">Apartment</option>\n");
      out.write("                                <option value=\"House\">House</option>\n");
      out.write("                                <option value=\"Land\">Land</option>\n");
      out.write("                                <option value=\"Commercial\">Commercial</option>\n");
      out.write("                            </select>\n");
      out.write("                        </fieldset>\n");
      out.write("                        <hr>\n");
      out.write("                        <p class=\"menu-headings\">Pick Location</p>\n");
      out.write("                        <hr>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Region</label>\n");
      out.write("                            <select name=\"region\">\n");
      out.write("                            <option value=\"default\" selected disabled>Choose Your Region</option>\n");
      out.write("                            <option value=\"Nairobi\">Nairobi</option>\n");
      out.write("                            </select>\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">City</label>\n");
      out.write("                            <select name=\"city\">\n");
      out.write("                            <option value=\"default\" selected disabled>Choose Your City</option>\n");
      out.write("                            <option value=\"Nairobi\">Nairobi</option>\n");
      out.write("                            </select>\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Area</label>\n");
      out.write("                            <select name=\"area\">\n");
      out.write("                            <option value=\"default\" selected disabled>Choose Your Area</option>\n");
      out.write("                            <option value=\"Nairobi\">Nairobi</option>\n");
      out.write("                            </select>\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Address</label>\n");
      out.write("                            <input type=\"text\" name=\"address\" placeholder=\"Address\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Price</label>\n");
      out.write("                            <input type=\"text\" name=\"price\" placeholder=\"Price\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <button type=\"submit\" class=\"button success\">Create Listing</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
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
