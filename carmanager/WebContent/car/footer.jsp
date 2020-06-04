<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>footer</title>
<style>
footer { /* footer전체 스타일 */
	clear:both;
	height: 70px;
	background-color: lightgray;
	font-size:14px;
}

footer #copyright { /* footer 안에 id -># */
	margin: 20px 0 0 10px;
	float: left;
	font-family: consolas;
}

footer #sns {
	margin: 10px 20px 0 0;
	float: right;/* 참고 clear:both; */
}
</style>
</head>

<body>
	<footer>
		<div id="copyright">Copyright (c) 2020 yangjung All right reserved</div>
		
		<div id="sns">
			<a href="http://facebook.com" target="_blank"> 
			<img alt="Facebook" src="../images/facebook.gif" height="32"></a> <!-- ..은 상위폴더로 이동 -->
			
			<a href="http://twitter.com" target="_blank"> 
			<img alt="Twitter" src="../images/twitter.gif" height="32"></a> 
			
			<a href="http://plus.google.com" target="_blank"> 
			<img alt="Google" src="../images/googleplus-icon.png" height="32"></a>
		</div>
	</footer>
</body>
</html>