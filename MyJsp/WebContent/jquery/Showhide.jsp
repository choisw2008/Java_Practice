<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>요소 숨기기와 표시하기</h1>
	<button id="showBtn">요소 보이기</button>
	<button id="hidBtn">요소 숨기기</button>
	<button id="toggleBtn">요소 토글</button>
	<p id="test">ㅁㄴㅇㅁㄴㅇㅁㄴㅇㄴㅁ</p>
	
	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#showBtn").on("click", function(){
				$("#test").show();
			});
			$("#hidBtn").on("click", function(){
				$("#test").hide();
			});
			$("#toggleBtn").on("click", function(){
				$("#test").toggle();
			});
		})
	</script>
</body>
</html>