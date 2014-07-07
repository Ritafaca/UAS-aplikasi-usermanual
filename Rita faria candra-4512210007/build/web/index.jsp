<%-- 
    Document   : index
    Created on : Jul 3, 2014, 5:35:54 AM
    Author     : Rita Faria Candra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body style="background-image:  url('images/Background.png'); background-repeat: no-repeat">
        <center>
        <form style="width: 40%; height: 30%; float:right" method="post" action="login.jsp">
            
            
                
                 <h2 style="font-family: chiller; font-size: 60px; color: purple">Login</h2>
                        <center><img src="images/us.png" style="width:10%; height:10%"> : <input type="text" name="uname" value="username" /><br><br>
                        <img src="images/pas.png" style="width:10%; height:10%"> : <input type="password" name="pass" value="password" /><br> <br>                
                        <input type="submit" value="Login" />
                        <input type="reset" value="Reset" /><br><br><br></center>
                    
                        Silakan <a href="reg.jsp">Daftar</a>
                
           
            
        </form>
        </center>
    </body>
</html>
