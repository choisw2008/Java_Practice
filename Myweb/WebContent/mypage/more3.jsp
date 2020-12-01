<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style >
	.pagination {
	  margin-left: 400px;
	}
	.navbar{
	 margin-right: 20px;
	}
	footer{
		background-position: bottom;
		background-color: #2d2d30;
	}
	footer p{
		color: #ffffff;
	}
	.container a{
	 float: right;	
	}
	
	</style>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8081/Myweb/mypage/mainpage.jsp#">suwon-studio</a>
   </div>
    <ul class="nav navbar-nav">
	  <li><a href="http://localhost:8081/Myweb/mypage/more01.jsp">중고 피규어</a></li>
	    <li><a href="http://localhost:8081/Myweb/mypage/more2.jsp">자작 피규어</a></li>
		<li><a href="http://localhost:8081/Myweb/mypage/more3.jsp">게시판</a></li>
		<li class="dropdown">
	          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
	          <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="http://localhost:8081/Myweb/mypage/more01.jsp">중고피규어</a></li>
	            <li><a href="http://localhost:8081/Myweb/mypage/more2.jsp">자작피규어</a></li>
	            <li><a href="http://localhost:8081/Myweb/mypage/more3.jsp">게시판</a></li> 
	          </ul>
	        </li>
	        
	        
    </ul>
    <form class="navbar-form navbar-right" action="/action_page.php">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
</nav>

<div class="container">
	<a href="#" class="btn btn-default" role="button">글쓰기</a>
</div>

<div class="container" >
	<h2>게시판 Table</h2>
	 <p>게시판 피규어 판매 목록:</p>            
	  <table class="table table-bordered" >
	    <thead>
	      <tr>
	      	<th>게시물</th>
	        <th>Firstname</th>
	        <th>Lastname</th>
	        <th>Email</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	      	<td>John</td>
	        <td>John</td>
	        <td>Doe</td>
	        <td>john@example.com</td>
	      </tr>
	      <tr>
	     	 <td>John</td>
	        <td>Mary</td>
	        <td>Moe</td>
	        <td>mary@example.com</td>
	      </tr>
	      <tr>
	      	<td>John</td>
	        <td>July</td>
	        <td>Dooley</td>
	        <td>july@example.com</td>
	      </tr>
	    </tbody>
	  </table>
</div>

<div class="container">
	<ul class="pagination">
	  <li><a href="#">1</a></li>
	  <li><a href="#">2</a></li>
	  <li><a href="#">3</a></li>
	  <li><a href="#">4</a></li>
	  <li><a href="#">5</a></li>
	</ul>
</div>

<div id="container"><a href="./../mypage/game1.jsp" class="btn btn-default" role="button" onclick="window.open('./../mypage/game1.jsp','new','scrollbars=yes,resizable=no,width=660, height=930, left=0,top=0');return false">Game1</a></div>


<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>SUWON -Blog  By <a href="https://blog.naver.com/choisw2008" data-toggle="tooltip" title="Visit w3schools">https://blog.naver.com/choisw2008</a></p> 
</footer>

</body>
</html>