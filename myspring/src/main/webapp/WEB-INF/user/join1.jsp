<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Puzzle</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#footer {
	background-color: #262626;
	height: 260px;
	color: #ccc;
	font-size: 14px;
	text-align: left;
}

#footer ul {
	width: 1170px;
	margin: 0 auto;
	padding-top: 70px;
}

#footer ul li {
	float: left;
	width: 320px;
	margin-right: 40px;
}

#footer ul li .footer_title {
	font-weight: bold;
	margin-bottom: 20px;
}

#footer ul li .footer_contents {
	line-height: 26px;
}

li {
	list-style-type: none;
}

#sub_banner {
	width: 100%;
	position: relative;
	background: url(resources/images/footer_banner.jpg) no-repeat 50% 0;
	height: 460px;
	text-align: center;
	padding: 25px;
	background-attachment: fixed;
}

.sub_banner_text {
	position: relative;
	top: 126px;
	font-size: 24px;
	color: #fff;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	min-height: 200px;
}

.devise-wrapper {
    display: table;
    width: 100%;
    min-height: 974px;
    background-image: url(resources/images/background.jpg);
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.devise-wrapper .devise-inner {
    display: table-cell;
    padding: 3rem;
    padding-top: 7.5rem;
    text-align: center;
    vertical-align: middle;
}
#join {
    width: 100%;
    max-width: 60rem;
    padding: 3rem;
}
.devise-wrapper .devise-inner .devise-form {
    display: inline-block;
    margin: 0 auto;
    background-color: #FFF;
    box-shadow: 0 0 1px #CCC;
    box-sizing: border-box;
}
.devise-wrapper .devise-inner {
    display: table-cell;
    padding: 3rem;
    padding-top: 7.5rem;
    text-align: center;
    vertical-align: middle;
}
input, textarea {
    padding: 0;
    background-color: #FFF;
    border: 0;
}
input, textarea, button {
    color: inherit;
    font-family: inherit;
    font-size: 1em;
    outline: 0;
}
#join .content .devise-title {
    margin-bottom: 2rem;
    font-weight: 700;
}
.devise-wrapper .devise-inner .devise-title {
    margin-bottom: 3rem;
    font-size: 1.8rem;
}
div {
    display: block;
}
#join .content .login-wrapper .wrap-title {
    margin-bottom: 1.5rem;
    font-size: 1.1rem;
}
#join .content .login-wrapper.sns-login-wrapper .sns-login-btn.facebook-btn {
    background-image: url(resources/images/facebook.png);
}
#join .content .login-wrapper.sns-login-wrapper .sns-login-btn.naver-btn {
    background-image: url(resources/images/naver.png);
}
#join .content .login-wrapper.sns-login-wrapper .sns-login-btn.kakao-btn {
    background-image: url(resources/images/kakao.png);
}
#join .content .login-wrapper.sns-login-wrapper .sns-login-btn {
    display: inline-block;
    width: 5rem;
    height: 5rem;
    margin-right: 2rem;
    background-position: center;
    background-size: 100%;
    background-repeat: no-repeat;
    border-radius: 6px;
}
a {
    color: inherit;
    text-decoration: none;
    cursor: pointer;
}
#join .content .login-wrapper.sns-login-wrapper .sns-login-btn:last-child {
    margin-right: 0;
}
.devise-wrapper .devise-inner {
    display: table-cell;
    padding: 3rem;
    padding-top: 7.5rem;
    text-align: center;
    vertical-align: middle;
}
#join .content .login-wrapper.email-login-wrapper .text-input {
    display: block;
    width: 100%;
    height: 4rem;
    line-height: 4rem;
    padding: 0 2rem;
    margin-bottom: 1rem;
    background-color: #EEE;
    border: 0;
    box-shadow: inset 0 0 0 1px #DDD;
    box-sizing: border-box;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-input:checked+.gender-btn {
    background-color: #FD675A;
    box-shadow: inset 0 0 0 1px #FD675A;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-btn .btn-content {
    display: inline-block;
    height: 1.2rem;
    line-height: 1.2rem;
    margin: 1.4rem 0;
    color: #999;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-btn {
    float: left;
    width: 50%;
    height: 4rem;
    background-color: #EEE;
    box-shadow: inset 0 0 0 1px #DDD;
    cursor: pointer;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list .agreement .agreement-content .content {
    color: #808080;
    font-size: 1.1rem;
    overflow: hidden;
}
#join .content {
    max-width: 26rem;
    margin: 0 auto;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-input {
    display: none;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-input:checked+.gender-btn .btn-content {
    color: #FFF;
    font-weight: 700;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-btn .btn-content .btn-icon {
    float: left;
    width: 1.2rem;
    height: 1.2rem;
    margin-right: 1.8rem;
    box-shadow: inset 0 0 0 1px #DDD;
    vertical-align: middle;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-btn .btn-content .btn-icon .check {
    visibility: hidden;
}
#join .content .login-wrapper.email-login-wrapper .gender-btn-wrapper .gender-input:checked+.gender-btn .btn-content .btn-icon .check {
    visibility: visible;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list .agreement .agreement-content {
    display: block;
    cursor: pointer;
    overflow: hidden;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list .agreement {
    line-height: 1.2rem;
    margin-bottom: 1rem;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list {
    padding: 1.5rem 1rem;
    text-align: left;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list .agreement .agreement-content:before {
    content: '';
    float: left;
    width: 1.2rem;
    height: 1.2rem;
    margin-right: 1.2rem;
    background-color: #FFF;
    box-shadow: inset 0 0 0 1px #DDD;
    text-align: center;
    cursor: pointer;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list .agreement .agreement-input:checked+.agreement-content:before {
    content: '\2713';
    color: #FD675A;
    box-shadow: inset 0 0 0 1px #FD675A;
}
#join .content .login-wrapper.email-login-wrapper .agreement-list .agreement:last-child .agreement-content {
    float: left;
}
.agreement-input{
	visibility: hidden;
}
#join .content .join-btn {
    display: block;
    width: 100%;
    height: 4rem;
    line-height: 4rem;
    padding: 0 2rem;
    background-color: #FD675A;
    border: 0;
    border-radius: 0.5rem;
    color: #FFF;
    font-size: 1.3rem;
    box-sizing: border-box;
    cursor: pointer;
}
.usercol{	
    display: block;
    width: 70%;
    height: 4rem;
    line-height: 4rem;
    padding: 0 2rem;
    margin-bottom: 1rem;
    background-color: #EEE;
    border: 0;
    box-shadow: inset 0 0 0 1px #DDD;
    box-sizing: border-box;
    float: left;
}
.col-btn{
    display: block;
    width: 26%;
    height: 4rem;
    line-height: 4rem;
    padding-left: 3px;
    background-color: #FD675A;
    border: 0;
    border-radius: 0.5rem;
    color: #FFF;
    font-size: 1.3rem;
    box-sizing: border-box;
    cursor: pointer;
    text-align: center;
    float: right;
}
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
</style>
<script>
	var m_check = "pc";
	$(document).ready(function() {
		//		if(m_check == "pc"){
		$("#main-nav li").hover(function() {
			$(this).find("ul").show().css("top", "110px");
		}, function() {
			$(this).find("ul").hide();
		});
		//		}else{
		//			$(".m_menu_show").click(function(){
		//				$("#main-nav li > ul").hide();
		//				$(this).siblings("ul").css("top","110px").toggle();
		//			});
		//		}
	});
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
			<form id="join" class="devise-form" action="/users"
				accept-charset="UTF-8" method="post">
				<input name="utf8" type="hidden" value="&#x2713;" /><input
					type="hidden" name="authenticity_token"
					value="4M4LR1GMI3076Hmtb9hYQXmgZEnEX8kLkp5ZxR/m/YasWiC2GPgRIqYRBV+rVjtcnOXG/kizooI3WaIWhwXkGw==" />
				<input type="hidden" name="user[provider]" id="user_provider" /> <input
					type="hidden" name="user[uid]" id="user_uid" />

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
						<div class="wrap-title"></div>
						<input placeholder="* 이름" class="text-input" required="required"
							type="text" name="user[name]" id="user_name" /> 
						<div><input placeholder="* 아이디" class="usercol" required="required"
							type="text" name="user[id]" id="user_id" />
							<input type="button" name="user[id_check]" value="중복체크" id="id_check" class="col-btn" />
						</div>
						<input placeholder="* 비밀번호 (8자리 이상)" class="text-input"
							required="required" type="password" name="user[password]"
							id="user_password" /> 
						<input placeholder="* 비밀번호 확인 (8자리 이상)"
							class="text-input" required="required" type="password"
							name="user[password_confirmation]"
							id="user_password_confirmation" />
						<input placeholder="* 우편번호"
							class="text-input" required="required" type="text"
							name="user[address]"
							id="user_address" />
						

						<div class="gender-btn-wrapper">
							<input class="gender-input" type="radio" value="m"
								name="user[gender]" id="user_gender_m" /> <label
								class="gender-btn" for="user_gender_m">
								<div class="btn-content">
									<span class="btn-icon"> <span class="check">&#10003;</span>
									</span> 남
								</div>
							</label> <input class="gender-input" type="radio" value="f"
								name="user[gender]" id="user_gender_f" /> <label
								class="gender-btn" for="user_gender_f">
								<div class="btn-content">
									<span class="btn-icon"> <span class="check">&#10003;</span>
									</span> 여
								</div>
							</label>
						</div>

						<div class="agreement-list">
							<div class="agreement">
								<input name="user[allow_newsletter]" type="hidden" value="0" /><input
									class="agreement-input" type="checkbox" value="1"
									name="user[allow_newsletter]" id="user_allow_newsletter" /> <label
									class="agreement-content" for="user_allow_newsletter">
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

					<input type="submit" name="commit" value="회원가입" class="join-btn" />
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
