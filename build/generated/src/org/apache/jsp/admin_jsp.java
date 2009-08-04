package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
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
      out.write("        <title>Administration Page</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("            \n");
      out.write("            ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("            <div id=\"banner\">\n");
      out.write("                <h1>Records Lookup and Administration</h1>\n");
      out.write("            </div> <!-- banner -->\n");
      out.write("\n");
      out.write("            <div id=\"contentwrapper\">\n");
      out.write("\n");
      out.write("                <div id=\"leftcolumn\">\n");
      out.write("                    <h3>Menu</h3>\n");
      out.write("                    <a class=\"list\" href=\"admin.jsp?clearPage=true\">Home / Admin</a> <br>\n");
      out.write("                    <a class=\"list\" href=\"nnumber_lookup.jsp\">Register New User</a> <br>\n");
      out.write("                    <a class=\"list\" href=\"register_user.jsp?updateRecord=false\">Register (no N-Number)</a> <br>\n");
      out.write("\n");
      out.write("                    <h3>Info</h3>\n");
      out.write("                    <p>\n");
      out.write("                        Manage the records from this screen.\n");
      out.write("                    </p>\n");
      out.write("                    ");
 if (request.getParameter("toolInfo") != null) {
                        String infoMsg = request.getParameter("toolInfo");
                    
      out.write("\n");
      out.write("                    <p class=\"infomsgspan\">");
      out.print( infoMsg);
      out.write("</p>\n");
      out.write("                    ");

                        } else {
                    
      out.write("\n");
      out.write("                    <p></p>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </div> <!-- leftcolumn -->\n");
      out.write("\n");
      out.write("                <div id=\"maincolumn\">\n");
      out.write("\n");
      out.write("                    <div id=\"feedback\">\n");
      out.write("                    </div> <!-- feedback -->\n");
      out.write("\n");
      out.write("                    <h2> Control Panel </h2>\n");
      out.write("\n");
      out.write("                    <table border=\"0\" cellspacing=\"5\" cellpadding=\"5\">\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"nnumber_lookup.jsp\" method=\"post\">\n");
      out.write("                                    <input type=\"submit\" style=\"width: 200px; font-size: 100%;\" value=\"Register Aircraft\">\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"queryDatabase\" method=\"post\">\n");
      out.write("                                    <input type=\"hidden\" name=\"retrieveAll\" value=\"updaterec\">\n");
      out.write("                                    <input type=\"hidden\" name=\"toolInfo\" value=\"Click on the NNumber to update the registration information\">\n");
      out.write("                                    <input type=\"submit\" style=\"width: 200px; font-size: 100%;\" value=\"Modify Record\">\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"queryDatabase\" method=\"post\">\n");
      out.write("                                    <input type=\"hidden\" name=\"deleteRecord\" value=\"yes\">\n");
      out.write("                                    <input type=\"submit\" disabled=\"disabled\" style=\"width: 200px; font-size: 100%;\" value=\"Delete Record\">\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"queryDatabase\" method=\"post\">\n");
      out.write("                                    <input type=\"hidden\" name=\"retrieveAll\" value=\"yes\">\n");
      out.write("                                    <input type=\"hidden\" name=\"toolInfo\" value=\"Click on the NNumber to view the registration information\">\n");
      out.write("                                    <input type=\"submit\" style=\"width: 200px; font-size: 100%;\" value=\"Display Registered\">\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"queryDatabase\" method=\"post\">\n");
      out.write("                                    <input type=\"hidden\" name=\"retrieveJudging\" value=\"yes\">\n");
      out.write("                                    <input type=\"hidden\" name=\"toolInfo\" value=\"To judge a plane click on its corresponding NNumber\">\n");
      out.write("                                    <input type=\"submit\" style=\"width: 200px; font-size: 100%;\" value=\"To Be Judged\">\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"RetrieveScoreServlet\" method=\"post\">\n");
      out.write("                                    <input type=\"hidden\" name=\"toolInfo\" value=\"Click on the NNumber to view contact information<br><br>Click on the category name to sort by that category\">\n");
      out.write("                                    <input type=\"submit\" style=\"width: 200px; font-size: 100%;\" value=\"Judged Results\">\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                    ");

                    if (request.getParameter("clearPage") != null) {
                        if (request.getParameter("clearPage").equals("true")) {
                        } else {
                    
      out.write("\n");
      out.write("                    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sqlResult}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\n");
      out.write("                    ");
  }
                    } else {
                    
      out.write("\n");
      out.write("                    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sqlResult}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\n");
      out.write("                    ");

                    }
                    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <br>\n");
      out.write("\n");
      out.write("                </div> <!-- maincolumn -->\n");
      out.write("            </div> <!-- contentwrapper -->\n");
      out.write("            <div id=\"footer\">\n");
      out.write("                Created by <a href=\"http://francescodorigo.com\"> Francesco Dorigo </a>\n");
      out.write("            </div> <!-- footer -->\n");
      out.write("        </div> <!-- wrapper -->\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_005fif_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /admin.jsp(23,12) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sqlStatement == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                ");
        if (_jspx_meth_c_005fset_005f0(_jspx_th_c_005fif_005f0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fset_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
    // /admin.jsp(24,16) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fset_005f0.setVar("sqlStatement");
    // /admin.jsp(24,16) name = value type = null reqTime = true required = false fragment = false deferredValue = false deferredMethod = false expectedTypeName = null methodSignature = null 
    _jspx_th_c_005fset_005f0.setValue(new String("select NNUMBER from master"));
    int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
    if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
    return false;
  }
}
