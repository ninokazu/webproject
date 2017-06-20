<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    if(session.getAttribute("mem")==null){
		response.sendRedirect("../main/unuse.jsp");
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 : 게시 목록 표시</title>
</head>
<link rel="stylesheet" type="text/css" href="../css/topline.css">
<body>
<div id="top">
	<jsp:include page="../main/topline.jsp"></jsp:include>
</div><br><br>
<hr size="5" width="90%" color="#ffdddd"><br>
	<center>
		<%@ page import="java.util.ArrayList, brd.Board, java.text.SimpleDateFormat" %>
			<jsp:useBean id="brddb" class="brd.BoardFn" scope="page"/>
		<%
		List<Board> list = brddb.getBoardList();
		String key = request.getParameter("keyWord");
		if(key!=null){
			if(!key.equals("")){
				list=(List<Board>)session.getAttribute("list");
			}
		}
			int counter = list.size();
			int row = 0;
			
			if (counter > 0) {
		%>
		<table width=800 border="3" cellpadding=1 cellspacing=3>
			<tr style="font-size: 15pt; font-style: normal; background-color: lightyellow;">
				<th><font><b>번호</b></font></th>
				<th><font><b>제목</b></font></th>
				<th><font><b>작성자</b></font></th>
				<th><font><b>작성일</b></font></th>
				<th><font><b>조회</b></font></th>
			</tr>
		<%
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (Board brd : list) {
				String color = "rgba(255,221,221,0.8)";
				if(++row % 2 == 0) color = "rgba(100,130,210,0.2)";
		%>
		<tr style="background-color:<%=color%>"
			onmouseover="this.style.backgroundColor='SkyBlue'"
			onmouseout="this.style.backgroundColor='<%=color %>'">
			
			<td align="center"><%=brd.getNum() %></td>
			<td align="left">
				<a href="boardview.jsp?num=<%=brd.getNum()%>"><%=brd.getTitle() %></a>
			</td>
			<td align="center"><%=brd.getId() %></td>
			<td align="center"><%=df.format(brd.getRegdate()) %></td>
			<td align="center"><%=brd.getHit() %></td>
		</tr>
		<%
			}
		%>
		</table>
		<%
			}
		%>
		
		<br>
			<form action="boardsearch.jsp" method="post">
				<input type="hidden" name="searchflag" value="true">
				<select name="keyField" style="border-style: double; vertical-align: bottom">
					<option value="title">글제목</option>
					<option value="content">글내용</option>
					<option value="id">작성자</option>
				</select>
				
				<input type="text" name="keyWord" style="border-style:double; vertical-align: bottom;">
				<input type="submit" style="border-radius: 15px; vertical-align: bottom;"  value="검색">
			</form>
	
		<br>
		<hr width="90%" size="2" color="silver">
		<p><font style="font-style: italic; font-size: 12pt;" ><b>조회된 게시판 목록 수가 <%=counter %>개 입니다.</b></font>
	</center><hr>
	<center>
		<a href="editboard.jsp"><button style="background-color: #ffdddd; border-radius: 15px;">게시물 등록</button></a>
	</center>
</body>
</html>