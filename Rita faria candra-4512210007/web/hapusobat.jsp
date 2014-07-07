<%-- 
    Document   : hapusproduk
    Created on : Jul 4, 2014, 5:19:45 AM
    Author     : Rita Faria Candra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<script language="JavaScript">
    function berhasil() {
        alert("berhasil di hapus!!!");
    }
    
</script>

<%
    String kode = request.getParameter("kode_obat");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("DELETE FROM `pemasukan_obat` WHERE kode_obat='"+kode+"'");
    if (i > 0) {
        out.write("<script type='text/javascript'>\n");
        out.write("alert(' Berhasil dihapus!!! ');\n");
        out.write("setTimeout(function(){window.location.href='master_obat.jsp'},1000);");
        out.write("</script>\n");
    } else {
        out.print("GAGAL");
    }
%>
