<%@page import="mem.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
		Member mem = (Member) session.getAttribute("mem"); 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<LINK rel="stylesheet" href="../css/joinCform.css" />
</head>
<script language="JavaScript" src="../jsfile/memform.js"></script>

<body>
	<div id="formm" background-color="#FFDDDD">
		<form action="updateprocess.jsp" name="join" method="post">
			<input type=hidden name="menu" value="insert">
			<table>
				<tr>
					<IMG src="../image/re_pro.gif" align="center">
				</tr>
			</table>
			<table width="100%" border=0 cellspacing=0 cellpadding=7>

				<tr>
					<td><label for="id"> I D </label></td>
					<td><input type="text" name="id" value="<%=mem.getId() %>" readOnly>
				</tr>
				<hr color="lightpink" size="5">
				<br>
				<tr>
					<td><label for="name"> 이 름 </label></td>
					<td><input type="text" name="name" id="name" value="<%=mem.getName() %>"></td>
				</tr>
				<tr>
					<td><label for="passwd"> 비밀번호 </label></td>
					<td><input type="password" name="passwd"></td>
				</tr>
				<tr>
					<td><label for="passwd1"> 비밀번호확인 </label></td>
					<td><input type="password" name="passwd1"></td>
				</tr>
				<tr>
					<td><label for="gender"> 성 별 </label></td>
					<td><%if(mem.getGender().equals("남자")){ %>
					<input type="radio" name="gender" id="gender1" value="남자"
						checked> 남자 <input type="radio" name="gender" id="gender2"
						value="여자"> 여자
						<%}else{ %>
						<input type="radio" name="gender" id="gender1" value="남자"
						> 남자 <input type="radio" name="gender" id="gender2"
						value="여자" checked> 여자
						<%} %>
						
						</td>
				</tr>
				<tr>
					<td><label for="birth"> 생년월일 </label></td>
					<td><input type="date" name="birth" id="birth" value="<%=mem.getBirth()%>"></td>

				</tr>
				<tr>
					<td><label for="email"> 이메일 </label></td>
					<% String email = mem.getEmail(); 
							int i = email.indexOf("@");
					%>
					<td><input type="text" name="emailfirst" value="<%=email.substring(0,i) %>" onfocus="this.value='';">@
						<input type="text" name="emailsecond" value="<%=email.substring(i+1) %>" readOnly> <select
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
							<option value=""><%=mem.getMobile().substring(0, 3)%></option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
							<option value="070">070</option>
							<option value="060">060</option>
					</select> - <input type="text" name="mobile_1" value="<%=mem.getMobile().substring(4, 8)%>"> - <input type="text"
						name="mobile_2" value="<%=mem.getMobile().substring(9)%>"></td>
				</tr>
			</table>
			<br>
			<hr color="lightpink" size="5">
			<table>
				<center>
				<tr>
					<td><input type="button" value="수정" onclick="insertcheck()"
						style="width: 100px; height: 30px; margin-top: 30px; margin-left: 600px;"></td>
				</tr>
				</center>
			</table>
		</form>
			
	</div>
				<a href="deletejoinform.jsp"><button style="position:absolute;  width: 100px; height: 30px; margin-left:1030px; margin-top:511px; z-index: 10;" >삭제하기</button></a>
			<a href="../brd/listboard.jsp"><button
					style="width: 210px; height: 30px;  margin-left: 920px; margin-top: 550px;">돌아가기</button></a>
</body>
</html>