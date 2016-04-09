package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import scripts.DbConn;
import java.text.SimpleDateFormat;
import java.sql.*;
import java.text.SimpleDateFormat;

public final class myProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/comman/header.jsp");
    _jspx_dependants.add("/navbar.jsp");
    _jspx_dependants.add("/function.jsp");
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
      out.write('\r');
      out.write('\n');
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
      out.write("        <script type=\"text/javascript\" src=\"js/vendor/jquery.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--dynamic navbar-->\n");
      out.write("        ");
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
      out.write("<div class=\"top-bar\">\n");
      out.write("    <div class=\"top-bar-left\">\n");
      out.write("        <ul class=\"dropdown menu\" data-dropdown-menu>\n");
      out.write("            <li class=\"menu-text\">Briclyn Kenya</li>\n");
      out.write("            <li></li>\n");
      out.write("            <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"doSearch.jsp\">Search</a></li>\n");
      out.write("             ");

                    if(usersessionid.equals(""))
                    {
             
      out.write("\n");
      out.write("            <li><a href=\"register.jsp\">Register</a></li>\n");
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
      out.write("                <div class=\"large-6 large-centered columns\">\n");
      out.write("                    <form action=\"regBriclyn.jsp\" method=\"POST\" name=\"registrationForm\" onsubmit=\"return validateForm()\">\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Full Names*</label>\n");
      out.write("                            <input type=\"text\" name=\"names\" placeholder=\"Full Names\" autocomplete=\"off\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Email Address*</label>\n");
      out.write("                            <input type=\"email\" name=\"email\" placeholder=\"Email\" autocomplete=\"off\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Phone Number</label>\n");
      out.write("                            <input type=\"number\" name=\"phonenumber\" placeholder=\"Phone Number\" autocomplete=\"off\">\n");
      out.write("                        </fieldset>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>    \n");
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