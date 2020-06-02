<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>customer manage</title>

<style>
caption{
	font-size:50px;
	align:center;
}
nav{
	margin: 0 0 10px 0;
	padding:0 0 10px 0;
	float: left;
	width: 100%;
	background-color: aqua;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #ff0099;	
}
nav ul{
	list-style: none;
}
nav ul li{
	float:left;
	margin:0 10px;
	list-style:none;
}
nav a{
	dispaly : block;
	padding:5px 5px 8px 5px;
	height : 20px;
	text-decoration: none;
	color:#000000;
	border-style: hidden hidden solid hidden;
	border-color: transparent;
}
.section{
	clear:both;
	height:580px;
	width:100%;
	
}
div>img{
	border:none;
	height:77%;
	width:100%;
}
</style>
<!-- 자바스크립트는 동작 style밑에  script -->

<script type="text/javascript">
	/* 필수항목체크 */
	function checkWrite(){/*onclick="javascript:checkWrite()"*/
		if(document.cm.id.value==""){/* id가 공백이면*/
			alert("ID를 입력하세요.");
			document.cm.id.focus();/* 경고창 확인 후 커서 위치 */
		}if(document.cm.password!=document.cm.passsword1){
			alert("비밀번호를 다시 확인하세요.");
			document.cm.password.focus();
		}
	}
	/* 아이디중복체크 */
	function id_chk(){/* id_chk.jsp파일의 매개변수id로 가져온다 cm(폼의 이름)의 아이디 값을  매개변수로  */
		window.open("id_chk.jsp?id=" +document.cm.id.value, target="_self");
	}/*open()은 파일을 여는 함수인데 ?id는 id라는 매개변수를 폼의 아이디 값으로 넘긴다는 의미  ,  */		
</script>
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

<form name="cm" action="member_form_action.jsp">

<table border=1>
<caption>고객 관리</caption>
<tr align=center>
<td>아이디</td>
<td align="left"><input type="text" name="id" size="15" value="" placeholder="kjy61">
<input type="button" value="중복체크" onclick="id_chk()"><!-- javascrip 함수 생성 -->
</td>
</tr>

<tr align=center>
<td>이름 </td>
<td align="left"><input type="text" name="name" size="15" value="" placeholder="홍길동"></td>
</tr>

<tr align=center>
<td>비밀번호 </td>
<td align="left"><input type="password" name="password" size="15" value=""></td>
</tr>

<tr align=center>
<td>비밀번호확인</td>
<td align="left"><input type="password" name="password1" size="15" value=""></td>
</tr>

<tr align=center>
<td>성별</td>
<td align="left">
<input type="radio" name="gender" value="female" checked>여
<input type="radio" name="gender" value="male">남</td>
</tr>

<tr align=center>
<td>이메일 </td>
<td align="left">
<input type="text" name="id2" size="15" value="" placeholder="kjy61">
@<select name="domain"> 
        <option value="naver.com" selected>naver.com</option> 
        <option value="daum.net" >daum.net</option>
        <option value="gmail.com">gmail.com</option>
        <option value="nate.com">nate.com</option></select></td>
</tr>

<tr align=center>
<td>핸드폰</td>
<td align="left">
		<select name="hp1" > 
        <option value="010">010</option> 
        <option value="011">011</option>
        <option value="016">016</option>
        <option value="019">019</option></select>-
        <input type="tel" name="hp2" size="10" value="" placeholder="1111">-
        <input type="tel" name="hp3" size="10" value="" placeholder="1111"></td>
</tr>

<tr align=center>
<td>전화번호 </td>
<td align="left">
	  <input type="tel" name="ph1" size="10" value="" placeholder="051">
     -<input type="tel" name="ph2" size="10" value="" placeholder="1111">
     -<input type="tel" name="ph3" size="10" value="" placeholder="1111"></td>
</tr>

<tr align=center>
<td>주소</td>
<td align="left"><input type="text" name="address" size="100" value="" placeholder="부산 양정"></td>
</tr>

<tr align=center>
<td >차량번호</td>
<td align="left"><input type="text" name="carnumber" size="15" value="" placeholder="61가1234"></td>
</tr>

<tr align=center>
<td>차량종류</td>
<td align="left"><input type="text" name="carmodel" size="15" value="" placeholder="Tks"></td>
</tr>

<tr align=center>
<td colspan="2">
<input type="button" value="회원가입" onclick="javascript:checkWrite()">
<input type="reset" value="다시작성"></td>
</tr>
</table>
</form>
</div>
	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>