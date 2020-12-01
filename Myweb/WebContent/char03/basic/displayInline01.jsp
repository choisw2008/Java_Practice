<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp" %>    
<!DOCTYPE HTML>
<html>
<head>
	<title>목록 요소를 가로로 배치하기</title>
	<meta charset="UTF-8">
	<style type="text/css">
	bosy{
		margin: 50px 0px;
	}
	#topMenu{/*목록을 담고 있는 박스*/
		list-style: none;
		width: 100%;
		background-color: #ff66dd;
		margin: 0px;
		padding: 0px;
		text-align: center;;
	}
	#topMenu li{
		display: inline;
		padding-left: 50px;
	}
	a {
		color: #ffffff;
		font: 1.5em 돋움 serif;;
		text-decoration: none;
	}
	</style>
</head>

<body>
	<ul id="topMenu">
		<li><a href="https://en.dict.naver.com/#/entry/enko/dec6073201cd47be84f0109a136f9ca8">Home</a></li>
		<li><a href="#">About</a></li>
		<li><a href="#">Sitemap</a></li>
		<li><a href="#">BBS</a></li>
		<li><a href="http://www.dongponews.net/news/articleView.html?idxno=42492">Help</a></li>
	</ul>
</body>
</html>