function email_change(){
	if(document.join.email.options[document.join.email.selectedIndex].value == ""){
	 document.join.emailsecond.readOnly  = true;
	 document.join.emailsecond.readOnly  = "";
	}
	if(document.join.email.options[document.join.email.selectedIndex].value == 9){
	 document.join.emailsecond.readOnly  = false;
	 document.join.emailsecond.value = "";
	 document.join.emailsecond.focus();
	} else{
	 document.join.emailsecond.readOnly  = true;
	 document.join.emailsecond.value = 
	 document.join.email.options[document.join.email.selectedIndex].value;
	}
}

function insertcheck(){
	if(document.join.id.value ==""){
		alert("아이디를 입력해주세요");
		document.join.id.focus();
		return;
	}
	if(document.join.name.value==""){
		alert("이름을 입력해 주세요.");
		document.join.name.focus();
		return;
	}
	var chkpasswd = document.join.passwd;
	
	if(chkpasswd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.join.passwd.focus();
		return;
	}
	if(document.join.passwd1.value != chkpasswd.value){
		alert("비밀번호를 정확히 입력해주세요.");
		document.join.passwd.value=""
		document.join.passwd1.value=""
		document.join.passwd1.focus();		
		return;
	}
	
	if(chkpasswd.value.length < 6){
		alert("비밀번호는 영문, 숫자, 특수문자(!@#$%^&* 만허용)를 사용하여 6~16자리까지, 영문은 대소문자를 구별합니다.");
		return false;
	}
	
	if(chkpasswd.value.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*])|([a-zA-Z0-9].*[!,@,#,$,%,^,&,*])/)){
		alert("비밀번호는 영문, 숫자, 특수문자(!@#$%^&* 만허용)를 사용하여 6~16자리까지");
		return false;
	}
	if(document.join.birth.value==""){
		alert("생년월일을 입력해 주세요.");
		document.join.birth.focus();
		return;
	}
	if(document.join.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.join.email.focus();
		return;
	}
	if(document.join.mobile.value==""){
		alert("핸드폰번호를 입력해 주세요.");
		document.join.mobile.focus();
		return;
	}
	document.join.submit();
}

function updatecheck(){
	
}

function checkid(){
	if(document.join.id.value ==""){
		alert("아이디를 입력해주세요");
		document.join.id.focus();
		return;
	}else{
		url="idcheckform.jsp?id=" + document.join.id.value;
		window.open(url,"id check","toolbar=no, width=350, height=150, top=150, left=150")
	}
}


function searchid(){
	if(!document.search.name.value){
		alert("이름을 입력해주세요");
		document.search.name.focus();
		return;
	}
	if(!documen.search.mobile.value){
		alert("핸드폰 번호를 입력해주세요");
		return;
	}
}