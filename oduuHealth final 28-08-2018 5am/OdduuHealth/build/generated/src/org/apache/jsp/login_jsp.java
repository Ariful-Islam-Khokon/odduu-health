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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("\n");
      out.write("        <script src=\"resources/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"resources/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://fonts.googleapis.com/css?family=Satisfy|Bree+Serif|Candal|PT+Sans\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\"/>\n");
      out.write("        <style>\n");
      out.write("            #logReg{\n");
      out.write("                margin: auto;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section id=\"banner\">\n");
      out.write("            <div class=\"bg-color\" >\n");
      out.write("                <!-- admin login start -->\n");
      out.write("                <div>\n");
      out.write("\n");
      out.write("                    <form action=\"loginAdmin.htm\" >\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-sm-1 control-label\">Admin Name</label>\n");
      out.write("                            <div class=\"col-sm-2\">\n");
      out.write("                                <input style=\"color: white\" class=\"form-control\" type=\"text\" name=\"admin\" placeholder=\"admin\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"col-sm-1 control-label\">Password</label>\n");
      out.write("                            <div class=\"col-sm-2\">\n");
      out.write("                                <input style=\"color: white\" class=\"form-control\" type=\"password\" name=\"password\" placeholder=\"admin\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>     \n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"col-sm-1\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-danger\" onclick=\"\">Admin Login</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-4\"><p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${msgalg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p></div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <!-- admin login end -->\n");
      out.write("                <header id=\"header\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"inner text-center\">\n");
      out.write("                                <h1 class=\"logo-name\">Movie Castle</h1>\n");
      out.write("                                <p style=\"text-align:center\">One of the best Cinema hall in Bangladesh.It provides good hospitality with foods,comfortable environment to watch movie. You can buy tickets online.First you have to register for online ticket booking and get our support.  </p>\n");
      out.write("                                <!-- User login and registration  Start -->\n");
      out.write("                                <br/><br/>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                <div id=\"uslg\" style=\"visibility: visible\">\n");
      out.write("                                <!-- User login Start -->\n");
      out.write("                                <form action=\"loginC.htm\">\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-sm-offset-2 col-sm-2 control-label\">Mobile No</label>\n");
      out.write("\n");
      out.write("                                        <div  class=\"col-sm-5 \">\n");
      out.write("                                            <input style=\"color: white\" class=\"form-control\" type=\"text\" name=\"mobile\" placeholder=\"Enter mobile number\">\n");
      out.write("                                        </div><div class=\"col-sm-offset-3\"></div>\n");
      out.write("                                    </div><br/>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-sm-offset-2 col-sm-2 control-label\">Password</label>\n");
      out.write("                                        <div class=\"col-sm-5\">\n");
      out.write("                                            <input style=\"color: white\"  class=\"form-control \" type=\"password\" name=\"password\" placeholder=\"Enter password\">\n");
      out.write("                                        </div>                                            \n");
      out.write("                                    </div> <br/><br/>    \n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <div class=\"col-sm-offset-4 col-sm-2\">\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-primary\" onclick=\"\">User Login</button>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div style=\"background-color: #4CAF50;border-radius: 7px; color: white; cursor: pointer \" class=\"col-sm-1\">\n");
      out.write("                                            <h5 onclick=\"tabHidding()\">Sign Up</h5>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div><br/>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-sm-offset-4 col-sm-2\"><p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${msgulg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p></div>\n");
      out.write("                                </form>\n");
      out.write("                                \n");
      out.write("                                <br/>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- User login end -->\n");
      out.write("\n");
      out.write("                                <!-- User Registration start --> \n");
      out.write("                                <div id=\"usrg\" style=\"display: none\">\n");
      out.write("                                <form action=\"save.htm\">\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-sm-offset-2 col-sm-2 control-label\">Mobile No</label>\n");
      out.write("\n");
      out.write("                                        <div  class=\"col-sm-5 \">\n");
      out.write("                                            <input style=\"color: white\" class=\"form-control\" type=\"text\" name=\"mobile\" placeholder=\"Enter mobile number\">\n");
      out.write("                                        </div><div class=\"col-sm-offset-3\"></div>\n");
      out.write("                                    </div><br/>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-sm-offset-2 col-sm-2 control-label\">Name</label>\n");
      out.write("\n");
      out.write("                                        <div  class=\"col-sm-5 \">\n");
      out.write("                                            <input style=\"color: white\" class=\"form-control\" type=\"text\" name=\"uname\" placeholder=\"Enter your name\">\n");
      out.write("                                        </div><div class=\"col-sm-offset-3\"></div>\n");
      out.write("                                    </div><br/>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-sm-offset-2 col-sm-2 control-label\">Password</label>\n");
      out.write("\n");
      out.write("                                        <div  class=\"col-sm-5 \">\n");
      out.write("                                            <input style=\"color: white\" class=\"form-control\" type=\"text\" name=\"password\" placeholder=\"Enter passwowrd\">\n");
      out.write("                                        </div><div class=\"col-sm-offset-3\"></div>\n");
      out.write("                                    </div><br/>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-sm-offset-2 col-sm-2 control-label\">Email</label>\n");
      out.write("\n");
      out.write("                                        <div  class=\"col-sm-5 \">\n");
      out.write("                                            <input style=\"color: white\" class=\"form-control\" type=\"text\" name=\"email\" placeholder=\"Enter yoru email\">\n");
      out.write("                                        </div><div class=\"col-sm-offset-3\"></div>\n");
      out.write("                                    </div><br/>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <div class=\"col-sm-offset-4 col-sm-2\">\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-primary\" onclick=\"\">Register</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div><br/>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </form>\n");
      out.write("                                </div>    \n");
      out.write("                                    \n");
      out.write("                                <!-- User Registration end -->  \n");
      out.write("                            </div>\n");
      out.write("                            <!-- User login and registration  end -->\n");
      out.write("\n");
      out.write("                            <!-- User login end -->     \n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </header>\n");
      out.write("            </div>\n");
      out.write("        </section>    \n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("            //login hidding function\n");
      out.write("            function tabHidding() {\n");
      out.write("                    document.getElementById(\"uslg\").style.display =\"none\";\n");
      out.write("                    document.getElementById(\"usrg\").style.display=\"block\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>                               \n");
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
