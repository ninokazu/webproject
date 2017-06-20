<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 정보 수정 </title>
</head>
<body>
	
	<jsp:useBean id="mem" class="mem.Member" scope="page" />
	<jsp:useBean id="memdb" class="mem.MemberFn" scope="page" />
	
	<%
		request.setCharacterEncoding("UTF-8");
		String mob = request.getParameter("mobile")+"-"+request.getParameter("mobile_1")+"-"+request.getParameter("mobile_2");
		String em = request.getParameter("emailfirst")+"@"+request.getParameter("emailsecond");
	%>
	
		<jsp:setProperty property="id" name="mem"/>
		<jsp:setProperty property="name" name="mem"/>
		<jsp:setProperty property="passwd" name="mem"/>
		<jsp:setProperty property="gender" name="mem"/>
		<jsp:setProperty property="birth" name="mem"/>
	
	<%
		mem.setEmail(em);
		mem.setMobile(mob);
		memdb.updatejoin(mem);
		session.removeAttribute("mem");
		session.setAttribute("mem", mem);
		response.sendRedirect("../brd/listboard.jsp"); 
	%>
	

</body>
</html>