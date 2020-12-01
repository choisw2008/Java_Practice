<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file= "./../common/common.jsp"%>
 <%
 	 int leftside = 4;
 	 int rightside = twelve-leftside;
 	 int myoffset = 3; //옵셋수
 	 int mywidth = twelve-2*myoffset;//옵셋을 제외한 너비
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>	
	<style type="text/css">
		.style1{
			background-color: red;
		}

		.style2{
			background-color: blue;	
		}

		.style3{
			background-color: green;
		}
	</style>
	
</head>
<body>
	<div Class="container-fluid">
		<h1>3등분</h1>
		<div Class="row">
			<div Class="col-sm-4 style1">첫번째</div>
			<div Class="col-sm-4 style2">두번째</div>
			<div Class="col-sm-4 style3">세번째</div>
		</div>	
	</div>
	<hr>
	<div Class="container">
		<h1>3등분</h1>
		<div Class="row">
			<div Class="col-sm-4 style1">첫번째</div>
			<div Class="col-sm-4 style2">두번째</div>
			<div Class="col-sm-4 style3">세번째</div>
		</div>	
	</div>
	<hr>
	<div Class="container-fluid">
		<h1>1대2 등분</h1>
		<div Class="row">
			<div Class="col-sm-4 style1">첫번째</div>
			<div Class="col-sm-8 style2">두번째</div>
			
		</div>	
	</div>
	<hr>
	
	<%=myoffset+20 %>
	<div Class="container">
		<h1>옵셋</h1>
		<div Class="row">
			<div Class="col-sm-offset-<%=myoffset %> col-sm-<%=mywidth %> style1">첫번째</div>			
		</div>	
	</div>
	<hr>
</body>
</html>