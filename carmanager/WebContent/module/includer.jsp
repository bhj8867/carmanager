<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Includer</title>
</head>
<body>
includer.jsp에서 출력하는 내용:<%="Hello World!" %>
<jsp:include page="sub.jsp" flush="false">
includer 액션 태그 수행 이후에 출력하는 내용

</body>
</html>