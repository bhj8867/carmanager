<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%request.setCharacterEncoding("utf-8");%>
<%
Connection con=null;
PreparedStatement pstmt=null;

String jdbc_driver="com.mysql.cj.jdbc.Driver";
String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";

try{
	Class.forName(jdbc_driver);
	out.println("DB 연결중.." + "<br>");
	
	con=DriverManager.getConnection(jdbc_url,"root","1234");
	out.println("DB 연결 성공" + "<br>");

	String sql="insert into cm values(?,?,?,?,?,?,?,?,?,?)";
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("id"));
	pstmt.setString(2,request.getParameter("name"));
	pstmt.setString(3,request.getParameter("password"));
	pstmt.setString(4,request.getParameter("gender"));
	pstmt.setString(5,request.getParameter("id2")+"@"+request.getParameter("domain"));
	pstmt.setString(6,request.getParameter("hp1")+"-"+request.getParameter("hp2")+"-"+request.getParameter("hp3"));
	pstmt.setString(7,request.getParameter("ph1")+"-"+request.getParameter("ph2")+"-"+request.getParameter("ph3"));	
	pstmt.setString(8,request.getParameter("address"));
	pstmt.setString(9,request.getParameter("carnumber"));
	pstmt.setString(10,request.getParameter("carmodel"));
	
	out.println(request.getParameter("id") + "<br>");
	out.println(request.getParameter("name") + "<br>");
	out.println("등록되었습니다." + "<br>");
	
	if(request.getParameter("id")!=null){
		pstmt.executeUpdate();
	}
}catch(Exception e){
	out.print("DB연결 오류"+e);
}






%>
