<%@page import="brd.BoardFn"%>
<%@page import="brd.Board"%>
<%@page import="mem.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%
	String number = request.getParameter("num");
	int num = Integer.parseInt(number);
	BoardFn bfn = new BoardFn();
	bfn.hitUp(num);
	Board bd = bfn.getBoard(num);
	Member mem = (Member) session.getAttribute("mem");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/topline.css">
</head>
<body>
<div id="top">
	<jsp:include page="../main/topline.jsp"></jsp:include>
</div><br><br>
<form action="modifycheck.jsp" method="post">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="id" value="<%=bd.getId()%>">

	<table align="center">
		<tr>
			<td>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr style="background-color: gray; text-align: center;">
						<td width="5"></td>
						<td>수 정</td>
						<td width="5"></td>
					</tr>
				</table>

				<table width="800">
					
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">이름</td>
						<td width="750"><%=bd.getId()%></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>

					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">제목</td>
						<td width="750">
							<textarea name="title" rows="1" cols="50"><%=bd.getTitle() %></textarea> 
						</td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>

					<tr>
						<td width="0">&nbsp;</td>
						<td width="750" colspan="2" height="200">
							<textarea name="content" rows="12" cols="110"><%=bd.getContent() %></textarea>
						</td>
					</tr>

					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>

					<tr height="1" bgcolor="#be69de">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr>
						<td>
							<input type="submit" value="수정"> 
						</td>
					</tr>
					
				</table>
			</td>
		</tr>
	</table>
	</form>

						<a href="boardview.jsp?num=<%=num%>"><button>취소</button></a>
							<a href="deleteboard.jsp?num=<%=num%>"><button>삭제</button></a> 
				
</body>
</html>