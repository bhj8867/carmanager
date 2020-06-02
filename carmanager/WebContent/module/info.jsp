<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
<style type="text/css">
table{
	width:100%;
	height:100%;
	boder:1;
	cellpadding:0;
	cellspacing:0;
	align:center;
}
.content{
	width:80%;
	height:500px;
	background-color:green;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan=2 height="10%" bgcolor=yellow>
			<jsp:include page="header.jsp"/>
			<a href="main.jsp"></a></td>
		</tr>
		<tr>
			<td class="content">
			<jsp:include page="menu.jsp"/>
			<img src="bird2.jpg" width=350>
			</td>

			<td width="20%" bgcolor="pink"><a href="#">
			<jsp:include page="right.jsp"></jsp:include>
			Java</a></td>
		</tr>
		<tr>
			<td colspan=2 height="10%" bgcolor=gray>
			<jsp:include page="footer.jsp"></jsp:include>
			Copyright 2020 All right reserved</td>
		</tr>
	</table>
</body>
</html>