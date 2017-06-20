<%@page import="brd.BoardFn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String number = request.getParameter("num");
    	int num = Integer.parseInt(number);
    	BoardFn bfn = new BoardFn();
    	bfn.deleteDB(num);
    	response.sendRedirect("listboard.jsp");
    %>
