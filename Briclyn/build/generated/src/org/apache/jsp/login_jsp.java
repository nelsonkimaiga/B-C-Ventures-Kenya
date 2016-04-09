package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      			null, true, 8192, true);
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"description\" content=\"Real Estate\">\n");
      out.write("        <!-- for-mobile-view -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>B&C Ventures|Home</title>\n");
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
      out.write("        <!-- form validation -->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function validateForm() {\n");
      out.write("                var x = document.forms[\"loginForm\"][\"username\"].value;\n");
      out.write("                var y = document.forms[\"loginForm\"][\"password\"].value;\n");
      out.write("\n");
      out.write("                if (x == null || x == \"\") {\n");
      out.write("                    alert(\"Username must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                if (y == null || y == \"\") {\n");
      out.write("                    alert(\"password must be filled out\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"top-bar\">\n");
      out.write("            <div class=\"top-bar-left\">\n");
      out.write("                <ul class=\"dropdown menu\" data-dropdown-menu>\n");
      out.write("                    <li class=\"menu-text\">Briclyn Kenya</li>\n");
      out.write("                    <li></li>\n");
      out.write("                    <li><a href=\"login.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"\">Search</a></li>\n");
      out.write("                    <li><a href=\"#\">Register</a></li>\n");
      out.write("                    <li><a href=\"#\">List Your Property</a></li>\n");
      out.write("                    <li><a href=\"#\">Post Your Requirement</a></li>\n");
      out.write("                    \n");
      out.write("                    <li><a href=\"#\">Login</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"large-6 large-centered columns\">\n");
      out.write("                    <form action=\"doLogin.jsp\" method=\"POST\" name=\"loginForm\" autocomplete=\"off\" onsubmit=\"return validateForm()\">\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Username</label>\n");
      out.write("                            <input type=\"text\" name=\"username\" autocomplete=\"off\" placeholder=\"Username\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <fieldset>\n");
      out.write("                            <label class=\"labels\">Password</label>\n");
      out.write("                            <input type=\"password\" name=\"password\" autocomplete=\"off\" placeholder=\"Password\">\n");
      out.write("                        </fieldset>\n");
      out.write("                        <button type=\"submit\" class=\"button primary\">Login</button>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"large-6 small-12 columns\">\n");
      out.write("                                <p><a href=\"#\">Forgot Password?</a></p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"large-6 small-12 columns\">\n");
      out.write("                                <p><a href=\"register.jsp\">New User?</a></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
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
