<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		#Box{
			width: 300px;
			height: 600px;
			background-color: yellow;
			border: 6px solid blue;
			margin-top: 40px;
		}
	</style>
</head>
<body>
	<h1>SlideUp, SlideDown, SlideToggle</h1>
	<button id="slideUpBtn">슬라이드 업</button>
	<button id="slideDownBtn">슬라이드 다운</button>
	<button id="slideToggleBtn">슬라이드 토글</button>
	<div id="Box"></div>
	
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#slideUpBtn").on("click", function(){
				$("#Box").slideUp(5000);
			});
			$("#slideDownBtn").on("click", function(){
				$("#Box").slideDown(3000);
			});
			$("#slideToggleBtn").on("click", function(){
				$("#Box").slideToggle(5000);
			});
		});
	</script>
</body>
</html>