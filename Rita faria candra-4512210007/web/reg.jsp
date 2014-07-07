<%-- 
    Document   : reg
    Created on : Jul 3, 2014, 5:37:02 AM
    Author     : Rita Faria Candra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body style="background-image:  url('images/Background.png'); background-repeat: no-repeat">
        <center><form style="background-image:url(images/bc.jpg); background-repeat: no-repeat; background-position: center; width: 40%; height: 40%" method="post" action="registration.jsp">
            
            <table >
                
                <h2>Daftar</h2>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Silakan <a href="index.jsp">Login</a></td>
                    </tr>
               </table>
            
        </form></center>
    </body>
</html>
