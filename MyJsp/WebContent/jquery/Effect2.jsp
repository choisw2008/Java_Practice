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
	<h1>Effect 효과</h1>
	<button id="startBtn">이펙트 효과</button>
	<div id="Box"></div>
	
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#startBtn").on("click", function(){
				$("#Box").fadeOut(500).delay(1000).fadeIn(1000);	
			});
		});
	</script>

</body>
</html>