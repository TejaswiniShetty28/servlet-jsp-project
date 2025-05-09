<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Processing Request</h2>
    <% 
        String name = request.getParameter("name");  
        String email = request.getParameter("email"); 
        session.setAttribute("userName", name);
        Integer visitorCount = (Integer) application.getAttribute("visitorCount");
        if (visitorCount == null) {
            visitorCount = 1;  
        } else {
            visitorCount++;
        }
        application.setAttribute("visitorCount", visitorCount);
    %>
    <p><b>Welcome, <%= name %>!</b></p>
    <p>Your email is: <%= email %></p>
    <p><b>Session ID:</b> <%= session.getId() %></p>
    <p><b>Total Visitors:</b> <%= visitorCount %></p>
    <p><b>Server Info:</b> <%= application.getServerInfo() %></p>
</body>
</html>
