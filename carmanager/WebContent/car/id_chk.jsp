<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>필수항목체크, 아이디 중복 체크 자바스크립트</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String jdbcdriver = "com.mysql.cj.jdbc.Driver";
		String jdbcurl = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";

		try {//드라이버 로드
			Class.forName(jdbcdriver);
			//
			conn = DriverManager.getConnection(jdbcurl, "root", "1234");
			String id = request.getParameter("id");
			String sql = "select * from cm where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {//값이 true이면 있는 아이디, 입력한 아이디 하나만 있는지 확인하면 되니까 if문->동작이니까 자바스크립트주기!
	%><!-- jsp끝,html시작-->

	<script type="text/javascript">
		alert("중복 아이디\n 이미 등록된 아이디 입니다.");
		history.back();/* 이전 페이지로 돌아가는 메소드 */
	</script>

	<%
		/* jsp시작 */

			} else {/* 값이 false이면 db에 없는 아이디 이므로 사용 가능 */
	%><!-- jsp끝 -->

	<script type="text/javascript">
		alert("사용가능 아이디 입니다.");
		history.back();/* 이전페이지로 돌아가기 */
	</script>

	<%
		/* 스크립트 끝났으니 다시 jsp 시작 */
			}
		} 
		catch (SQLException e) {
			e.getMessage();
		}

		String id = request.getParameter("id");
		out.print("id : " + id);
	%>
</body>
</html>