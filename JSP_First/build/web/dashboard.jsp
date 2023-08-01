<%-- 
    Document   : dashboard
    Created on : Oct 12, 2020, 9:10:59 PM
    Author     : Hrushikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <style><%@include file="stiles.css"%></style>
    </head>
    <body class="b1">
        <%
    session = request.getSession(false);
    if(session.getAttribute("userName")!=null){
        Connection con = null;
        PreparedStatement ps;
        ResultSet rs;
        String query;
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "<<redacted>>", "<<redacted>>");
        }
        catch(Exception e){
            System.out.println(e);
        }
        try{
            %><p><span><%out.println("Hello!!!");%></span></p><%
            con = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "<<redacted>>", "<<redacted>>");
            query = "SELECT * from users where Username=?";
            ps = con.prepareStatement(query);
            ps.setString(1,session.getAttribute("userName").toString());
            rs = ps.executeQuery();
            if(rs.next()){
                %><p><span><%out.println("Welcome, "+rs.getString("Username")+"!!!");%></span></p><%
                %><p><span><%out.println("Session created for you...<br/><br/>");%></span></p><%
                // creating logout button
                out.println("<div class=\"forms\"><form action=\"logout.jsp\" method=\"post\">");
                out.println("<input type=\"submit\" name=\"logout\" value=\"Logout\">");
                out.println("</form></div>");
            }
        }
        catch(Exception excp){
            System.out.println(excp);
        }
        
    }
    
    if("POST".equalsIgnoreCase(request.getMethod())){
        if(request.getParameter("login")!=null){
            if(request.getParameter("login").equals("Login")){
                String username = request.getParameter("username").toString();
                String password = request.getParameter("password").toString();
                Connection conn = null;
                PreparedStatement ps;
                ResultSet rs;
                String query;
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    //conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "<<redacted>>", "<<redacted>>");
//                }
//                catch(Exception e){
//                    System.out.println(e);
//                }
//                try{
                    %><p><%out.println("Hello");%></p><%
                    conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "<<redacted>>", "<<redacted>>");
                    query = "SELECT * FROM users where Username=? and Password=?";
                    ps = conn.prepareStatement(query);
                    ps.setString(1,username);
                    ps.setString(2, password);
                    rs = ps.executeQuery();
                    if(rs.next()){
                        // Login Successfull
                        // Created Session
                        
                        session = request.getSession();
                        session.setAttribute("userName", username);
                        
                        
                        response.sendRedirect("dashboard.jsp");
                    }
                }catch(Exception e){
                    System.out.println(e);
                }
            }
        }
    }
%>
    </body>
</html>
