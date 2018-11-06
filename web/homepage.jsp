<%-- 
    Document   : homepage
    Created on : 2018-11-2, 20:13:01
    Author     : Zhimeng Luo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <title>Home Page</title>
        <jsp:useBean id="ub" class="mbs.myBean" scope="session" />
    </head>
    <body>
        <h2>Welcome
        <jsp:getProperty name="ub" property="name" />
        </h2>
        <p>Your login status is
        <jsp:getProperty name="ub" property="status" />
        </p>
        <button><a href="LogoutController" class="signup">Log Out</a></button>
    </body>
</html>
