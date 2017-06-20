<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정삭제</title>
</head>
<body>
	
	<jsp:useBean id="memdb" class="mem.MemberFn" scope="page" />
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
	%>
	
	<%
		memdb.joindelete(id);
		response.sendRedirect("../main/main.jsp");
	%>
</body> 
</html>