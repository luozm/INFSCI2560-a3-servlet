<%-- 
    Document   : signup
    Created on : 2018-11-3, 19:13:01
    Author     : Zhimeng Luo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <title>Sign Up</title>
    </head>
    <body>
        <h2>Sign Up</h2>
        <span style="color: red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
        <form method = "post" action="RegController" id="loginfrm">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="name" id="username" required autofocus /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" id="password" required /></td>
                    </tr>
                    <tr>
                        <td>Re-enter Password</td>
                        <td><input type="password" name="password2" id="password2" required /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" name="Submit" value="Submit" id="submit" />
                            <button><a href="index.jsp" class="signup">Return</a></button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>

    </body>
</html>