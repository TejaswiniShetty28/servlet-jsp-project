<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String indexStr = request.getParameter("index");
		int index = 1;
		try {
			index = Integer.parseInt(indexStr);
		} catch(Exception e) {}
		if (index <= 0 ) index = 1;
		int max = 5;
		int previous = index == 1 ? max : index - 1;
		int next = index == max ? 1 : index + 1;
    %>
    <h1> <%= index  %>!</h1>
    <a href="page.jsp?index=<%=previous%>">← Previous Page</a> | 
    <a href="page.jsp?index=<%=next%>">Next Page →</a>
</body>
</html>