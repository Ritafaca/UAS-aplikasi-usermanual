<%-- 
    Document   : prosesedit
    Created on : Jul 4, 2014, 5:37:42 AM
    Author     : Rita Faria Candra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String tgl_masuk     = request.getParameter("tgl_masuk");
    String tgl_kadaluarsa = request.getParameter("tgl_kadaluarsa");
    String kode_obat   = request.getParameter("kode_obat");
    String nama_obat    = request.getParameter("nama_obat");
    String harga    = request.getParameter("harga");
    String jenis    = request.getParameter("jenis");
    String status    = request.getParameter("status");
    String jumlah    = request.getParameter("jumlah");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("UPDATE `pemasukan_obat` SET `tgl_masuk`='"+tgl_masuk+"',`tgl_kadaluarsa`='"+tgl_kadaluarsa+"',`kode_obat`='"+kode_obat+"',`nama_obat`='"+nama_obat+"',`harga`='"+harga+"',`jenis`='"+jenis+"',`status`='"+status+"',`jumlah`='"+jumlah+"' WHERE kode_obat='"+kode_obat+"'");
    if (i > 0) {
        out.print("berhaSIL");
    } else {
        out.print("GAGAL");
    }
%>
