<%@page import="java.util.List"%>
<%@page import="mem.MemberFn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 조회</title>
<style type="text/css">
#form{
		margin-top:20px;
		margin-left:650px;
		margin-bottom:30px;
		font-size: 50pt;
		color:#FFDDDD;
		}
#formA{
		margin-left:630px;
		font-size: 18pt;
		color:#0B0B61;
		font-weight: bold;
		}
</style>
</head>
<body>
<%@ page import="java.sql.*"%>
<div id=form>
조회결과<br>
</div>
<hr size="5" color="silver">
	
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String mobile1 = request.getParameter("mobile_1");
		String mobile2 = request.getParameter("mobile_2");
		mobile = mobile +"-"+ mobile1 +"-"+ mobile2; 
		
		MemberFn mfn = new MemberFn();
		List<String> id = mfn.idsearch(name,mobile);
		
	%>
		<br><br>
		<div id=formA>
		<tr>
			<td>
			<%for(int i=0;i<id.size();i++){
					out.print("고객님의 ID는 "+id.get(i) + " 입니다.");		
			}
				%>
			<br><br><br>
			<input type="button" value="메인으로 돌아가기" onclick="javascript:window.location='../main/main.jsp'"
			style="width:200px; height:30px; margin-left:45px; background-color:#FFDDDD">
			</td>
		</tr>
		</div>
		
</body>
</html>