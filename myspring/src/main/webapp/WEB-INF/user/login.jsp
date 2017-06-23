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
<script src="js/jquery-1.10.2.js"></script>
<script src="js/user.js"></script>
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

.blog {
	margin-left: 48px;
}

.instar {
	margin-left: 50px;
}

.sub_banner_text_icon {
	margin-bottom: 30px;
}

.thumbnail {
	border-radius: 0;
}

.thumbnail>img {
	position: relative;
	height: 190px;
	background-position: center;
	background-size: cover;
}

#back {
	z-index: -1;
	filter: blur(4px);
	-webkit-filter: blur(4px);
	-moz-filter: blur(4px);
	-o-filter: blur(4px);
	/* filter:url(#blur); */
}
.devise-wrapper {
    display: table;
    width: 100%;
    min-height: 974px;
    background-image: url(resources/images/background.jpg) ;
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

.devise-wrapper .devise-inner .devise-title {
	margin-top: 3rem;
    font-size: 1.8rem;
    font-weight: bold;
}

div {
    display: block;
}

#login {
    position: relative;
    width: 100%;
    max-width: 70rem;
    text-align: center;
}

#login .wrapper {
    display: table;
    float: left;
    width: 50%;
    height: 30rem;
}
#login .wrapper .inner {
    display: table-cell;
    vertical-align: middle;
}
#login .email-login-wrapper .email-login-inner .field-wrapper {
    margin-bottom: 1.5rem;
}
#login .email-login-wrapper .email-login-inner .field-wrapper:last-child {
    margin-bottom: 0;
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
    padding-top: 0.5rem;
    text-align: center;
    vertical-align: middle;
}
.sns-login-inner{
	padding-bottom: 55px;
}
.email-login-inner{
	padding-bottom: 30px;
}
#login .email-login-wrapper .email-login-inner .field-wrapper .text-input {
    display: block;
    width: 18rem;
    height: 4rem;
    line-height: 4rem;
    margin: 0 auto;
    margin-bottom: 0.5rem;
    padding: 0 1.5rem;
    background-color: #EEE;
    border: 0;
    border-radius: 0.5rem;
    box-shadow: inset 0 0 0 1px #DDD;
    font-size: 1.1rem;
    box-sizing: border-box;
}
#login .email-login-wrapper .email-login-inner .field-wrapper .btn.login-btn {
    margin-bottom: 0.8rem;
    background-color: #FD675A;
    color: #FFF;
    font-size: 1.3rem;
    cursor: pointer;
}
#login .email-login-wrapper .email-login-inner .field-wrapper .btn.signup-btn {
    margin-bottom: 0;
    background-color: #FFF;
    box-shadow: inset 0 0 0 1px #FD675A;
    color: #FD675A;
    font-size: 1.2rem;
}
#login .email-login-wrapper .email-login-inner .field-wrapper .btn {
    display: block;
    width: 18rem;
    height: 4rem;
    line-height: 4rem;
    margin: 0 auto;
    padding: 0;
    border: 0;
    border-radius: 0.5rem;
    box-sizing: border-box;
}
#login .sns-login-wrapper .sns-login-inner .wrap-title {
    margin-bottom: 2rem;
    color: #999;
    font-size: 1.5rem;
}
#login .sns-login-wrapper .sns-login-inner .sns-login-btn.facebook-btn {
    background-image: url(resources/images/facebook.png);
}
#login .sns-login-wrapper .sns-login-inner .sns-login-btn.naver-btn {
    background-image: url(resources/images/naver.png);
}
#login .sns-login-wrapper .sns-login-inner .sns-login-btn.kakao-btn {
    background-image: url(resources/images/kakao.png);
}
#login .sns-login-wrapper .sns-login-inner .sns-login-btn:last-child {
    margin-right: 0;
}
#login .sns-login-wrapper .sns-login-inner .sns-login-btn {
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

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
</style>
<script type="text/javascript">
	$(function() {
		/*퀵 메뉴*/
		var defaultTop = parseInt($("#quick_menu").css("top"));
		$(window).on("scroll", function() {
			var scv = $(window).scrollTop();

			$("#quick_menu").stop().animate({
				top : scv + defaultTop + "px"
			}, 500);
		});
	});
</script>
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
					<li><a href="join.htm"><span class="glyphicon glyphicon-pencil"></span>
							Join</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- <div id="wrap" style="width: 100%;">
		<img id="back" class="img-responsive" alt=""
			src="resources/images/background.jpg">
	</div> -->
	<div class="devise-wrapper">
		<div class="devise-inner">
			<form id="login" name="loginForm" class="devise-form" action="login.do"
				accept-charset="UTF-8" method="post">
				<div class="devise-title">로그인</div>
				<input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="if5JDIt2gnz0E+cx4LSws/DOpNOxmLNHtifrgKvvUMvFamL9wgKwI2nqm8MkOtOuFYsGZD102M4T4BBTMwxJVg==" />
				<div class="wrapper sns-login-wrapper">
					<div class="inner sns-login-inner">
						<div class="wrap-title">SNS 로그인</div>

						<a class="sns-login-btn facebook-btn" href="/users/auth/facebook">
						</a> <a class="sns-login-btn naver-btn" href="/users/auth/naver">
						</a> <a class="sns-login-btn kakao-btn" href="/users/auth/kakao">
						</a>
					</div>
				</div>

				<div class="wrapper email-login-wrapper">
					<div class="inner email-login-inner">
						<div class="field-wrapper">
							<input autofocus="autofocus" placeholder="아이디" class="text-input" type="text" value="" name="user_id" id="user_id" /> 
							<input autocomplete="off" placeholder="비밀번호" class="text-input" type="password" name="user_pwd" id="user_pwd" />
						</div>

						<div class="field-wrapper">
							<input type="button" name="btnLogin" id="btnLogin" value="로그인"
								class="btn login-btn" /> <a class="btn signup-btn"
								href="#">회원가입</a>
						</div>
					</div>
				</div>
			</form>
		</div>
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
