<%-- 
    Document   : obat
    Created on : Jul 3, 2014, 7:38:16 PM
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
                        <th>Tanggal</th>
                        <th>Obat</th>
                        <th>Jumlah</th>
                        <th>Aksi</th>
                    </tr>
            </form>
                    </center>
            <%
                String tanggal = request.getParameter("tanggal");
                String nama_obat = request.getParameter("nama_obat");
                String jumlah = request.getParameter("jumlah");
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/p2","root", "");
                Statement st = con.createStatement();
                //ResultSet rs;
                int i = st.executeUpdate("insert into tanpa_resep(tanggal, nama_obat, jumlah) values ('"+tanggal+"','"+nama_obat+"','"+jumlah+"')");
                if (i > 0) {
                            Class.forName("com.mysql.jdbc.Driver");
                            ResultSet rs;
                            rs = st.executeQuery("select * from tanpa_resep");
                            while(rs.next()) {
                                String tgl = rs.getString("tanggal");
                                String nama = rs.getString("nama_obat");
                                Integer jum = rs.getInt("jumlah");
                              

                                out.print("<tr>");
                                out.print("<th>"+tgl+"</th>");
                                out.print("<th>"+nama+"</th>");
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


