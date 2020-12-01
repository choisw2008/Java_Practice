<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		#cooktitle1{
		background-color: #FF0033;
		color: #FFFFFF;
		padding: 5px;
		margin-left: 20px;
		border: 1px solid #000000;
		}
		#cooktitle2{
		background-color: #6666ff;
		color: #00001a;
		padding: 5px 10px;
		margin-right: 700px;
		border: 4px solid #000000;
		}
		.mystyle01{
		color: #FF0000;
		font-weight: bold;
		border-bottom: 1px dashed #FF0000;
		}
		.mystyle02{
		color: #FFRR00;
		font-weight: normal;
		border-width:5px;  
    	border-style:groove;
		}
	</style>
</head>
<body>
	<h1>클래스 선택자 사용하기</h1>
	<hr>
	<h2>닭칼국수</h2> 
	
		<h3 id="cooktitle1">재료-4인분 기준</h3>
	<ul>
		<li>밀가루 3컵</li>
		<li>닭 1/2마리 </li>
		<li>호박 1/2개 </li>
		<li>부추 50g</li>
		<li>생강,소금, 후추, 참기름</li>
	</ul>
	<h3 id="cooktitle2">조리법</h3>
	<ol>
		<li>밀가루에 <span class="mystyle01">소금</span>과 달걀을 넣고 반죽하여 밀대로 밀어 0.5cm 두께로 썬다.쟁반에 펼쳐 굳지 않게 가제로 덮어놓는다. </li>
		<li>첫번째 썰은 재료에 두부를 팬에 기름을 두르고 노릇노릇하게 앞뒤로 지져 기름은 뺀다. </li>
		<li>닭은 내장과 필요없는 지방을 제거하고 깨끗이 씻는다. <span class="mystyle01 mystyle02">생강</span>을 저며 넣고 찬물을 부어 </li>
		<li>푹 삶아 닭고기는 살을 곱게 찢어 소금, 후추, 참기름에 양념하여 무쳐 놓고 국물은 가제로 걸러 육수로 사용한다. </li>
		<li>호박은 채 썰고 부추도 다듬어 씻어 4cm 길이로 썰고, 홍고추, 파, 마늘은 곱게 다진다.간장, 깨소금, 참기름을 섞어 양념장을 만든다.</li> 
		<li>닭국물이 끓으면 썰어 놓은 <span class="mystyle01">칼국수</span>를 넣어 서로 붙지 않게 한소끔 끓인 다음 </li>
		<li>호박과 부추, 양념한 닭고기를 넣고 다시 한소끔 끓여서 양념장과 김치를 곁들여 먹는다.</li>
	</ol>
</body>
</html>