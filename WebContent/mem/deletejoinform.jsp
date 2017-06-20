<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정삭제</title>
<style type="text/css">
	#form{
		margin-top : 20px;
		margin-left: 650px;
		margin-bottom:30px;
		text-align : ceneter;
		font-size: 50pt;
		color: #ffdddd;
	}
	#formA{
		margin-top: 70px;
		font-size: 18pt;
		color:#0B0B61;
		font-weight: bold;
		}
</style>
</head>
<body>
<div id = form >
	 계정 삭제<br>
</div>
<hr size="5" color="silver">
<center>
	<form action="deletejoinprocess.jsp" name="delete" method="post">
	<input type=hidden name="deleteid">
		<div id=formA>
			<tr>
				<td>삭제하실 본인 ID를 입력해주세요.</td>
			</tr>
			<br><br><br>
			<tr>
				<td> I D </td>
			<input type="text" name="id">
			<input type="submit" value="계정삭제">
			</tr>
		</div>
	</form>
</center>
</body>
</html>