<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		div{
		width: 200px;
		height: 200px;
		background-color: yellow;
		border: 6px solid orange;
		margin-top: 30px;
		}
	</style>
</head>
<body>
	<h1>페이드 투명도 테스트</h1>
	<button id="fadeBtn">페이드 아웃</button>
	<div id= "box01"></div>
	<div id= "box02"></div>
	<div id= "box02"></div>

	
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#fadeBtn").on("click", function(){
				$("#box01").fadeTo(2000,0.2);
				$("#box02").fadeTo(2000,0.5);
				$("#box03").fadeTo(2000,0.8);
			});
		});
	</script>
</body>
</html>