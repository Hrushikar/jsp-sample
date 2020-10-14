<%-- 
    Document   : myjsp
    Created on : Oct 9, 2020, 10:02:17 PM
    Author     : Hrushikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        int count = 1;
        %>
    <body>
        <h1>Hello World!</h1>
    </body>
    <%
        out.println("Name: "+request.getParameter("name"));
        out.println("<br/>");
        out.println("Age: "+request.getParameter("age"));
        //out.println("<br/>");
        out.println("<br/>Count:<br/>");
        for(int i=0;i<5;i++){
            out.println(++count);
        }
        %>
</html>
