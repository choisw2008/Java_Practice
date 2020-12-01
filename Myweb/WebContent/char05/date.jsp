<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file= "./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>	
	<style type="text/css">
	 .badge{background-color: #ff00ff;}
	 
	</style>
	<script type="text/javascript">
		function func1(){
			alert('유효성 검사');
			return false;
		}
		$(document).ready(function(){
		  $('[data-toggle="popover"]').popover();
		});
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
				<div class="col-sm-12">
					<div class="col-sm-4" align="center">
					<table class="table table-bordered" border="0">
						<tr>
							<td align="center">
							   <img align="middle" width="180" height="180" class="img-circle"
							  alt="middle" src="./..//images/사진1212.png">							
							</td>
						</tr>
					</table>
					</div>			
					<div class="col-sm-8" align="center">
						<table class="table table-hover table-striped" border="0">
							<tr>
								<td width="25%">이름</td>
								<td width="75%">
									<form class="form-horizontal" action="/action_page.php">
										<div class="form-group">
											   	 <div class="col-sm-8">
											     <input type="text" class="form-control" id="qty" 
											     placeholder="이름을 입력 해주세요."
											     data-toggle="popover" title="이름 입력란"
											     data-content="당신의 플레이명을 입력받겠습니다."
											     data-placement="auto top"
											     data-trigger="hover">
											 </div>
											 	 <div class="col-sm-3">
											     <input type="button" class="btn-info form-control" 
											     value="입력" onclick="return func1();">
											 </div>
										</div>
									</form>
								</td>
							</tr>
							<tr>
								<td width="25%">나이</td>
								<td width="75%">
								 	<form class="form-horizontal" action="/action_page.php">
										<div class="form-group">
											   	 <div class="col-sm-8">
											     <input type="text" class="form-control" id="qty" 
											     placeholder="나이을 입력 해주세요."
											     data-toggle="popover" title="나이 입력란"
											     data-content="당신의 현재 존재일수 (년)을(를) 입력받겠습니다."
											     data-placement="auto top"
											     data-trigger="hover">
											 </div>
											 	 <div class="col-sm-3">
											     <input type="button" class="btn-info form-control" 
											     value="입력" onclick="return func1();">
											 </div>
										</div>
									</form>
								</td>
							</tr>
							<tr>
								<td width="25%">직업 적성결과</td>
								<td width="75%">이세계<span class="label label-info">player</span></td>
							</tr>
							<tr>
								<td width="25%">요구사항</td>
								<td width="75%">
									<form class="form-horizontal" action="/action_page.php">
										<div class="form-group">
											   	 <div class="col-sm-8">
											     <input type="text" class="form-control" id="qty" 
											     placeholder="요구 사항을 입력 해주세요."
											     data-toggle="popover" title="요구 사항 입력란"
											     data-content="요구 하시고자 하는 내용을 입력해 주세요."
											     data-placement="auto top"
											     data-trigger="hover">
											 </div>
											 	 <div class="col-sm-3">
											     <input type="button" class="btn-info form-control" 
											     value="입력" onclick="return func1();">
											 </div>
										</div>
									</form>
								</td>
							</tr>
							<tr>
								<td width="25%">환생 일자</td>
								<td width="75%">0000/00/00</td>
							</tr>
						</table>
					</div>
				</div>
					<hr>
					<div class="col-md-dffset-5 colmd-4">
					<button class="btn btn-primary" onclick="history.back">
					돌아가기
					</button>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>




