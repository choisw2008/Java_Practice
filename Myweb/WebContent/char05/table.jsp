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
<div class="cntainer">
	<div class="panel panel-success">
			<div class="panel-heading">
			<h2 class="panel-title" align="left">
				게시물 목록
			</h2>
			</div>
			<div class="panel-body">
				<table class="table">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
					</tr>	
					<%for(int i=0; i<10; i++){%>
						
						<%if(i%2==0){%>
						<tr class="danger">
							<th><%=i%></th>
							<th>호호호</th>	
							<th>박영희</th>		
						</tr>
						<%}else{ %>	
						<tr class="success">
							<th><%=i%></th>
							<th>하하하</th>	
							<th>김철수</th>		
						</tr>
						<%}%>				
					<% }%>
				</table>							
			</div>s
		</div>
		<div align="center">
			<ul class="pagination pagination-lg">
					 <li><a href="#">1</a></li>
					 <li class="active"><a href="#">2</a></li>
					 <li><a href="#">3</a></li>
					 <li class="disabled"><a href="#">4</a></li>
					 <li><a href="#">5</a></li>
			</ul>
		</div>
	</div>
</body>
</html>