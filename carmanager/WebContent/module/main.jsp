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
	background-color:lightgray;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan=2 height="100px" bgcolor="">
			<jsp:include page="header.jsp"/>
			<a href="main.jsp"></a></td>
		</tr>
		<tr>
			<td class="content">
			<h2>회원정보</h2><hr>
			<h1>   .</h1><hr>
			<h2>배송지 정보</h2><hr>
			<h1>   .</h1><hr>
			<h2>구매 정보</h2><hr>
			<h1>   .</h1><hr>
			
			
			<jsp:include page="menu.jsp"/>
			
			</td>

			<td width="20%" bgcolor="gray">
			<h2>배송 예정일</h2><hr>
			<h1>   .</h1><hr>
			<h2>주문 금액</h2><hr>
			<h1>   .</h1><hr>
			<a href="#">
			<jsp:include page="right.jsp"/>
			</a></td>
		</tr>
		<tr>
			<td colspan=2 height="100px" bgcolor="" >
			<jsp:include page="footer.jsp"/>
			Copyright 2020 All right reserved</td>
		</tr>
	</table>
</body>
</html>