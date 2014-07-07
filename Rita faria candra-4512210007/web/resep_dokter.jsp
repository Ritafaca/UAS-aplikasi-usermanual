<%-- 
    Document   : resep_dokter
    Created on : Jul 4, 2014, 12:01:28 AM
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
        
            <form style="background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 40%" action="dokter.jsp" method="post">
                Halo <%=session.getAttribute("userid")%>
                <a href='logout.jsp'>Keluar</a>
                <h2>Obat sesuai resep dokter</h2>
                <table>
                    <tr>
                        <td>Nama Pasien</td>
                        <td> :<input type="text" name="nama_pasien"/></td>
                    </tr>
                    <tr>
                        <td>Nama Dokter</td>
                        <td> :<input type="text" name="nama_dokter"/></td>
                    </tr>
                    <tr>
                        <td>Tanggal </td>
                        <td>:<input type="date" name="tanggal"/></td>
                    </tr>
                    <tr>
                        <td>Nama obat </td>
                        <td>:<input type="text" name="nama_obat"/></td>
                    </tr>
                    <tr>
                        <td>Jumlah</td> 
                        <td>:<input type="number" name="jumlah"/></td>
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

