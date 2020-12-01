<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<nav class="navbar navbar-default navbar-fixed-bottom">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" 
				data-toggle="collapse" data-target="#myNavbar_bottom">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<!-- form-group이 있어야 삼선 버튼에 메뉴가 출력된다. -->
		<!-- button에 있는 data-target에는 #을 붙여야 아이디와 연결된다. -->
		<div class="form-group collapse navbar-collapse text-center" id="myNavbar_bottom"
			style="padding-top: 20px">
			<div class="col-sm-4">
				<p><span class="glyphicon glyphicon-phone"></span> +82 02-1234-5678</p>
			</div>
			<div class="col-sm-4">
				<p><span class="glyphicon glyphicon-envelope"></span> aaa@222222.com</p>
			</div>
			<div class="col-sm-4">
				<p><span class="glyphicon glyphicon-map-marker"></span> Seoul, Korea</p>
			</div>
		</div>
	</div>
</nav>