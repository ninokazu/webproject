<%@page import="mem.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 : 게시 폼 작성</title>
</head>
<script language=JavaScript src="boardform.js"></script>
<link rel="stylesheet" type="text/css" href="../css/topline.css">
<style>
#board_ti{
		margin-left:10px;
		font-size: 20pt;
		color:#FFDDDD;
}
</style>
<body>
<div id="top">
<%Member mem = new Member(); 
 if(session.getAttribute("mem")==null){
		response.sendRedirect("../main/unuse.jsp");
	}else{
		mem = (Member)session.getAttribute("mem");
	}%>
	<jsp:include page="../main/topline.jsp"></jsp:include>
</div>
<div id=board_ti>
	
		게시판 	등록
	
	</div>
	<hr size=5 color="silver">
	
	<center>
		<form name="boardform" method="post" action="board_new.jsp">
			<input type="hidden" name="id" value="<%=mem.getId() %>"> 
			<table width="100%" border="0" cellspacing="0" cellpadding="7">
				<tr>
					<td align="center">
						<table border="0">
							<tr>
								<td colspan="1">
									<table>
										<tr>
											<td width="80">제 목 :</td>
											<td colspan="3">
												<input type="text" name="title" size="80" maxlength="80">
											</td>
										</tr>
									</table>
								</td>
							</tr>
							
							<tr>
								<td colspan="2">
									<textarea name="content" rows="10" cols="100"></textarea>
								</td>
							</tr>
							
							<tr>
								<td colspan="2" height="5">
									<hr size="2">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="등록" style="background-color: #ffdddd">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>