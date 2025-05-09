<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Details</title>
</head>
<body>
    <h2>Processed User Data</h2>
    <p><b>Name:</b> <%= request.getAttribute("userName") %></p>
    <p><b>Email:</b> <%= request.getAttribute("userEmail") %></p>
    <br>
    <a href="form.jsp">Go Back</a>
</body>
</html>