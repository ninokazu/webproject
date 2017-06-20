<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="mem.MemberFn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 조회</title>
<script language="JavaScript" src="../jsfile/memform.js"></script>
<style type="text/css">
#pwtitle{
		margin-top:20px;
		margin-left:650px;
		margin-bottom:30px;
		font-size: 50pt;
		color:#FFDDDD;
}
#pwA{
		margin-left:605px;
		font-size: 18pt;
		color:#0B0B61;
		font-weight: bold;
}
</style>
</head>
<body>
<%@ page import="java.sql.*"%>
<div id=pwtitle>
조회결과
</div>
<hr size="5" color="silver">
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String birth = request.getParameter("birth");
		
		MemberFn mfn = new MemberFn();
		List<String> pass = mfn.pwsearch(id,birth);
		
	%>
	    <br><br>
		<div id=pwA>
		<tr>
			<td>
			<%for(int i=0;i< pass.size();i++){
					out.print("고객님의 비밀번호는 "+pass.get(i) + " 입니다.");		
			}
				%>
		</div><br><br><br>
			<input type="button" value="메인으로 돌아가기" onclick="javascript:window.location='../main/main.jsp'"
			style="width:200px; height:30px; margin-left:670px; background-color:#FFDDDD">
			</td>
		</tr>
</body>
</html>