<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈화면</title>

<style>
nav {
	margin: 0 0 10px 0; /* footer,content 영역간의 간격  */
	padding: 0 0 10px 0; /* nav 자체의 간격 */
	float: left;
	width: 100%;
	background-color: aqua;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #ff0099;
}

nav ul {
	list-style: none;
}

nav ul li {
	float: left;
	margin: 0 5px;
	list-style: none;
}

nav a {
	dispaly: block;
	padding: 5px 5px 8px 5px;
	height: 20px;
	text-decoration: none;
	color: #000000;
	border-style: hidden hidden solid hidden;
	border-color: transparent;
}

.section {
	height: 580px;
	width: 100%;
}

div>img {
	border: none;
	height: 77%;
	width: 100%;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<nav>
		<ul>
			<li><a href="info.jsp">회사소개</a></li>
			<li><a href="#">고객정보 등록</a></li>
			<li><a href="#">부품정보 등록</a></li>
			<li><a href="list.jsp">고객정보 목록</a></li>
			<li><a href="#">부품정보 목록</a></li>
			<li><a href="#">홈으로</a></li>
		</ul>
	</nav>

	<div class="section">
		<img src="../images/logo.jpg">
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>