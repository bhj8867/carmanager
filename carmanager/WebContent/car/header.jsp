<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
<style>
#logo {
	float: left;
	vertical-align: middle;
	margin: 10px 500px 0 20px; /* 시계방향 */
	color: darkblue;
	font-size: 48px;
}

.right { /* span class=right */
	float: right;
	margin: 0 0 0 0;
	padding: 10px 10px;
}
</style>
</head>

<body>
	<header>
		<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a>
		<fieldset> <!--폼안에서 테두리로 그룹화-->
			<span class="right"> 
				<label for="id">회원ID</label> 
				<input type="text" id="id" name="id" size="10" maxlength="10" required="required"> 
				
				<label for="pswd">비밀번호</label> 
				<input type="password" id="password" name="password" size="10" maxlength="10" required="required"> 
				
				<input type="submit" value="로그인"> 
				<a href="member_form.jsp">회원가입</a>
			</span>
		</fieldset>
	</header>
</body>
</html>