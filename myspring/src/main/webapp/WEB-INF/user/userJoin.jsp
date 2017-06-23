<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/user.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function searchZip(){
    new daum.Postcode({
        oncomplete: function(data) {

        	 // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('addr1').value = fullRoadAddr;
            //document.getElementById('addr2').value = data.jibunAddress;
            
            this.close;

            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        	
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        	
        }
    }).open();
}
</script>
</head>
<body>
	<form name="userJoinForm" id="userJoinForm" method="post" action="userJoin.do">
		<input type="hidden" name="idChkState" id="idChkState" />
		<div>
			<span>이름</span> <input type="text" name="user_name" id="user_name" />
		</div>
		<div>
			<span>아이디</span> <input type="text" name="user_id" id="user_id" onChange="idChange();"/> <input type="button" name="idChk" id="idChk" value="중복체크" /> 
			<span id="chkStr"></span>
		</div>
		<div>
			<span>비밀번호</span> <input type="password" name="user_password" id="user_password" />
		</div>
		<div>
			<span>비밀번호 확인</span> <input type="password" name="passwd2" id="passwd2" onkeyup="passChk();"/>
			<span id="passChkStr"></span>
		</div>
		<div>
			<span>email</span> <input type="text" name="user_email" id="user_email"/>@<input type="text" name="domain" id="domain" />
			<select id="select_domain" name="select_domain" onChange="getDomain()">
				<option value="" selected>직접입력</option>
				<option value="doum.net">doum.net</option>
				<option value="nate.com" >nate.com</option>
				<option value="naver.com">naver.com</option>
				<option value="google.com">google.com</option>				
			</select>
		</div>
		<div>
			<span>우편번호</span> <input type="text" name="zipcode" id="zipcode" onclick="searchZip();" readonly/>
			<input type="button" value="선택" onclick="searchZip();"/>
		</div>
		<div>
			<span>주소</span> <input type="text" name="addr1" id="addr1" onclick="searchZip();" readonly/>
		</div>
		<div>
			<span>상세주소</span> <input type="text" name="addr2" id="addr2" />
			<span id="guide" style="color:#999"></span>
		</div>
		<div><input type="button" name="joinConfirm" id="joinConfirm" value="가입" /> <input type="button" name="btnCancel" value="취소" onclick="javascript:history.back();" /></div>
	</form>
</body>
</html>