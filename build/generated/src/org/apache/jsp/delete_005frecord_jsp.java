package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import business.*;

public final class delete_005frecord_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("\"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"resources/stylesheet.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script src=\"resources/equalcolumns.js\" type=\"text/javascript\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Delete Record</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("        \n");
      out.write("\n");
      out.write("        ");

        Aircraft aircraft = (Aircraft) request.getAttribute("aircraft");
        String message = (String) request.getAttribute("message");

        if (aircraft == null) {
            aircraft = new Aircraft();
        }

        if (message == null) {
            message = "Please enter the N-Number of the record to delete";
        }
        
      out.write("\n");
      out.write("        <div id=\"banner\">\n");
      out.write("        <h1>Remove Recodrd From Database</h1>\n");
      out.write("        </div> <!-- banner -->\n");
      out.write("\n");
      out.write("        <div id=\"contentwrapper\">\n");
      out.write("\n");
      out.write("        <div id=\"leftcolumn\">\n");
      out.write("            <h3>Menu</h3>\n");
      out.write("            <a class=\"list\" href=\"admin.jsp?clearPage=true\">Home / Admin</a> <br>\n");
      out.write("            <a class=\"list\" href=\"nnumber_lookup.jsp\">Register New User</a> <br>\n");
      out.write("            <a class=\"list\" href=\"register_user.jsp?updateRecord=false\">Register (no N-Number)</a> <br>\n");
      out.write("\n");
      out.write("            <h3>Info</h3>\n");
      out.write("            <p>\n");
      out.write("                Delete at your own risk...\n");
      out.write("            </p>\n");
      out.write("        </div> <!-- leftcolumn -->\n");
      out.write("\n");
      out.write("        <div id=\"maincolumn\">\n");
      out.write("\n");
      out.write("        <div id=\"feedback\">\n");
      out.write("        ");
      out.print( message );
      out.write("\n");
      out.write("        </div> <!-- feedback -->\n");
      out.write("\n");
      out.write("        <form action=\"deleteRecord\" method=\"post\">\n");
      out.write("            <table cellspacing=\"5\" border=\"0\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>N-Number:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"nNumber\" value=\"");
      out.print( aircraft.getNNumber());
      out.write("\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"width:90px;\"></td>\n");
      out.write("                    <input type=\"hidden\" name=\"deleteParam\" value=\"delrecord\">\n");
      out.write("                    <td><input type=\"submit\" value=\"Expunge the record\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"width:90px;\"></td>\n");
      out.write("                    <input type=\"hidden\" name=\"deleteParam\" value=\"delscore\">\n");
      out.write("                    <td><input type=\"submit\" value=\"Clear score\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        </div> <!-- maincontent -->\n");
      out.write("        </div> <!-- contentwrapper -->\n");
      out.write("        <div id=\"footer\">\n");
      out.write("           Created by <a href=\"http://francescodorigo.com\"> Francesco Dorigo </a>\n");
      out.write("        </div> <!-- footer -->\n");
      out.write("        </div> <!-- wrapper -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
