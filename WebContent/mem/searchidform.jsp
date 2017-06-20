<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script language="JavaScript" src="../jsfile/memform.js"></script>
<style type="text/css">
#left {
	position: absolute;
	margin-left: 300px;
	margin-top: 120px;
}
#line{
	position: absolute;
	margin-left: 450px;
	margin-top: -150px;
	
}
#right{
	position: absolute;
	margin-top:120px;
	margin-left:930px;
}
</style>
</head>
<body>
	<IMG src="../image/idpw_F.jpg"
		style="margin-left: 600px; margin-top: 30px; margin-bottom: 30px">
		<a href="../main/main.jsp"><img src="../image/back.jpg" style="position: absolute; margin-left:-1000px;"></a>
	<hr size=3>
	<div id="left">
		<form action="searchid.jsp" method="post" name="search">
			<table>
			<IMG src="../image/id_F.jpg" style="margin-left: 50px; margin-bottom:20px;">
				<tr colspan="2">
				<tr>
					<td><font font-color="gray" font-family="맑은고딕,돋움,굴림"
						font-size="11pt"> 이름 </font></td>
					<td><input type="text" name="name"
						style="width: 100px; height: 18px;"></td>
				</tr>

				<tr>
					<td>휴대폰번호</td>
					<td><select name="mobile" style="width: 50px; height: 25px;">
							<option value="">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
							<option value="070">070</option>
							<option value="060">060</option>
					</select> - <input type="text" name="mobile_1"
						style="width: 50px; height: 18px;"> - <input type="text"
						name="mobile_2" style="width: 50px; height: 18px;"></td>
				</tr>
				<tr height="10px">
				  
				</tr>
				<tr>
					<td></td>
					<td align="right"><input type="submit" value="아이디 찾기" onclick="searchid()"></td>
				</tr>

				<div id="line">
				<IMG src="../image/Line.jpg">
				</div>			
			</table>
		</form>
	</div>
	<div id="right">
	<img src="../image/ps_F.jpg" style="margin-left: -50px; margin-bottom:20px;">
	<form action="searchpass.jsp" method="post" name="search">
		<table >
			<tr>
				<td>
					ID 
				</td>
				<td>
					<input type="text" name="id" size="18">
				</td>
			</tr>
			
 			<tr>
				<td>					생년월일
				</td>
				<td>
					<input type="date" method="post" name="birth">
				</td>
			</tr>
			<tr>
				<td>
					
				</td>
				<td>
				<input type="submit" value="비밀번호 찾기" onclick="searchpass()" style="float: right; margin-top:10px;">
				</td>
			</tr>
		</table>
	</form>
	</div>
	
</body>
</html>