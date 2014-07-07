<%-- 
    Document   : editobat
    Created on : Jul 4, 2014, 5:21:25 AM
    Author     : Rita Faria Candra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String tgl_mas     = request.getParameter("tgl_masuk");
    String tgl_kad = request.getParameter("tgl_kadaluarsa");
    String kode   = request.getParameter("kode_obat");
    String nama    = request.getParameter("nama_obat");
    String har    = request.getParameter("harga");
    String jen    = request.getParameter("jenis");
    String sta    = request.getParameter("status");
    String jum    = request.getParameter("jumlah");

    out.print("<h2>Daftar obat</h2>");
    out.print("<form action='prosesedit.jsp' method='post'>");
    out.print("<p>");
    out.print("<label>ID Produk</label>");
    out.print("<input type='hidden' name='tgl_masuk' value="+tgl_mas+">");
    out.print("<input type='text' name='tgl_kadaluarsa' value="+tgl_kad+">");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Kode</label>");
    out.print("<input type='text' name='kode_obat' value='"+kode+"'>");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Harga</label>");
    out.print("<input type='number' name='harga' value='"+har+"'>");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Jenis</label>");
    out.print("<input type='text' name='jenis' value='"+jen+"'>");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Status</label>");
    out.print("<input type='text' name='status' value='"+sta+"'>");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Jumlah</label>");
    out.print("<input type='number' name='jumlah' value='"+jum+"'>");
    out.print("</p>");
    out.print("<input type='submit' name='submit' Value='Add'/>");
    out.print("<input type='submit' name='submit' Value='Edit'/>");
    out.print("<input type='submit' name='submit' Value='Delete'/>");
    out.print("</form>");
    out.print("<a href='home.jsp'>Exit</a>");
%>
