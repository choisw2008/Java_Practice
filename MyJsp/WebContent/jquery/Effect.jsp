<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style >
		#Box{
			width: 200px;
			height: 200px;
			background-color: blue;
			border: 4px solid black;
			margin-top: 30px;				
			}
	</style>
</head>
<body>
	<h1>Effect 효과 정지와 중지</h1>
	<p></p>
	<button id="toggleBtn">이펙트 효과</button>
	<button id="stopBtn">이펙트 정지</button>
	<button id="finishBtn">이펙트 중지</button>
	<div id="Box"></div>
		
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#toggleBtn").on("click", function(){
				$("#Box").slideToggle(3000);	
			});
			$("#stopBtn").on("click", function(){
				$("#Box").stop(3000);	
			});
			$("#finishBtn").on("click", function(){
				$("#Box").finish();	
			});
		});
	</script>

</body>
</html>