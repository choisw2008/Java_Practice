<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file= "./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>테이블 만들기</h1>
	<hr>
	<table summary="2020년8월데이터" border="1">
		<tr>
			<th scope="col" id="mRank">순위</th>
			<th scope="col" id="mTitle">제목</th>
			<th scope="col" id="mtype">장르</th>
			<th scope="col" id="mPre">지난 주 순위</th>
		</tr>
		<tr>
			<th align="center" scope="row" id="mRank">1</th>
			<th scope="row" id="mTitle">캐리비안의해적</th>
			<th scope="row" id="mtype">판타지</th>
			<th scope="row" id="mPre">없습</th>
		</tr>
		<tr>
			<th scope="row" id="mRank">2</th>
			<th scope="row" id="mTitle">트랜스포머</th>
			<th scope="row" id="mtype"colspan="2">SF</th>
			<th scope="row" id="mPre">없습</th>
		</tr>
	</table>
</body>
</html>