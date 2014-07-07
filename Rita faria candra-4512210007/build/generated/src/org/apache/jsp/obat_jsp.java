package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class obat_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Obat</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div><h2>Persediaan barang</h2>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Kode</th>\n");
      out.write("                        <th>Nama</th>\n");
      out.write("                        <th>Harga</th>\n");
      out.write("                        <th>edit</th>\n");
      out.write("                    </tr>\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select kode_obat, nama_obat, harga from pemasukan_obat where 1");
                while(rs.next()) {
                     
                               
                                String kode = rs.getString("kode_obat");
                                String nama = rs.getString("nama_obat");
                                Integer har = rs.getInt("harga");
                               

                    out.print("<tr>");
                    out.print("<th>"+kode+"</th>");
                    out.print("<th>"+nama+"</th>");
                    out.print("<th>"+har+"</th>");
                    //out.print("<th><a href='hapusproduk.jsp?action=hapus&id="+kode+"'><input type='submit' name='submit' Value='Delete'></a><a href='editproduk.jsp?action=edit&id="+kode+"&id_prod="+kode+"&nama="+nama+"&harga="+har+"'><input type='submit' name='submit' Value='Edit'></a></th>");
                    out.print("</tr>");
                }
            
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
