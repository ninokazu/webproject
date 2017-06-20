<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="MemberFn" class="mem.MemberFn" />
<% request.setCharacterEncoding("UTF-8"); %>
<% String id = request.getParameter("id"); %>
<% boolean b = MemberFn.checkId(id); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 아이디 중복 체크 </title>
</head>
<body>
<b><%= id %></b>
<%
	if(b){
%>
		는(은) 이미 사용중인 id 입니다<p/>
		<a href="#" onclick="opener.document.join.id.focus(); window.close();"> 닫기 </a>
	
<% }else{ %>
		는(은) 사용가능 한 id 입니다 <p/>
		<a href="#" onclick="opener.document.join.id.focus(); window.close();"> 닫기</a>
<% } %>

</body>
</html>