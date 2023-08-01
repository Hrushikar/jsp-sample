<%-- 
    Document   : details
    Created on : Oct 11, 2020, 8:39:45 PM
    Author     : Hrushikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--<link href="stiles.css" rel="stylesheet"/>-->
        <style><%@include file="stiles.css"%></style>
    </head>
    <body>
        <h1>Hello World!</h1><br/><br/><br/><br/>
        <h2>Details:</h2><br/><br/>
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "<<redacted>>", "<<redacted>>");
            Statement stmt  = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student");
            while(rs.next()){%>
            <p><% out.println(rs.getString(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+"<br/>"); %></p>
            <%}
        %>
    </body>
</html>
