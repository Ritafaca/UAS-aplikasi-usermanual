<%-- 
    Document   : success
    Created on : Jul 3, 2014, 5:39:31 AM
    Author     : Rita Faria Candra
--%>
<html>
   <body style="background-image:  url('images/Background.png'); background-repeat: no-repeat"><center>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
Anda belum masuk,<br/>
<a href="index.jsp">silakan Login</a>
<%} else {
%>
Selamat datang <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Keluar</a>
<%
    }
%>
<br>Silakan menuju <a href="home.jsp">Home</a>
          </center></body>
</html>>