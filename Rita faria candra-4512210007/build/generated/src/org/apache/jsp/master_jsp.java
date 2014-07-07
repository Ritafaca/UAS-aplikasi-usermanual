package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class master_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("     <body style=\"background-image:  url('images/Background.png'); background-repeat: no-repeat\">\n");
      out.write("        <center> <form style=\"background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 60%\">\n");
      out.write("     \n");
      out.write("        <h2>Daftar produk</h2>\n");
      out.write("                <table border = 1>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Tanggal masuk</th>\n");
      out.write("                        <th>Tanggal kadaluarsa</th>\n");
      out.write("                        <th>Kode</th>\n");
      out.write("                        <th>Nama</th>\n");
      out.write("                        <th>Harga</th>\n");
      out.write("                        <th>Jenis</th>\n");
      out.write("                        <th>Status</th>\n");
      out.write("                        <th>Jumlah</th>\n");
      out.write("                        <th>Aksi</th>\n");
      out.write("                    </tr>\n");
      out.write("            </form>\n");
      out.write("                    </center>\n");
      out.write("            ");

                String tgl_masuk = request.getParameter("tgl_masuk");
                String tgl_kadaluarsa = request.getParameter("tgl_kadaluarsa");
                String kode_obat = request.getParameter("kode_obat");
                String nama_obat = request.getParameter("nama_obat");
                String harga = request.getParameter("harga");
                String jenis = request.getParameter("jenis");
                String status = request.getParameter("status");
                String jumlah = request.getParameter("jumlah");
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
                Statement st = con.createStatement();
                //ResultSet rs;
                int i = st.executeUpdate("insert into pemasukan_obat(tgl_masuk, tgl_kadaluarsa, kode_obat, nama_obat, harga, jenis, status, jumlah) values ('"+tgl_masuk+"','"+tgl_kadaluarsa+"','"+kode_obat+"','"+nama_obat+"','"+harga+"','"+jenis+"','"+status+"','"+jumlah+"')");
                if (i > 0) {
                            Class.forName("com.mysql.jdbc.Driver");
                            ResultSet rs;
                            rs = st.executeQuery("select * from pemasukan_obat");
                            while(rs.next()) {
                                String tgl_mas = rs.getString("tgl_masuk");
                                String tgl_kad = rs.getString("tgl_kadaluarsa");
                                String kode = rs.getString("kode_obat");
                                String nama = rs.getString("nama_obat");
                                Integer har = rs.getInt("harga");
                                String jen = rs.getString("jenis");
                                String sta = rs.getString("status");
                                Integer jum = rs.getInt("jumlah");

                                out.print("<tr>");
                                out.print("<th>"+tgl_mas+"</th>");
                                out.print("<th>"+tgl_kad+"</th>");
                                out.print("<th>"+kode+"</th>");
                                out.print("<th>"+nama+"</th>");
                                out.print("<th>"+har+"</th>");
                                out.print("<th>"+jen+"</th>");
                                out.print("<th>"+sta+"</th>");
                                out.print("<th>"+jum+"</th>");
                                out.println("<A HREF=\"index.html\">Edit</A>");
                                out.println("<A HREF=\"index.html\">Delete</A>");
                               //out.println("<td><a href="login.jsp">Edit</a></td>");
                                //out.println("<tr><td><a href=\"VenueServlet?action=edit&userId="+getkode()+"\">Edit</a></td></tr>");
                                //out.println("<tr><td><a href=\"VenueServlet?action=edit&userId="+v.getId()+"\">Delete</a></td></tr>");
                                out.print("</tr>");
                        }
                } else {
                    response.sendRedirect("index.jsp");
                }
            
      out.write("\n");
      out.write("            </table>         \n");
      out.write("                <a href=\"home.jsp\"><input type=\"submit\" name=\"submit\" Value=\"Exit\" ></a>\n");
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
