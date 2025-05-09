<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
</head>
<body>
    <h2>Welcome, <%= request.getAttribute("user") %>! You have successfully logged in.</h2>
</body>
</html>
