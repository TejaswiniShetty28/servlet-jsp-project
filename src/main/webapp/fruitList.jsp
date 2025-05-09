<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruits List</title>
</head>
<body>
	<%
	String[] fruits = {"Apple", "Banana", "Mango", "Strawberry"};
	for (int i = 0; i < fruits.length; i++) {
		out.println((i + 1) + " " + fruits[i] + "<br>");
		System.out.println((i + 1) + " " + fruits[i] + "<br>");
	}
	%>
	<%
	fruits = new String[]{"Apple", "Banana", "Mango", "Strawberry"};
	for (int i = 0; i < fruits.length; i++) {
		%>
		Fruit Name is <%=fruits[i] %> <br>
		<% 
	}
	%>
</body>
</html>