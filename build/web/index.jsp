<%-- 
    Document   : index
    Created on : 2018-11-2, 19:13:01
    Author     : Zhimeng Luo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <title>Sign In</title>
        <jsp:useBean id="ub" class="mbs.myBean" scope="session" />
    </head>
    <body>
        <h3>Status: <jsp:getProperty name="ub" property="status" /></h3>
        <h2>Login</h2>
        <form method = "post" action="LoginController" id="loginfrm">
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
                        <td></td>
                        <td>
                            <input type="submit" name="Login" value="Login" id="submit" />
                            <button><a href="signup.jsp" class="signup">Sign Up</a></button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>

    </body>
</html>
