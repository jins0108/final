<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Puzzle</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/join.css">
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

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Puzzle</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">방찾기</a></li>
					<li><a href="#">입주안내</a></li>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">Q&A</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-pencil"></span>
							Join</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="devise-wrapper">
		<div class="devise-inner">
		
			<form id="join" class="devise-form" name="userJoinForm"  method="post" action="userJoin.do">
			<input type="hidden" name="idChkState" id="idChkState" />
				<div class="content">
					<div class="devise-title">회원가입</div>

					<div class="login-wrapper sns-login-wrapper">
						<div class="wrap-title">SNS 회원가입</div>

						<a class="sns-login-btn facebook-btn" href="/users/auth/facebook">
						</a> <a class="sns-login-btn naver-btn" href="/users/auth/naver">
						</a> <a class="sns-login-btn kakao-btn" href="/users/auth/kakao">
						</a>
					</div>

					<div class="login-wrapper email-login-wrapper">
						<div class="wrap-title">회원가입</div>
			
						<div >
						<input placeholder="* 아이디" class="text-input" required="required" type="text" name="user_id" id="user_id" onChange="idChange();" style="float:left;"/> 
						<input type="button" name="idChk" id="idChk" value="중복체크" class="col-btn" style="float:right;"/>
						</div>
						
							<span id="chkStr" style="float:left"></span>
						
						<input placeholder="* 비밀번호 (8자리 이상)" class="text-input" required="required" type="password" name="user_pwd" id="user_pwd" />
						<input placeholder="* 비밀번호 확인 (8자리 이상)" class="text-input" required="required" type="password" name="user_pwd2" id="user_pwd2" onkeyup="passChk();" style="float:left;"/>
						<span id="passChkStr"></span>
						<input placeholder="* 이름" class="text-input" required="required" type="text" name="user_name" id="user_name" />
						<input placeholder="* 이메일" class="text-input" required="required" type="email" name="user_email" id="user_email" /> 

	
						<input placeholder="* 주소" class="text-input" required="required" type="text" name="addr1" id="addr1" style="float:left;" onclick="searchZip();"  readonly/>
						<input placeholder="* 우편번호" class="zipcode" required="required" type="text" name="zipcode" id="zipcode" onclick="searchZip();"  readonly/>	

						<input placeholder="상세 주소" class="addr2" required="required" type="text" name="addr2" id="addr2" /> 
				

						<div class="gender-btn-wrapper">
							<input class="gender-input" type="radio" value="m" name="user_gender" id="user_gender_m" /> 
							<label class="gender-btn" for="user_gender_m">
								<div class="btn-content">
									<span class="btn-icon"> <span class="check">&#10003;</span>
									</span> 남
								</div>
							</label> 
							<input class="gender-input" type="radio" value="f" name="user_gender" id="user_gender_f" /> 
							<label class="gender-btn" for="user_gender_f">
								<div class="btn-content">
									<span class="btn-icon"> <span class="check">&#10003;</span>
									</span> 여
								</div>
							</label>
						</div>

						<div class="agreement-list">
							<div class="agreement">
								<input class="agreement-input" type="checkbox" value="1" name="allow_dm" id="allow_dm" /> 
								<label class="agreement-content" for="allow_dm">
										<div class="content">(선택) 새로운 지점 소식을 뉴스레터로 구독</div>
								</label>
							</div>

							<div class="agreement">
								<input type="checkbox" id="agreement" class="agreement-input">
								<label class="agreement-content" for="agreement">
									<div class="content">
										(필수) <a class="privacy-btn" href="/privacy" target="_blank">개인정보
											제공 및 수집</a>에 동의합니다.
									</div>
								</label>
							</div>
						</div>
					</div>

					<input type="button" name="joinConfirm" id="joinConfirm" value="회원가입" class="join-btn" />
				</div>
			</form>
		</div>
	</div>
	<br>
	<footer>
		<div id="sub_banner" class="pc">
			<div class="sub_banner_text">
				<div class="sub_banner_text_icon">
					<img src="resources/images/sub_banner_icon.png" alt="">
				</div>
				<div class="sub_banner_text_1">함께하면 더해지는 기쁨이 있다고 합니다.</div>
				<div class="sub_banner_text_2">삭막한 현대 인간관계를 벗어나 모두가 이웃이던 과거로
					돌아가 봅시다.</div>
				<div class="sub_banner_text_3">이제 함께 꿈꾸는 퍼즐에서 여러 색깔의 꿈을 그려보세요-</div>
			</div>
		</div>
		<div id="footer" style="width: 100%;">
			<ul>
				<li>
					<div class="footer_title">Puzzle(주)</div>
					<div class="footer_contents">
						경기도 의정부시 추동로 92번길 70 JS행복주택 B동<br /> 대표. 김 양우 &nbsp; &nbsp;
						사업자등록번호. 348-81-00522<br /> <a href="../adm/"><span
							style="color: #999">ⓒ 2017 Puzzle(주) All Right Reserved.</span></a>
					</div>
				</li>
				<li>
					<div class="footer_title">CONTACT US</div>
					<div class="footer_contents">
						Tel. 070-8252-1363 &nbsp; &nbsp; Mobile. 010-5886-4144<br />
						Mail. diddn22@naver.com<br /> 근무시간. 평일 am 10:00 - pm 05:00
					</div>
				</li>
				<li id="sns_area" style="margin-left: 50px"><a
					href="https://www.facebook.com" target="_new"><img
						src="resources/images/facebook.jpg" alt="페이스북"></a> <a
					href="https://blog.naver.com" target="_new"><img class="blog"
						src="resources/images/blog.jpg" alt="블로그"></a> <a
					href="https://www.instagram.com" target="_new"><img
						class="instar" src="resources/images/instar.jpg" alt="인스타그램"></a>
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>
