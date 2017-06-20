<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script language="JavaScript" src="../jsfile/main.js"></script>
</head>
<body>
<div id="main">

  <div id="left">
  <img  src="../image/sakura2.jpg" >
  </div>
  
   <div id="right">
   <img src="../image/bglogon.jpg">
     <div id="loginmain">
      <form id="login_form" name="login_form" method="post" action="../mem/memlogin.jsp">
      
      <input type="text" name="id" size="30" style= "height:40px;" placeholder="User ID"><br><br>
      <input type="password" name="passwd" size="30" style="height:40px; " placeholder="User Password"><br><br>
      <input type="submit" size="30" style="width:245px; height: 35px; 
     				 background-color:#FFDDDD; border-radius: 15px;" value="로그인" onclick="check()"><br><br>
      </form>
   
     </div>
     
      <div id="budiv">
      <a href="../mem/memberform.jsp"><button size="30" style="width:90px; height:35px; 
    					  background-color:#FFDDDD; border-radius: 15px; text-align:center;" >회원가입</button></a>
      <a href="../mem/searchidform.jsp"><button size="30" style="width:150px; height:35px;
   						   background-color:#FFDDDD; border-radius: 15px; text-align:center;">아이디/비밀번호 찾기</button></a>
   	 </div>
  </div>
</div>

</body>
</html>