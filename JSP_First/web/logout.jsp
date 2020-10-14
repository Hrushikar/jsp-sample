<%-- 
    Document   : logout
    Created on : Oct 12, 2020, 9:10:30 PM
    Author     : Hrushikar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
    session =request.getSession();
    response.sendRedirect("index.html");
    %>
