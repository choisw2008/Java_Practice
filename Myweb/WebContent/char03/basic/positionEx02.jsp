<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp" %>    
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
	div{
		width: 200px;
		height: 100px;
		position: static;/*기본 값*/
	}
	.test1{
		top:50px;
		background: aqua;
	}
	.test2{
		background: fuchsia;
	}
	.test3{
	margin-top:30px;
		width: 300px;
		height: 300px;
		background: yellow;
	}
	</style>
</head>
<body>
	position:static은 기본 값이다.<br>
	top, right, bottom, left 등을<br>지정해도 값이 무시가 됩니다.<br><br>
	<div class="test1">소녀 시대</div>
	<div class="test2">원더 걸스</div>
	<div class="test3">티아라</div>
</body>
</html>