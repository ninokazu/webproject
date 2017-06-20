<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page import="brd.Board"%>
<%@page import="brd.BoardFn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	
	BoardFn bfn = new BoardFn();
	List<Board> list = new ArrayList<Board>();
	list = bfn.searchbd(keyField, keyWord);
	
	out.print(list.toString());
	session.removeAttribute("list");
	session.setAttribute("list", list);
	
	response.sendRedirect("listboard.jsp?keyWord="+keyWord);
	

%>