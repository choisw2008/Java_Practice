<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("JOB", "Programmer");
cookie.setPath("/cookie/sub1/");
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>StoreJobCookie.jsp</title>
</head>
<body>
	<h1>직업 관련 쿠키가 저장되었습니다.</h1>
</body>
</html>













