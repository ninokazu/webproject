<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<LINK rel="stylesheet" href="../css/joinCform.css" />
</head>
<script language="JavaScript" src="../jsfile/memform.js"></script>

<body>
	<div id="formm" background-color="#FFDDDD">
		<form action="memberprocess.jsp" name="join" method="post">
			<input type=hidden name="menu" value="insert">
			<table>
				<tr>
					<IMG src="../image/memberjoin2.gif" align="center">
				</tr>
			</table>
			<table width="100%" border=0 cellspacing=0 cellpadding=7>

				<tr>
					<td><label for="id"> I D </label></td>
					<td><input type="text" name="id"> <input type="button"
						value="중복확인" id="btnid" onclick="checkid()"
						style="width: 100px; height: 25px;"></td>
				</tr>
				<hr color="lightpink" size="5">
				<br>
				<tr>
					<td><label for="name"> 이 름 </label></td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
				<td><label for="passwd"> 비밀번호 </label></td>
				<td><input type="password" name="passwd" maxlength="16" > 영문, 숫자, 특수문자(!@#$%^&* 만허용)를 사용하여 6~16자리까지, 영문은 대소문자를 구별합니다.</td>
			</tr>
			<tr>
				<td><label for="passwd1"> 비밀번호확인 </label></td>
				<td><input type="password" name="passwd1" maxlength="16"> 위와 동일한 비밀번호를 입력해주세요 </td>
			</tr>
				<tr>
					<td><label for="gender"> 성 별 </label></td>
					<td><input type="radio" name="gender" id="gender1" value="남자"
						checked> 남자 <input type="radio" name="gender" id="gender2"
						value="여자"> 여자</td>
				</tr>
				<tr>
					<td><label for="birth"> 생년월일 </label></td>
					<td><input type="date" name="birth" id="birth"></td>

				</tr>
				<tr>
					<td><label for="email"> 이메일 </label></td>
					<td><input type="text" name="emailfirst" onfocus="this.value='';">@
						<input type="text" name="emailsecond" value="" readOnly> <select
						name="email" onchange="email_change()">
							<option value="" selected>선택하세요</option>
							<option value="9">직접 입력</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gamil.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="mobile"> 휴대폰 </label></td>
					<td><select name="mobile">
							<option value="">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
							<option value="070">070</option>
							<option value="060">060</option>
					</select> - <input type="text" name="mobile_1"> - <input type="text"
						name="mobile_2"></td>
				</tr>
			</table>
			<br>
			<hr color="lightpink" size="5">
			<table>
				<center>
				<tr>
					<td><input type="button" value="회원가입" onclick="insertcheck()"
						style="width: 100px; height: 30px; margin-top: 30px; margin-left: 600px;">
						<input type="reset" value="다시 작성"
						style="width: 100px; height: 30px"></td>
				</tr>
				</center>
			</table>
			<a href="../main/main.jsp"><button
					style="width: 200px; height: 30px; margin-top: 10px; margin-left: 100px; margin-left: 620px;">메인페이지로
					돌아가기</button></a>

		</form>
	</div>
</body>
</html>