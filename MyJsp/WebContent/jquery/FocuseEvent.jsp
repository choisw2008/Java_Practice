<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>focusein() focusout()</h1>
	<p>텍스트 필드를 클릭해 보세요</p>
	<input type="test" id="test"/>



	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#test").on("focusin", function(event){
				$(this).css("backgroundColor", "yellow");
		});			
				$("#test").on("focusout", function(event){
					$(this).css("backgroundColor", "magenta");
			});
		});
	</script>
</body>
</html>