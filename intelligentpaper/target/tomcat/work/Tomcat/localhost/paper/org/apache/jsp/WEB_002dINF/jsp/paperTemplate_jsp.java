/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-25 09:44:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class paperTemplate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/tld/commons.tld", Long.valueOf(1524987220032L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;


        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
        + path + "/";
        
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("    <title>题库管理</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap Core CSS -->\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- MetisMenu CSS -->\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/metisMenu.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- DataTables CSS -->\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/dataTables.bootstrap.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom CSS -->\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/sb-admin-2.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom Fonts -->\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/font-awesome.min.css\" rel=\"stylesheet\"\r\n");
      out.write("          type=\"text/css\">\r\n");
      out.write("    <link href=\"");
      out.print(basePath);
      out.write("css/boot-crm.css\" rel=\"stylesheet\"\r\n");
      out.write("          type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("    <!-- Navigation -->\r\n");
      out.write("    <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\"\r\n");
      out.write("         style=\"margin-bottom: 0\">\r\n");
      out.write("        <div class=\"navbar-header\">\r\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("                    data-target=\".navbar-collapse\">\r\n");
      out.write("                <span class=\"sr-only\">Toggle navigation</span> <span\r\n");
      out.write("                    class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("                    class=\"icon-bar\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">小智试卷 V1.0</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.navbar-header -->\r\n");
      out.write("\r\n");
      out.write("        <ul class=\"nav navbar-top-links navbar-right\" style=\"padding-top: 5px\">\r\n");
      out.write("            <li>朱老师</li>\r\n");
      out.write("            <li><a href=\"#\">注销</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <!-- /.navbar-top-links -->\r\n");
      out.write("        <div class=\"navbar-default sidebar\" role=\"navigation\">\r\n");
      out.write("            <div class=\"sidebar-nav navbar-collapse\">\r\n");
      out.write("\r\n");
      out.write("                <ul class=\"nav\" id=\"side-menu\">\r\n");
      out.write("                    <li><a href=\"#\"><i\r\n");
      out.write("                            class=\"fa fa-edit fa-fw\"></i> 题库管理</a></li>\r\n");
      out.write("                    <li><a href=\"#\" class=\"active\"><i\r\n");
      out.write("                            class=\"fa fa-dashboard fa-fw \"></i> 模板管理</a></li>\r\n");
      out.write("                    <li><a href=\"#\"><i\r\n");
      out.write("                            class=\"fa glyphicon glyphicon-unchecked fa-fw\"></i> 试卷仓库</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.sidebar-collapse -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("        <!-- /.navbar-static-side -->\r\n");
      out.write("        <div id=\"page-wrapper\">\r\n");
      out.write("            <div>\r\n");
      out.write("                <h4><p class=\"text-center\">试卷模板</p></h4>\r\n");
      out.write("            </div>\r\n");
      out.write("            <form class=\"form-horizontal\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label for=\"courseName\" class=\"col-sm-1 control-label\">科目</label>\r\n");
      out.write("                        <div class=\"col-sm-3\">\r\n");
      out.write("                            <select id=\"courseName\" class=\"form-control\">\r\n");
      out.write("                                <option selected>666</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <label for=\"score\" class=\"col-sm-1 control-label\">总分</label>\r\n");
      out.write("                        <div class=\"col-sm-3\">\r\n");
      out.write("                            <input type=\"input\" class=\"form-control\" id=\"score\" placeholder=\"总分\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"form-group\">\r\n");
      out.write("                        <label for=\"selectQuesNum\" class=\"col-sm-1 control-label\">选择题数目</label>\r\n");
      out.write("                        <div class=\"col-sm-3\">\r\n");
      out.write("                            <input type=\"input\" class=\"form-control\" id=\"selectQuesNum\" placeholder=\"总分\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <label for=\"selectQuesNum\" class=\"col-sm-1 control-label\">填空题数目</label>\r\n");
      out.write("                        <div class=\"col-sm-3\">\r\n");
      out.write("                            <input type=\"input\" class=\"form-control\" id=\"fillBlankQuesNum\" placeholder=\"总分\">\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <label for=\"selectQuesNum\" class=\"col-sm-1 control-label\">判断题数目</label>\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                        <input type=\"input\" class=\"form-control\" id=\"judgeQuesNum\" placeholder=\"总分\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <label for=\"bigQuesNum\" class=\"col-sm-1 control-label\">大题数目</label>\r\n");
      out.write("                    <div class=\"col-sm-3\">\r\n");
      out.write("                        <input type=\"input\" class=\"form-control\" id=\"bigQuesNum\" placeholder=\"总分\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("                        <label>知识点占比设置</label>\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-default\">点击前往</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("        <!-- /#wrapper -->\r\n");
      out.write("\r\n");
      out.write("        <!-- jQuery -->\r\n");
      out.write("    <script src=\"");
      out.print(basePath);
      out.write("js/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("            <!-- Bootstrap Core JavaScript -->\r\n");
      out.write("    <script src=\"");
      out.print(basePath);
      out.write("js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("            <!-- Metis Menu Plugin JavaScript -->\r\n");
      out.write("    <script src=\"");
      out.print(basePath);
      out.write("js/metisMenu.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("            <!-- DataTables JavaScript -->\r\n");
      out.write("    <script src=\"");
      out.print(basePath);
      out.write("js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("    <script src=\"");
      out.print(basePath);
      out.write("js/dataTables.bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("            <!-- Custom Theme JavaScript -->\r\n");
      out.write("    <script src=\"");
      out.print(basePath);
      out.write("js/sb-admin-2.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("        </html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}