package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Home</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"background-image:url('images/Background.png'); background-repeat: no-repeat \"><center>\n");
      out.write("        <h1 style=\"font-family: chiller; font-size: 50px; color: purple\">Aplikasi apotik</h1> \n");
      out.write("        <h6 style=\"font-family: chiller; font-size: 25px; color: purple\"><a href=\"home.jsp\"><img src=\"images/home.png\" title=\"Home\" style=\"width:5%; height: 5%\">Home</a><br>\n");
      out.write("        <a href=\"index.jsp\"><img src=\"images/login.png\" title=\"Login\" style=\"width:5%; height: 5%\">Login</a><br>\n");
      out.write("        <a href=\"master_obat.jsp\"><img src=\"images/input.png\" title=\"Input data obat\" style=\"width:5%; height: 5%\">Input data obat</a><br>\n");
      out.write("        <a href=\"resep_dokter.jsp\"><img src=\"images/dokter.png\" title=\"Penjualan obat dengan resep dokter\" style=\"width:5%; height: 5%\">Penjualan obat dengan resep dokter</a><br>\n");
      out.write("        <a href=\"tanpa_resep.jsp\"><img src=\"images/obat.png\" title=\"Penjualan obat tanpa resep dokter\" style=\"width:5%; height: 5%\">Penjualan obat tanpa resep dokter</a><br>\n");
      out.write("        <a href=\"obat_kadaluarsa.jsp\"><img src=\"images/x.png\" title=\"Obat kadaluarsa\" style=\"width:5%; height: 5%\">Data obat kadaluarsa</a><br>\n");
      out.write("        <a href=\"laporan.jsp\"><img src=\"images/laporan.png\" title=\"Laporan\" style=\"width:5%; height: 5%\">Laporan</a><br></h6>\n");
      out.write("    </center>\n");
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
