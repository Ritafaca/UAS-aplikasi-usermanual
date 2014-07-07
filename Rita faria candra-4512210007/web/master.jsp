<%-- 
    Document   : master
    Created on : Jul 3, 2014, 1:05:53 PM
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
        <center> <form style="background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 50%; height: 60%">
     
        <h2>Daftar produk</h2>
                <table border = 1>
                    <tr>
                        <th>Tanggal masuk</th>
                        <th>Tanggal kadaluarsa</th>
                        <th>Kode</th>
                        <th>Nama</th>
                        <th>Harga</th>
                        <th>Jenis</th>
                        <th>Status</th>
                        <th>Jumlah</th>
                        <th>Aksi</th>
                    </tr>
            </form>
                    </center>
            <%
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
                                out.print("<th><a href='#.jsp'>Edit|</a>");
                                out.print("<a href='#.jsp'>Delete</a></th>");
                                //out.print("<th><a href='hapusobat.jsp?action=hapus&kode="+kode+"'><input type='submit' name='submit' Value='Delete'></a><a href='editobat.jsp?action=edit&tgl_masuk="+tgl_mas+"&tgl_kadaluarsa="+tgl_kad+"&kode_obat="+kode+"&nama_obat="+nama+"&harga="+har+"&jenis="+jen+"&status="+sta+"&jumlah="+jum+"'><input type='submit' name='submit' Value='Edit'></a></th>");
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

