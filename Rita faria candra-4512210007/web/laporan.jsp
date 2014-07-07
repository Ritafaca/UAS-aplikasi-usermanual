<%-- 
    Document   : laporan
    Created on : Jul 4, 2014, 1:04:52 AM
    Author     : Rita Faria Candra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
    </head>
    
    <body style="background-image:url('images/Background.png'); background-repeat: no-repeat "><center>
        <form style="background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 60%">
        Halo <%=session.getAttribute("userid")%>
        <a href='logout.jsp'>Keluar</a><br>
            <table>
                <tr>
                Jenis laporan
                <select>
                    <option>Obat tersedia</option>
                    <option>Dengan resep</option>
                    <option>Tanpa resep</option>
                    <option>Kadaluarsa</option>
                <select>
                </tr>
                <tr>
                    <br>
                    <td>Dari tanggal</td>
                    <td><input type="date" ></td>
                </tr>    
                <tr>
                    <br>
                    <td>Sampai tanggal</td>
                    <td><input type="date" ></td>
                </tr> 
                <tr>
                    <br>
                    <td><input type="submit" value="search" ></td>
                    <td><a href="home.jsp">Exit</a></td>
                </tr>
            </table>
        </form>    
        
    </center>
</body>
</html>