<%-- 
    Document   : logout
    Created on : Jul 3, 2014, 5:39:55 AM
    Author     : Rita Faria Candra
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
