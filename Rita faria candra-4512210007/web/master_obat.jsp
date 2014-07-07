<%-- 
    Document   : master_obat
    Created on : Jul 3, 2014, 12:24:15 PM
    Author     : Rita Faria Candra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body style="background-image:  url('images/Background.png'); background-repeat: no-repeat">
    <body><center>
        
            <form style="background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 40%" action="master.jsp" method="post">
                Halo <%=session.getAttribute("userid")%>
                <a href='logout.jsp'>Keluar</a>
                <h2>Daftar Produk</h2>
                <table>
                    <tr>
                        <td>Tanggal masuk</td>
                        <td> :<input type="text" name="tgl_masuk"/></td>
                    </tr>
                    <tr>
                        <td>Tanggal kadaluarsa</td>
                        <td> :<input type="text" name="tgl_kadaluarsa"/></td>
                    </tr>
                    <tr>
                        <td>Kode </td>
                        <td>:<input type="text" name="kode_obat"/></td>
                    </tr>
                    <tr>
                        <td>Nama </td>
                        <td>:<input type="text" name="nama_obat"/></td>
                    </tr>
                    <tr>
                        <td>Harga</td> 
                        <td>:<input type="text" name="harga"/></td>
                    </tr>
                    <tr>
                        <td>Jenis </td>
                        <td>:<input type="text" name="jenis"/></td>
                    </tr>
                    <tr>
                        <td>Status </td>
                        <td>:<input type="text" name="status"/></td>
                    </tr>
                    <tr>
                        <td>Jumlah</td> 
                        <td>:<input type="text" name="jumlah"/></td>
                    </tr>
                    <tr>    
                        <td><input type="submit" name="submit" Value="Add"/></td>
                        <td><input type="reset"  Value="Reset"/></td>
                        <td><a href="home.jsp">Exit</a></td>
                    </tr>    
                 </table>   
            </form> 
                
        </center>
    </body>
</html>
