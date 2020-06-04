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
	margin: 10px 0px 5px 20px; /* 시계방향 */
	color: darkblue;
	font-size: 48px;
}

.right { /* span class=right */
	float: right;
	margin: 15px 0 0 0;
	padding: 10px 10px;
}

.right1 { /* span class=right */
	float: right;
	margin: 25px 0 0 0;
	padding: 10px 10px;
}
</style>
</head>

<body>
	<header>

	<!-- 로그인 처리 : header에 로그인 폼이 있기때문에 -->
	<!-- checkName변수선언, 로그인하면 세션값이 있다 ->세션값이 없는 상태는 초기상태(아이디 비번 입력하는 기본창),세션값이 있는 상태  로그인인지 아닌지 확인하는 단계 -->
	
	<%
	String checkName="";
	checkName=(String)session.getAttribute("s_name");/* 세션값을 s_name으로 가져온다 */
	
	/* checkName="홍길동";->강제로 값을 넘기는 test */
	
	if(checkName==null){/* 로그아웃 상태 */
	%>
		<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a>		
		<span class="right">
			<form method="post" action="login.jsp">
			<fieldset data-role="fieldcontain"> <!--폼안에서 테두리로 그룹화-->
				<label for="id">회원ID</label> 
				<input type="text" id="id" name="id" size="10" maxlength="10" required="required"> 
				
				<label for="pswd">비밀번호</label> 
				<input type="password" id="password" name="password" size="10" maxlength="10" required="required"> 
				
				<input type="submit" value="로그인"> 
				<a href="member_form.jsp">회원가입</a>
				</fieldset>
			</form>
		</span>
		
		<!-- 세션값이 없다면 if의 괄호를 여기에 닫아준다. -->
		
		<% } else {%>  <!-- 세션값이 있으면 로그인이 된 상태 -->
		
		<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a>		
		<!-- 아이디 비번 입력하는 창대신에 로그아웃할 수 있는 창을 준다. -->
		<span class="right1">
		<%=checkName%>님 환영합니다!
		<a href="logout.jsp" >Logout</a>
		<a href="member_form.jsp">회원가입</a>		
		</span>
		
		
		<%} %><!-- else대한 괄호 닫아주기 -->
		
	</header>
</body>
</html>