<%@page import="brd.BoardFn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	BoardFn bfn = new BoardFn();
%>
	<jsp:useBean id="brd" class="brd.Board" scope="page"/>
	<jsp:setProperty property="title" name="brd"/>
	<jsp:setProperty property="content" name="brd"/>
	<jsp:setProperty property="num" name="brd"/>
	<jsp:setProperty property="id" name="brd"/>
	
	<%
		String num = request.getParameter("num");
		out.print(brd.toString());
		bfn.updateBoard(brd);
		
			response.sendRedirect("boardview.jsp?num="+num);
	%>
