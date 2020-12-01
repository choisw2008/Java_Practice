<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp" %>    
<!DOCTYPE HTML>
<html>
	<head>
		<title>이미지 요소를 세로로 배치하기</title>
		<meta charset="UTF-8" />
		<style type="text/css">
		bodu{
			margin-top: 30;
		}
		#newBookBox{
		margin: 30px auto;
		width: 400px;
		background-color: #cccc99;
		padding: 20px;
		border-radius: 10px;
		}
		button{
			font: 20px 돋움arial;
			color: #ffffff;
			background-color: #2299cc;
			border-radius: 20px;
			padding: 5px 30px;
			margin-bottom: 20px;
		}
		img{
			border:  3px grove #999999;
			background-color: #efefef;
			padding: 5px;
			margin: 0px auto 25px auto;
			display: block; /* block inline */
		}
		</style>
	</head>
	<body>
		<div id="newBookBox">	
			<button>New Book</button>
			<input type="text" placeholder="검색어 입력"  >
			
			<div>
				<img src="../../images/new_book1.gif" width="80" height="100" alt="파워포인트" />
				<img src="../../images/new_book2.jpg" width="80" height="100" alt="아이폰 프로그래밍" />
				<img src="../../images/new_book3.gif" width="80" height="100" alt="프레젠테이션" />
				<img src="../../images/new_book4.gif" width="80" height="100" alt="포토샵" />
			</div>
			
		</div>
	</body>
</html>