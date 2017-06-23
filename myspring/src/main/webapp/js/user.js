$(document).ready(function() {

	$("#idChk").on("click", idCheck);
	$("#joinConfirm").on("click", joinFormChk);
	$("#btnLogin").on("click", loginFormChk)

});

function idCheck() {
	$.ajax({
				type : "GET",
				dataType : 'text',
				url : "idCheck.do",
				data : {
					"user_id" : $("#user_id").val()
				},
				success : function(res) {
					if (res == 0) {
						$("#chkStr").html(
								"<font color=\"green\">사용 가능한 아이디 입니다.</font>");
						$("#idChkState").val("1");
					} else if (res > 0) {
						$("#chkStr").html(
								"<font color=\"red\">이미 가입된 아이디 입니다.</font>");
						$("#idChkState").val("2");
					}

				},
				beforeSend : function(xhr) {
					$("#chkState").val("");
					if($("#user_id").val()==""){
						alert("아이디를 입력하세요.");
						$("#user_id").focus();
						return false;
					}
				},
				error : function(err) {
					// alert(err);
					// alert("readyState :"+err.readyState);
					alert("status :" + err.status);
					alert("statusText :" + err.statusText);
					// alert("responseText :"+err.responseText);

				},
				complete : function(xhr, textStatus) {
					// alert("complete");
				}

			});
}
function idChange() {
	$("#idChkState").val("");

	$("#chkStr").empty();


}
function passChk() {

	if ($("#user_password").val() == $("#passwd2").val()) {
		$("#passChkStr").html("<font color=\"green\">비밀번호 일치.</font>");
	} else {
		$("#passChkStr").html("<font color=\"red\">일치하지 않습니다.</font>");
	}
}

function joinFormChk() {
	

	
	if ($("#user_id").val() == "") {
		alert("아이디를 입력해 주세요.");
		return;
	}
	if ($("#idChkState").val() == "") {
		alert("아이디 중복체크를 해주세요.");
		return;
	}
	if ($("#user_pwd").val() == "") {
		alert("비밀번호를 입력해 주세요.");
		return;
	}
	if ($("#user_pwd2").val() == "") {
		alert("비밀번호 확인을 입력해 주세요.");
		return;
	}
	if ($("#user_pwd").val() != $("#user_pwd2").val()) {
		alert("비밀번호가 일치하지 않습니다.");
		return;
	}
	if ($("#user_name").val() == "") {
		alert("이름을 입력해 주세요.");
		return;
	}
	if ($("#user_email").val() == "") {
		alert("메일을 입력해 주세요.");
		return;
	}
	/*
	if ($("#domain").val() == "") {
		alert("도메을 입력해 주세요.");
		return;
	}*/
	if ($("zipcode").val() == "") {
		alert("우편번호를 선택해 주세요.");
		return;
	}
	if ($("#addr1").val() == "") {
		alert("주소를 입력해 주세요.");
		return;
	}

	if($(':radio[name="user_gender"]:checked').length < 1){
	    alert('성별을 선택해주세요');                        
	    return;
	}

	if($("#agreement").is(":checked")==false){
		alert("개인정보 제공 및 수집 동의는 필수 항목 입니다.");
		return;
	}
	
	
	$("#join").submit();
	
}


function loginFormChk(){

	if($("#user_id").val()==""){
		alert("아이디를 입력해 주세요.");
	}
	if($("#user_password").val()==""){
		alert("비밀번호를 입력해 주세요.");
	}
	$("#login").submit();
}
function getDomain(){
	$("#domain").val($("#select_domain").val());
}
















