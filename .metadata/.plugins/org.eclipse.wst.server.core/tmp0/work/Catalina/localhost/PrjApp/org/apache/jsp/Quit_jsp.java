/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2021-06-30 14:55:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Quit_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/FinalProject/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PrjApp/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1623778880000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

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

      out.write("\r\n");
      out.write("\r\n");

	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->\r\n");
      out.write("<!--  All snippets are MIT license http://bootdey.com/license -->\r\n");
      out.write("<title>Quit.jsp</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-1.10.2.min.js\"></script>\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"main-body\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- ?????? ?????? -->\r\n");
      out.write("\t\t\t<nav aria-label=\"breadcrumb\" class=\"main-breadcrumb\">\r\n");
      out.write("\t\t\t\t<ol class=\"breadcrumb\">\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\" aria-current=\"page\"><a\r\n");
      out.write("\t\t\t\t\t\thref=\"/PrjApp/Profile.jsp\">?????? ?????????</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\"><a href=\"/PrjApp/MyPlan.jsp\">???\r\n");
      out.write("\t\t\t\t\t\t\t??????</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\"><a href=\"\">??? ?????????</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\"><a href=\"\">??? ??????</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\"><a href=\"\">??? ??????</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\"><a href=\"\">????????????</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"breadcrumb-item\"><a href=\"\">????????? ??????</a></li>\r\n");
      out.write("\t\t\t\t</ol>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- ?????? ?????? -->\r\n");
      out.write("\t\t\t<div class=\"card mb-3\">\r\n");
      out.write("\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\t\t\t\t\t<h4 style=\"display: inline-block; font-weight: bold; padding: 5px;\">??????\r\n");
      out.write("\t\t\t\t\t\t??????</h4>\r\n");
      out.write("\t\t\t\t\t<div class=\"album py-5 bg-light\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"container row justify-content-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"quit_box\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4 style=\"clear: right; font-weight: bold;\">?????? ??? ?????? ??????</h4>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"border border-secondary\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"padding: 20px; width: 650px; background-color: white; border-radius: 10px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h5 style=\"font-weight: bold;\">?????? ?????? ??? ?????? ??????</h5>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>?????????????????? ?????? ?????? ???6?????? ??????,?????? ?????? ???????????? ?????? ?????? ????????? 5???, ???????????? ??????\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t?????? ??????????????? ?????? ????????? 3??? ?????? ???????????????. ??? ??????????????? ????????? ?????? ?????? ?????? ?????? ?????? ???????????????\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t???????????? ????????????.</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<h5 style=\"font-weight: bold;\">?????? ?????? ??? ????????? ??????</h5>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>?????? ?????? ??? LEGGO ???????????? ????????? ????????? ??? ????????? ???????????? ?????????, ???????????? ????????? ??????\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t????????? ????????? ????????? ??? ???????????? ????????? ?????? ??? ?????? ????????? ??????????????? ????????? ?????????.</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>????????? ????????? ???????????? ???????????? ?????? ?????? ???????????? ?????? ?????? ??? ????????? ??????????????? ????????????.</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<h5 style=\"font-weight: bold;\">?????? ?????? ??? ????????? ??????</h5>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>?????? ?????? ??? ???????????????????????? ???????????? 6?????? ??? ?????? ????????? ????????? ??? ???????????????. ?????????\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t6?????? ???????????? ?????? ???????????? ???????????? ???????????? ??? ?????? ????????????.</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<label style=\"font-size: 17px;\"> <input type=\"checkbox\"\r\n");
      out.write("\t\t\t\t\t\t\t\tid=\"agreecheck\" style=\"width: 15px; height: 13px;\"\r\n");
      out.write("\t\t\t\t\t\t\t\tvalue=\"agreed\">&nbsp;&nbsp; ?????? ????????? ?????????????????? ?????? ???????????????. <span\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"color: red;\">(??????)</span></label>\r\n");
      out.write("\t\t\t\t\t\t</div><br><br><br>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"container row justify-content-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"quit_box\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4 style=\"clear: right; font-weight: bold;\">?????? ?????? ?????? <span style=\"font-size: 17px;\">(???????????? ??????)</span></h4>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"border border-secondary\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"padding: 20px; width: 650px; background-color: white; border-radius: 10px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t <label style=\"font-size: 17px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t \t<input type=\"checkbox\" id=\"agreecheck\" style=\"width: 15px; height: 15px;\" value=\"agreed\">&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t \t???????????? ??????\r\n");
      out.write("\t\t\t\t\t\t\t\t </label><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t <label style=\"font-size: 17px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t \t<input type=\"checkbox\" id=\"agreecheck\" style=\"width: 15px; height: 15px;\" value=\"agreed\">&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t \t?????????\r\n");
      out.write("\t\t\t\t\t\t\t\t </label><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t <label style=\"font-size: 17px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t \t<input type=\"checkbox\" id=\"agreecheck\" style=\"width: 15px; height: 15px;\" value=\"agreed\">&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t \t????????? ??????\r\n");
      out.write("\t\t\t\t\t\t\t\t </label><br>\r\n");
      out.write("\t\t\t\t\t\t\t\t <label style=\"font-size: 17px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t \t<input type=\"checkbox\" id=\"agreecheck\" style=\"width: 15px; height: 15px;\" value=\"agreed\">&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t \t??????????????????\r\n");
      out.write("\t\t\t\t\t\t\t\t </label><br>\r\n");
      out.write("\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t</div><br><br><br>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row justify-content-center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-primary\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"width: 20%; font-family: 'Noto Sans KR', sans-serif;\">????????????</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-secondary center submit\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"width: 20%; font-family: 'Noto Sans KR', sans-serif;\">????????????</button>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("\tmargin-top: 20px;\r\n");
      out.write("\tcolor: #1a202c;\r\n");
      out.write("\ttext-align: left;\r\n");
      out.write("\tbackground-color: #e2e8f0;\r\n");
      out.write("\tfont-family: 'Noto Sans KR', sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".quit_box {\r\n");
      out.write("\twidth: 650px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".border {\r\n");
      out.write("\tcolor: #4a4a4a;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".main-body {\r\n");
      out.write("\tpadding: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card {\r\n");
      out.write("\tbox-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0\r\n");
      out.write("\t\trgba(0, 0, 0, .06);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card {\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tdisplay: flex;\r\n");
      out.write("\tflex-direction: column;\r\n");
      out.write("\tmin-width: 0;\r\n");
      out.write("\tword-wrap: break-word;\r\n");
      out.write("\tbackground-color: #fff;\r\n");
      out.write("\tbackground-clip: border-box;\r\n");
      out.write("\tborder: 0 solid rgba(0, 0, 0, .125);\r\n");
      out.write("\tborder-radius: .25rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-body {\r\n");
      out.write("\tflex: 1 1 auto;\r\n");
      out.write("\tmin-height: 1px;\r\n");
      out.write("\tpadding: 1rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".gutters-sm {\r\n");
      out.write("\tmargin-right: -8px;\r\n");
      out.write("\tmargin-left: -8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".gutters-sm>.col, .gutters-sm>[class*=col-] {\r\n");
      out.write("\tpadding-right: 8px;\r\n");
      out.write("\tpadding-left: 8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mb-3, .my-3 {\r\n");
      out.write("\tmargin-bottom: 1rem !important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".bg-gray-300 {\r\n");
      out.write("\tbackground-color: #e2e8f0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".h-100 {\r\n");
      out.write("\theight: 100% !important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".shadow-none {\r\n");
      out.write("\tbox-shadow: none !important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".w-90 {\r\n");
      out.write("\twidth: 90% !important;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
