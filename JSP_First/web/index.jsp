<%-- 
    Document   : index
    Created on : Oct 12, 2020, 9:51:24 PM
    Author     : Hrushikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style><%@include file="stiles.css"%></style>
    </head>
    <body class="b1">
        <div class="login-page">
        <div class="form">
            <form action="dashboard.jsp" method="post">
                <p>Enter your details:</p><br/><br/>
                <p>User Name: </p><input type="text" name="username" placeholder="User Name" required/><br/>
                <p>Password: </p><input type="password" name="password" placeholder="Password" required/><br/><br/><br/>
                <input id="loginButton" type="submit" value="Login" name="login"/>
            </form>
        </div>
        </div>
    </body>
</html>
