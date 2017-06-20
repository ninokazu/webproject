<%@page import="mem.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  	 
   	 if(session.getAttribute("mem")==null){
    	response.sendRedirect("../main/main.jsp");
    }else{
    	Member mem = (Member) session.getAttribute("mem"); 
    	String name = mem.getName();
    %>
	<%=name%>님 환영합니다.&nbsp;&nbsp; 
	
	<a href="../mem/updateform.jsp"><button style="background-color:#ffdddd;">프로필 수정</button></a>&nbsp;&nbsp;&nbsp;
	<a href="../mem/memlogout.jsp"><button style="background-color:#ffdddd;">로그아웃</button></a>
	
	<%} %>