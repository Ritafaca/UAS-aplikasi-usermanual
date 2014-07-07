package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class master_005fobat_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <body style=\"background-image:  url('images/Background.png'); background-repeat: no-repeat\">\n");
      out.write("    <body><center>\n");
      out.write("        \n");
      out.write("            <form style=\"background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 40%\" action=\"master.jsp\" method=\"post\">\n");
      out.write("                Halo ");
      out.print(session.getAttribute("userid"));
      out.write("\n");
      out.write("                <a href='logout.jsp'>Keluar</a>\n");
      out.write("                <h2>Daftar Produk</h2>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Tanggal masuk</td>\n");
      out.write("                        <td> :<input type=\"text\" name=\"tgl_masuk\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Tanggal kadaluarsa</td>\n");
      out.write("                        <td> :<input type=\"text\" name=\"tgl_kadaluarsa\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Kode </td>\n");
      out.write("                        <td>:<input type=\"text\" name=\"kode_barang\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Nama </td>\n");
      out.write("                        <td>:<input type=\"text\" name=\"nama_barang\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Harga</td> \n");
      out.write("                        <td>:<input type=\"text\" name=\"harga\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Jenis </td>\n");
      out.write("                        <td>:<input type=\"text\" name=\"jenis\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Status </td>\n");
      out.write("                        <td>:<input type=\"text\" name=\"status\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Jumlah</td> \n");
      out.write("                        <td>:<input type=\"text\" name=\"jumlah\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>    \n");
      out.write("                        <td><input type=\"submit\" name=\"submit\" Value=\"Add\"/></td>\n");
      out.write("                        <td><input type=\"reset\"  Value=\"Reset\"/></td>\n");
      out.write("                        <td><a href=\"home.jsp\">Exit</a></td>\n");
      out.write("                    </tr>    \n");
      out.write("                 </table>   \n");
      out.write("            </form> \n");
      out.write("                \n");
      out.write("        </center>\n");
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
