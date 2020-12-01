<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp" %>    
<!DOCTYPE HTML>
<html>
<head>
	<title>단 구성하고 float 해제하기</title>
	<meta charset="UTF-8" />
	<style type="text/css">
		body{
			font: 12px "맑은 고딕", 돋움, aeial;
			margin-top: 12px;
			margin-left: 20px;
		}
		h1{/*상단 타이틍*/
			font-size: 2em;
			background-color: #66ffcc;
			border-radius: 25px;
			color: #000000;
			width: 300px;
			margin: 0px;
			padding: 0px;
			text-align: center;
			}
		h2{/*본문  내 항목들의메인 제목*/
			font-size: 1.5em;
			padding-top: 20px;
			padding-left: 120px;
			letter-spacing: -2px;
			text-shadow: -1px -1px 15px #000000;
			}
		h3{/*본뮨 내 항목들의 작은 제목*/
				font-size: 1.1em;
				padding-left: 120px;
				letter-spacing: -2px;
				font-weight: normal;
				color: #8d8d8d;
			}
		p{/*본문 내용*/
				text-align: right;
				padding-right: 40px;
				border: 0px solid #FFCCDD;
			}
		a{
				color: #333333;
				text-decoration: none;
				font-weight: bold;
				font-family: "Arial black", arial;
			}
		.book1,.book2,.book3,.book4{
				width: 350px;
				height: 150px;
				margin-top: 10px;
				background-color: #EEEEEE;				
			}
		.book1{
				background: url(./../../images/bg_sm01.png)no-repeat;
				float: left;
			}
			.book2{
				background: url(./../../images/bg_sm02.png)no-repeat;
				float: left;
				margin-left: 20px;
			}
			.book3{
				background: url(./../../images/bg_sm03.png)no-repeat;
				float: left;
				margin-top: 20px;
			}
			.book4{
				background: url(./../../images/bg_sm04.png)no-repeat;
				float: left;
				margin-left: 20px;
				margin-top: 20px;
			}
			
	</style>
</head>

<body>
	<header>
		<h1>시리즈 안내</h1>
	</header>
	<section>
		<div class="book1">
			<h2>실력이 탐나는 시리즈</h2>
			<h3>전략적 실전 대비 입문서</h3>
			<p>
				<a href="http://infopub.co.kr" target="_blank"
					title="정보문화사 사이트로 이동합니다.">&gt;&gt; GO</a>
			</p>
		</div>
		<div class="book2">
			<h2>길라잡이 시리즈</h2>
			<h3>단계별로 배울 수 있는 지침서</h3>
			<p>
				<a href="http://infopub.co.kr" target="_blank"
					title="정보문화사 사이트로 이동합니다.">&gt;&gt; GO</a>
			</p>
		</div>
		<div class="book3">
			<h2>회사 실무에 힘을 주는 시리즈</h2>
			<h3>자연스럽게 익히는 OA 핵심 기능 수록</h3>
			<p>
				<a href="http://infopub.co.kr" target="_blank"
					title="정보문화사 사이트로 이동합니다.">&gt;&gt; GO</a>
			</p>
		</div>
		<div class="book4">
			<h2>눈길 시리즈</h2>
			<h3>IT 실무 교재 시리즈</h3>
			<p>
				<a href="http://infopub.co.kr" target="_blank"
					title="정보문화사 사이트로 이동합니다.">&gt;&gt; GO</a>
			</p>
		</div>
	</section>
</body>
</html>