<%-- 
    Document   : hapus
    Created on : Jul 3, 2014, 7:47:49 PM
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
    String id = request.getParameter("kode");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("DELETE FROM `pemasukan_obat` WHERE kode_obat='"+kode+"'");
    if (i > 0) {
        out.write("<script type='text/javascript'>\n");
        out.write("alert(' Berhasil dihapus!!! ');\n");
        out.write("setTimeout(function(){window.location.href='tampil.jsp'},1000);");
        out.write("</script>\n");
    } else {
        out.print("GAGAL");
    }
%>

