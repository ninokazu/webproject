<%@page import="mem.Member"%>
<%@page import="brd.Board"%>
<%@page import="brd.BoardFn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 : 내용 보기</title>
<link rel="stylesheet" type="text/css" href="../css/topline.css">
<%
	String number = request.getParameter("num");
	int num = Integer.parseInt(number);
	BoardFn bfn = new BoardFn();
	bfn.hitUp(num);
	Board bd = bfn.getBoard(num);
	Member mem = null;
	if(session.getAttribute("mem")==null){
		response.sendRedirect("../main/unuse.jsp");
	}else{
		mem = (Member)session.getAttribute("mem");
	}
%>
</head>
<body>
<div id="top">
	<jsp:include page="../main/topline.jsp"></jsp:include>
</div><br><br>
	<table align="center">
		<tr>
			<td>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr style="background-color:gray; text-align:center;">
						<td width="5"></td>
						<td>내  용</td>
						<td width="5"></td>
					</tr>
				</table>
				
				<table width="800">
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">글번호</td>
						<td width="750"><%= bd.getNum() %></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">조회수</td>
						<td width="750"><%= bd.getHit() %></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">이름</td>
						<td width="750"><%= bd.getId() %></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">작성일</td>
						<td width="750"><%= bd.getRegdate() %></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">제목</td>
						<td width="750"><%= bd.getTitle() %></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr>
						<td width="0">&nbsp;</td>
						<td width="750" colspan="2" height="200"><%= bd.getContent().replace("\r\n", "<br>") %></td>
					</tr>
					
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr height="1" bgcolor="#be69de">
						<td colspan="4" width="407"></td>
					</tr>
					
					<tr align="center">
						<td width="0">&nbsp;</td>
						<td colspan="2" width="750">
							<a href="listboard.jsp"><button>목록</button></a>
							<%
							if(mem!=null){
								if(bd.getId().equals(mem.getId())){ %>
							<a href="modifyboard.jsp?num=<%=num%>"><button>수정</button></a>
							<a href="deleteboard.jsp?num=<%=num%>"><button>삭제</button></a>
							<%}
								
							}%>
						</td>
						<td width="0">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>