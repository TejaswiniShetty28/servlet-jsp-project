<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response Page</title>
</head>
<body>
    <h2>Hello, <%= request.getAttribute("name") %>!</h2>
    <p>Welcome to JSP and Servlets.</p>
</body>
</html>