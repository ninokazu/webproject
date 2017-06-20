function check(){
	if(document.login_form.id.value == ""){
		alert("아이디를 입력해주세요");
		document.login_form.id.focus();
		return;
	}
	else if(document.login_form.passwd.value == ""){
		alert("비밀번호를 입력해주세요");
		document.login_form.passwd.focus();
		return;
	}
	
}