<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bg {
	background-color: Yellow;
}

.silver {
	background-color: Silver;
}

.magenta {
	background-color: magenta;
}

div {
	font-size: 20px;
}

p {
	font-size: 20px;
	font-weight: bold;
}

span {
	color: red;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		alert('시작시 자동으로 시작됩니다');
		$('div#meclick').click(function() {
			$(this).hide();

		});

		$('#hw').click(function() {
			$(this).addClass('magenta');

		});
		
		$('.bg').click(function() {
			$(this).removeClass('bg');

		});

	});/* 이 문서가 완전히 로딩되고 나서 ... */
</script>

</head>
<body>
	<div onclick="alert('아니');" class="silver">저를 클릭해보세요.</div>
	<div id="meclick">
		<span>클릭</span>하시면 글자가 사라집니다.
	</div>
	<div class="bg">안녕하세요. jQuery!!!</div>
	<div id="hw" class="bg">클릭하시면 배경 색이 바뀝니다.</div>
</body>
</html>






