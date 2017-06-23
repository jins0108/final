<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/user.js"></script>
</head>
<body>
<form name="loginForm" id="loginForm" method="post" action="login.do" >
<div>
<span>ID</span>
<input type="text" name="user_id" id="user_id">
</div>
<div>
<span>Password<span>
<input type="password" name="user_password" id="user_password">
<input type="button" value="login" id ="btnLogin" />
</div>
<div><a href="userJoin.htm" >join</a></div>
</form>
</body>
</html>