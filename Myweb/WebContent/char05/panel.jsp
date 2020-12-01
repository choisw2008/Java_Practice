<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file= "./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>	
	<script type="text/javascript">
		
	</script>
	
</head>
<body>
<div class="container">
	<h3>기본패널</h3>
	<div class="panel panel-default">
		<div class="panel-heading">
		  표 만들기
		</div>
	  	<div class="panel-body">
		  	<table class="table table-hover">
		  		<tr>
			  		 <th>제목</th>
			  		 <th>작성자</th>
		  		</tr>
		  		<tr class="info">
			  		 <th>하하</th>
			  		 <th>홍길동</th>
		  		</tr >
		  		<tr class="warning">
			  		 <th>호호</th>
			  		 <th>박영희</th>
		  		</tr>
		  		<tr class="danger">
			  		 <th>하하</th>
			  		 <th>홍길동</th>
		  		</tr>
		  		<tr class="active">
			  		 <th>호호</th>
			  		 <th>박영희</th>
		  		</tr>
		  		<tr> 
			  		 <th class="danger">하하</th>
			  		 <th class="warning">홍길동</th>
		  		</tr>		  		
		  	</table>
		 </div>
		</div>
	  <hr>
	 <h3>위험 패널</h3>
	 	 
		 <div class="panel panel-danger">
			<div class="panel-heading"
				>Panel Heading
			</div>
		  <div class="panel-body">
		  	Panel Content
		</div>	 
	</div>
</div>
</body>
</html>