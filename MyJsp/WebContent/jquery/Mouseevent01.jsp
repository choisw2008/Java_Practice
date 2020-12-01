<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Mouseevent01.jsp -->
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>on() method</h1>
	<button>마우스를 올려놓으신 후에 클릭을해주세요</button>
	<p id="test"></p>


	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
	$(function() {
		$("button").on({
			mouseenter: function() {
				$("#test").append("마우스가 버튼위로 올라갔습니다.<br>");
			},
			click: function() {
				$("#test").append("마우스가 버튼을 틀릭했습니다.<br>");
			},
			mouseleave: function() {
				$("#test").append("마우스가 버튼 위에서 벗어 났습니다..<br>");
			}
		});
		$("#removeBtn").on("click",function(){
			$("#appendBtn").off("mouseenter");
			$("#appendBtn").off("click");
			$("#appendBtn").off("mouseleave");
		});
	});
	</script>
</body>
</html>