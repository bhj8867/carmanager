<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>customer manage</title>

<style>
caption {
	font-size: 20px;
	align: center;
}

nav {
	margin: 0 0 10px 0;
	padding: 0 0 10px 0;
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
	margin: 0 10px;
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
	clear: both;
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
			<li><a href="#">고객정보 목록</a></li>
			<li><a href="#">부품정보 목록</a></li>
			<li><a href="#">홈으로</a></li>
		</ul>
	</nav>

	<div class="section">

		<form name="list" action="">
			<table border="1">
				<caption>회원정보 리스트</caption>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>이메일</th>
					<th>휴대폰번호</th>
					<th>전화번호</th>
					<th>주소</th>
				</tr>

				<!-- DB접속 -->
				<%
					Connection con = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					String jdbc_driver = "com.mysql.cj.jdbc.Driver";
					String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";

					try {
						Class.forName(jdbc_driver);

						con = DriverManager.getConnection(jdbc_url, "root", "1234");

						String sql = "select*from cm";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
					} catch (Exception e) {
						System.out.println("연결오류" + e);
					}
					while (rs.next()) {/* .next():다음 레코드를 읽는다. */
				%>
				<!-- html시작  인덱스번호는 숫자(쌍따옴표X)-->
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td><%=rs.getString(8)%></td>
				</tr>
				<%
					}
				%>


			</table>


		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>