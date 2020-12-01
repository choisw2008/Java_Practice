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

footer p{
	background-position: bottom ;
	background-color: #2d2d30;
	color: #ffffff;
	padding: 10px
	}
.btn {
	 padding: 8px 10px;
	 background-color: #333;
	 color: #f1f1f1;
	 border-radius: 4;
	 transition: .2s;
  }
 .btn:hover, .btn:focus {
	 border: 1px solid #333;
	 background-color: #fff;
	 color: #000;
	}

.carousel-inner img {
    -webkit-filter: grayscale(45%);
    filter: grayscale(45%); /* make all photos black and white */ 
    width: 35%;
    margin: auto;
  }
  .thumbnail {
  	margin-top: 9px;
    font-size: 12px;
    padding: 0 0 15px 0;
    border: 2;
    border-radius: 4;
  }
  .pagination{
  	margin-left: 46%;
  }
 
	
	</style>
</head>
<body>


<div class=" text-center">
  <h1 id="fofo">다양한 마이스터</h1>
  <p>각각의 장인들이 올린 작품들을 확인해보세요</p> 
</div>

<div class="container">
  <div class="btn-group btn-group-justified">
    <a href="./../mypage/mainpage.jsp" class="btn btn-primary">Home</a>
    <a href="./../mypage/more01.jsp" class="btn btn-primary">중고</a>
    <a href="./../mypage/more2.jsp" class="btn btn-primary">자작</a>
    <a href="./../mypage/more3.jsp" class="btn btn-primary">게시판</a>
  </div>
</div>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

<div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="./../images/모델1.jpg" alt="모델1" width="1100" height="550">
        <div class="carousel-caption">
          <p>좋은 퀄리티의 제품과 보존도가 좋은 중고 제품들</p>
        </div>      
      </div>
      <div class="item">
        <img src="./../images/모델4.jpg" alt="모델4" width="1100" height="550">
        <div class="carousel-caption">
          <p>만들고 다른 사람에게도 자신의 캐릭터를 팔아보자</p>
        </div>      
      </div> 
      <div class="item">
        <img src="./../images/모델2.jpg" alt="모델3" width="1100" height="550">
        <div class="carousel-caption">
          <p>그저 팔기만 하지말고 자작 캐릭터의 설정특징을 알리고 팬으로 만들어 보자!</p>
        </div>      
      </div>
      <div class="item">
        <img src="./../images/모델3.jpg" alt="모델4" width="1100" height="550">
        <div class="carousel-caption">
          <p>그저 팔기만 하지말고 자작 캐릭터의 설정특징을 알리고 팬으로 만들어 보자!</p>
        </div>      
      </div>
    </div>

 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>


<div class="row text-center">
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p> 
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
    <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p> 
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
    <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
    <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p> 
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p> 
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
       <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p> 
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
       <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p> 
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
     <div class="col-sm-3">
        <div class="thumbnail">
          <img src="" alt="이미지 업로드" width="200" height="400">
          <p><strong>프로필</strong></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Click</button>
        </div>
      </div>
    </div>
    
  
  <!-- 클릭시 팝업 창 -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
    
      <!-- Modal 팝업창 세부 내용-->
<div class="modal-content">
     <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> BUYS</h4>
       	</div>
    <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> 원하시는 작품을 검색하세요</label>
              <input type="number" class="form-control" id="psw" placeholder="Search list?">
            </div>
   <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 연락처를 남겨주세요</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
              <button type="submit" class="btn btn-block">Play 
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
  <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
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

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>SUWON -Blog  By <a href="https://blog.naver.com/choisw2008" data-toggle="tooltip" title="Visit w3schools">https://blog.naver.com/choisw2008</a></p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();
      // Store hash
      var hash = this.hash;
      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){  
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>