<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<body>

    <h2>Form Submitted Successfully!</h2>

    <p>Name: <%= request.getAttribute("name") %></p>
    <p>Email: <%= request.getAttribute("email") %></p>

    <a href="form1.jsp">Go Back</a>
</body>
</html>