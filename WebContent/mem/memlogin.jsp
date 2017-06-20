<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="mem" class="mem.Member" />
<jsp:useBean id="memFn" class="mem.MemberFn" />

<jsp:setProperty property="id" name="mem" />
<jsp:setProperty property="passwd" name="mem" />

<%
	if (memFn.memLogin(mem)) {
		session.setAttribute("mem", memFn.memSelect(request.getParameter("id")));
		response.sendRedirect("../brd/listboard.jsp");
	} else {
		response.sendRedirect("../main/main.jsp");
	}
%>