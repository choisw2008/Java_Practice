<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>더블 클릭 이벤트</h1>
	<p>버튼을 <span id="singleClick">클릭</span>또는
	<span id="boubleClick">더블클릭</span>하세요</p>
	<button>Click</button>
	<p id="test"></p>



	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
	$(function() {
		$("button").click(function() {
			$("#singleClick").css("color","red");
			$("#boubleClick").css("color","blue");		
		});
		$("button").dbclick(function() {
			$("#singleClick").css("color","blue");
			$("#boubleClick").css("color","red");		
		});
		$("button").hover(function() {
			$("#test").append("hover........");
		});
	});
	</script>
</body>
</html>