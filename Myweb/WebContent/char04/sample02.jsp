<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp" %>    
<!DOCTYPE html>
<HTML>
<HEAD>
	<TITLE> JQuery 실습하기 </TITLE>
	<script type="text/javascript">
		$(document).ready(function(){
			/*자바 스크립트에서 변수선언시  var를 사용합니다.*/
			var first = $('h1');
			var second = $('h2');
			
			first.css('background-color', 'yellow');
			first.css('color', 'blue');
			
			/*메소드 체이닝*/
			second.css('background-color', 'black').css('color', 'yellow');
			
			/*이전 스타일을 제거하기*/
			first.css('background-color', '');
			
			/*특정위치에 html 소스코드를 작성합니다.*/
			$('#myarea').html("안녕<b>메롱 </b>")	
			
			var result = '';
			var searchItems = $('p,span,div.simpletext1');
			/**/
		
		result += '검색 요소 수: ' + searchItems.length + '<br>';
			
		searchItems.each(function(index,element){
			/*alert(index + '/' + element);*/
			result +=$(this).text() + '&nbsp;&nbsp;&nbsp;';
		 });
			
			$('#myarea').html(result);
			
		});
	</script>
</HEAD>
<BODY>
	<h1>jQuery 실습하기</h1>
	<h2>jQuery 실습하기</h2>
	
	<h4>한 번에 다양한 엘리먼트에 접근하여 개수와 텍스트 얻기 : selector1, selector2, selectorN</h4>
	<span>simple</span>
	<div class='simpletext1'>jQuery</div>
	<div>basic</div>
	<p>example</p>	
	<hr>
	<div id="myarea"></div>
</BODY>
</HTML>