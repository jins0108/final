<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.blog {
	margin-left: 48px;
}

.instar {
	margin-left: 50px;
}

.sub_banner_text_icon {
	margin-bottom: 30px;
}

.thumbnail{
	border-radius: 0;
}

.thumbnail > img {
    position: relative;
    height: 190px;
    background-position: center;
    background-size: cover;
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
				
   <c:choose>
       <c:when test="${s_user_id==null}">
           	<li><a href="login.htm"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
			<li><a href="join.htm"><span class="glyphicon glyphicon-pencil"></span>Join</a></li>
       </c:when>
       <c:otherwise>
       
           <li><a href="logOut.do"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li>
       </c:otherwise>
   </c:choose>

					
					
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row content">
			<div id="quick_menu" class="col-sm-3 sidenav">
				<div class="well">
					<p>Some text..</p>
					<p>Some text..</p>
					<p>Some text..</p>
					<p>Some text..</p>
					<p>Some text..</p>
					<p>Some text..</p>
					<p>Some text..</p>
					<p>Some text..</p>
				</div>
			</div>
			<div class="col-sm-9">
				<div class="btn-group">
					<button type="button" class="btn btn-default">모든 지점보기</button>
					<button type="button" class="btn btn-default">방으로 보기</button>
				</div>
				<br /> <br />
				<div>
					<img class="img-responsive"
						src="https://placehold.it/850x400?text=IMAGE" alt="Image">
				</div>
				<br> <br>
				<div class="container-fluid bg-3 text-center">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="resources/images/a.jpg"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="resources/images/b.jpg"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>54호점 성북구 하월곡동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">	
							<div class="thumbnail">
								<img src="resources/images/c.jpg"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>50호점 종로구 동숭동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="container-fluid bg-3 text-center">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="container-fluid bg-3 text-center">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="container-fluid bg-3 text-center">
					<div class="row">
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="thumbnail">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image"><br/>
								<p><b>56호점 마포구 현석동</b></p>
								<span>여성전용</span>&nbsp;&nbsp;<span>신청가능4</span>
							</div>
						</div>
						<button type="button" class="btn btn-default btn-lg btn-block">더보기</button>
					</div>
				</div>
			</div>
		</div>
		<hr>
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
				<li id="sns_area" style="margin-left: 50px">
				<a href="https://www.facebook.com" target="_new"><img
						src="resources/images/facebook.jpg" alt="페이스북"></a> 
				<a href="https://blog.naver.com" target="_new"><img
						class="blog" src="resources/images/blog.jpg" alt="블로그"></a>
				<a href="https://www.instagram.com" target="_new"><img
						class="instar" src="resources/images/instar.jpg" alt="인스타그램"></a>
				</li>
			</ul>
		</div>
	</footer>
</body>
</html>
