<%-- 
    Document   : dokter
    Created on : Jul 4, 2014, 12:02:58 AM
    Author     : Rita Faria Candra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
     <body style="background-image:  url('images/Background.png'); background-repeat: no-repeat">
        <center> <form style="background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 60%">
     
        <h2>Obat sesuai resep dokter</h2>
                <table border = 1>
                    <tr>
                        <th>Nama Pasien</th>
                        <th>Nama Dokter</th>
                        <th>Obat</th>
                        <th>Tanggal</th>
                        <th>Jumlah</th>
                        <th>Aksi</th>
                    </tr>
            </form>
                    </center>
            <%
                String nama_pasien = request.getParameter("nama_pasien");
                String nama_dokter = request.getParameter("nama_dokter");
                String nama_obat = request.getParameter("nama_obat");
                String tanggal = request.getParameter("tanggal");
                String jumlah = request.getParameter("jumlah");
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
                Statement st = con.createStatement();
                //ResultSet rs;
                int i = st.executeUpdate("insert into resep(nama_pasien, nama_dokter, nama_obat, tanggal, jumlah) values ('"+nama_pasien+"','"+nama_dokter+"','"+nama_obat+"','"+tanggal+"','"+jumlah+"')");
                if (i > 0) {
                            Class.forName("com.mysql.jdbc.Driver");
                            ResultSet rs;
                            rs = st.executeQuery("select * from resep");
                            while(rs.next()) {
                                String nam_pas = rs.getString("nama_pasien");
                                String nam_dok = rs.getString("nama_dokter");
                                String nama = rs.getString("nama_obat");
                                String tgl = rs.getString("tanggal");
                                Integer jum = rs.getInt("jumlah");
                              

                                out.print("<tr>");
                                out.print("<th>"+nam_pas+"</th>");
                                out.print("<th>"+nam_dok+"</th>");
                                out.print("<th>"+nama+"</th>");
                                out.print("<th>"+tgl+"</th>");
                                out.print("<th>"+jum+"</th>");
                                out.print("<th><a href='#.jsp'>Edit|</a>");
                                out.print("<a href='#.jsp'>Delete</a></th>");
                                out.print("</tr>");
                        }
                } else {
                    response.sendRedirect("index.jsp");
                }
            %>
            </table>         
                <a href="home.jsp">Exit</a>
    </body>
</html>

