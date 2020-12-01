<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>Keypress() method</h1>
	<p>글자를 입력하세요</p>
	<input type="test" id="inValue"/>
	<h2><p id="keyValue"></p></h2>
	 


	<script src="../js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			$("#inValue").on("keypress",function(event){
				$("#keyValue").html(event.type + "=>" + event.which);
			});
		});
	</script>
</body>
</html>