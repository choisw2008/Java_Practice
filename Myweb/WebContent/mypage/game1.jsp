<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>캔바스. 테트리스</title>
<style>

	body{
    font: 400 15px/1.8 Lato, sans-serif;
     
  }
  #myNavbar{
    color: #fff; 
  	background-color: #797986;
  	opacity: 0.6;
  	padding: 30px 20px;
  }
   #myNavbar p{
   	font-size: 25px;
  	list-style-type: none; 
  	float: left;
 	margin-left: 10px;
 	margin-top: -15px;
  }
  
  #myNavbar li{
  	list-style-type: none; 
  	float: right;
 	margin-left: 18px;

  }
  
</style>
	
	
</head>

<body>
	<div id="myNavbar">
	<p>sowon-studio</p>
		<ul>
			<li><a href="#">Producer</a></li>
			<li><a href="#">Figute</a></li>
			<li><a href="#">Band</a></li>
			<li><a href="./../mypage/catalog.jsp">Catalog</a></li>
		</ul>
	</div>
<br/>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
// 기본 초기화
var init=false;
var myCanvas;
var Context;

var Mode=1; // 1=게임중, 2=게임오버
const MODE_GAME=1;
const MODE_GAMEOVER=2;

var tetrix_blockbox_boxsize=25;
var tetrix_blockbox_top=50;
var tetrix_blockbox_left=280;

var tetrix_blockbox;

var score;

var RunEvent;
var RunEventTime = 500;
var level=1;
var exp=0;

// 테트리스 블럭박스 초기화
function tetrix_blockbox_init()
{
	// 20행 10열의 박스 생성
	tetrix_blockbox=new Array();
	for(i=0;i<20;++i)
	{
		tetrix_blockbox.push(new Array(10));
		// 모두 0으로 채운다
		for(j=0;j<10;++j)tetrix_blockbox[i][j]=0;
	}
}

// 5가지 타입 블록
var tetrix_block;

// 현재 사용중인 블록
var tetrix_block_this;

// 5가지 블럭 초기화
function tetrix_block_init()
{
	tetrix_block=new Array();

	// 첫번째 블럭
	// □□□□
	tmp=new Array();
	tmp.push(0,0); tmp.push(0,1); tmp.push(0,2); tmp.push(0,3);
	tetrix_block.push(tmp);

	// 두번째 블럭
	// □□□
	//  □
	tmp=new Array();
	tmp.push(0,0); tmp.push(0,1); tmp.push(0,2); tmp.push(1,1);
	tetrix_block.push(tmp);

	// 세번째 블럭
	// □□
	//  □□
	tmp=new Array();
	tmp.push(0,0); tmp.push(0,1); tmp.push(1,1); tmp.push(1,2);
	tetrix_block.push(tmp);

	// 네번째 블럭
	//  □□
	// □□
	tmp=new Array();
	tmp.push(0,1); tmp.push(0,2); tmp.push(1,0); tmp.push(1,1);
	tetrix_block.push(tmp);

	// 다섯번째 블럭
	// □□
	// □□
	tmp=new Array();
	tmp.push(0,0); tmp.push(0,1); tmp.push(1,0); tmp.push(1,1);
	tetrix_block.push(tmp);

	// 여섯번째 블럭
	// □□□
	// □
	tmp=new Array();
	tmp.push(0,0); tmp.push(0,1); tmp.push(0,2); tmp.push(1,0);
	tetrix_block.push(tmp);

	// 일곱째 블럭
	// □□□
	//   □
	tmp=new Array();
	tmp.push(0,0); tmp.push(0,1); tmp.push(0,2); tmp.push(1,2);
	tetrix_block.push(tmp);
}

// 현재 떨어지는 블록번호와 좌표
var tetrix_block_number=1;
var tetrix_block_x=3;
var tetrix_block_y=0;


var bgImage = new Image();
var blockImage = Array();

var bgSound = new Audio();
var blockSound = new Audio();
var block10Sound = new Audio();

// 초기화
function Init(){

	if(init==false)
	{
		myCanvas=document.getElementById("MyCanvas");
		Context=myCanvas.getContext("2d");


		// 이미지 로딩
		bgImage.src="./../images/뒷배경.jpg";		
		for(i=0;i<7;++i)blockImage.push(new Image());
		blockImage[0].src="https://i.imgur.com/zdluTLl.png";
		blockImage[1].src="https://i.imgur.com/BCpg8vG.png";
		blockImage[2].src="https://i.imgur.com/X4MIbXi.png";
		blockImage[3].src="https://i.imgur.com/80Xv589.png";
		blockImage[4].src="https://i.imgur.com/ZaQNHG6.png";
		blockImage[5].src="https://i.imgur.com/9RXm6Tp.png";
		blockImage[6].src="https://i.imgur.com/TnoZ1LF.png";

		// 사운드 로딩
		bgSound.src="./../sound/mario+bgm.mp3";
		bgSound.volume=0.2;
		bgSound.playbackRate=1.0;
		blockSound.src="./../sound/mario+bgm.mp3";
		block10Sound.src="./../sound/mario+boss+bgm.mp3";

		tetrix_block_init();	// 5가지 블럭 모양 초기화
		tetrix_blockbox_init();	// 블럭상자 초기화
		tetrix_block_number=Math.floor(Math.random()*6.9);
		tetrix_block_this = tetrix_block[tetrix_block_number].slice();
		score=0;		
		init=true;
	}
}


function CheckConflict()
{
	var size=tetrix_block_this.length;
	for(k=0;k<size;k+=2)
	{
		check_y = tetrix_block_y + tetrix_block_this[k];
		check_x = tetrix_block_x + tetrix_block_this[k+1];
		if(check_y < 0 )continue;	// y좌표가 0보다 적은 사각형은 중돌 검사를 안함
		// 겹치는 경우
		if(check_x < 0 || check_x >=10 || check_y >= 20 || tetrix_blockbox[check_y][check_x]!=0)return true;
	}
	return false;
}
		
function Run()
{
	// 블럭을 떨어뜨리지도 않았는데 충돌해 있으면
	// 게임오버
	if(CheckConflict()) 
		Mode=MODE_GAMEOVER;

	if(Mode==MODE_GAME)
	{	
		bgSound.play();

		// 블럭을 한칸 떨어뜨리고
		tetrix_block_y++;

		// 겹침검사	
		if(CheckConflict())
		{
			// 다시 위로 이동시킨 다음
			tetrix_block_y--;
			var size=tetrix_block_this.length;
			// 블럭을 블럭판에 박는다
			for(k=0;k<size;k+=2)
			{
				check_y = tetrix_block_y + tetrix_block_this[k];
				check_x = tetrix_block_x + tetrix_block_this[k+1];
				tetrix_blockbox[check_y][check_x]=tetrix_block_number + 1;
			}
			blockSound.play();
			score++;

			// 꽉참 줄 검사
			for(i=0;i<20;++i)
			{
				// 한줄 단위로 0이 아닌 블럭을 세서 
				sum=0;
				for(j=0;j<10;++j)
					if(tetrix_blockbox[i][j]!=0)
						sum++;

				// 합계가 10이면 꽉찬 것
				if(sum==10)
				{
					// 위의 내용을 아래로 복사해준다.
					for(k=i;k>0;--k)
						for(j=0;j<10;++j)
							tetrix_blockbox[k][j]=tetrix_blockbox[k-1][j];
					score+=10;

					// 난이도 레벨을 증가시키기 위해 경험치 증가
					exp++;
					if(exp>=10){
						level++; exp=0;
						RunEventTime-=50;
						clearInterval(RunEvent);
						RunEvent = setInterval(Run, RunEventTime);
						bgSound.playbackRate=1.0 + (level-1) * 0.05;
					}
					block10Sound.play();
				}
			}

			// 블럭을 다시 제일 위로 생성시키고
			tetrix_block_y=0;
			tetrix_block_x=3;
			// 블럭번호도 바꿔 주자
			tetrix_block_number=Math.floor(Math.random()*6.9);
			tetrix_block_this=tetrix_block[tetrix_block_number].slice();

		}
	}
	else if(Mode==MODE_GAMEOVER)
	{
		bgSound.pause();
	}

	// 그리기 이벤트
	onDraw();
}

function RotateBlock()
{
	switch(tetrix_block_number)
	{
		case 0: case 1: case 2: case 3: case 5: case 6:
			// 첫번째 블럭
			// □□□□
			// 두번째 블럭
			// □□□
			//  □
			// 세번째 블럭
			// □□
			//  □□
			// 네번째 블럭
			//  □□
			// □□
			centerY=0; centerX=1;	// ( 0, 1 ) 지점을 중심
			break;
		case 4:
			// 다섯번째 블럭
			// □□
			// □□
			return;
	}

	// 회전
	// x ← -y
	// y ← x
	// 이전 형태를 미리 기억
	tetrix_block_save = tetrix_block_this.slice();
	for(i=0;i<tetrix_block_this.length;i+=2)
	{
		y=tetrix_block_this[i+1] - centerX;
		x=-(tetrix_block_this[i] - centerY);
		tetrix_block_this[i]=y + centerY;
		tetrix_block_this[i+1]=x + centerX;
	}

	// 충돌인 경우 원상복귀
	if(CheckConflict())
		tetrix_block_this=tetrix_block_save.slice();
}

// 키입력
function onKeyDown(event)
{
	// 게임중일 때만 이동 회전키가 작동
	if(Mode==MODE_GAME)
	{

		if(event.which==37)	// 왼쪽키
		{
			tetrix_block_x--;
			if(CheckConflict())tetrix_block_x++;
			else onDraw();
		}
		if(event.which==39)	// 오른쪽키
		{
			tetrix_block_x++;
			if(CheckConflict())tetrix_block_x--;
			else onDraw();
		}
		if(event.which==40 || event.which==32)	// 아래쪽키, 스페이스키 
		{
			tetrix_block_y++;
			if(CheckConflict())tetrix_block_y--;
			else onDraw();
		}
		if(event.which==38)	// 위쪽키(회전)
		{
			RotateBlock();
			onDraw();
		}
	}
	// 게임오버일 때 재시작 단축키는 Enter 키
	else if(Mode==MODE_GAMEOVER)
	{
		if(event.which==13)	// Enter 키를 누르면
		{
			// 재시작
			tetrix_blockbox_init();	// 블럭상자 초기화
			tetrix_block_number=Math.floor(Math.random()*6.9);
			tetrix_block_this = tetrix_block[tetrix_block_number].slice();
			score=0;
			bgSound.playbackRate=1.0;
			level=1; exp=0;
			RunEventTime=500;
			clearInterval(RunEvent);
			RunEvent = setInterval(Run, RunEventTime);
			Mode=MODE_GAME;
		}
	}
}

// draw 이벤트
function onDraw()
{
	if(init==false)return;
	// 전체 테두리
	Context.strokeStyle="#000";
	Context.lineWidth=2;
	Context.strokeRect(0, 0, myCanvas.width-1, myCanvas.height-1);
	Context.fillStyle="#fcfcfc";
	Context.fillRect(1, 1, myCanvas.width-2, myCanvas.height-2);
	Context.drawImage(bgImage, 0, 0);
	// 블럭 표시
	for(i=0;i<20;++i)
		for(j=0;j<10;++j)
		{
			if(tetrix_blockbox[i][j]==0)
			{
				Context.fillStyle="#999";
				isblock=-1;
			}
			else {
				isblock=tetrix_blockbox[i][j]-1;
			}
			
			// 떨어지는 블럭표시
			var size=tetrix_block_this.length;
			for(k=0;k<size;k+=2)
			{
				if(tetrix_block_y+tetrix_block_this[k]==i
				   && tetrix_block_x+tetrix_block_this[k+1]==j)
				{
					isblock=tetrix_block_number;
					break;
				}
			}

			x=tetrix_blockbox_left + j*tetrix_blockbox_boxsize;
			y=tetrix_blockbox_top + i*tetrix_blockbox_boxsize;

			if(isblock==-1)
				Context.fillRect(x, y, tetrix_blockbox_boxsize-1, tetrix_blockbox_boxsize-1);
			else Context.drawImage(blockImage[isblock], x, y);
		}
	// 점수표시
	Context.font = "bold 30px 나눔고딕";
	Context.fillStyle="#eee";
	Context.strokeStyle="#fff";
	Context.fillStyle="blue";

	Context.fillText("Score " + score, 50, 90);
	Context.strokeText("Score " + score, 50, 90);

	Context.fillText("Level " + level, 50, 130);
	Context.strokeText("Level " + level, 50, 130);

	if(Mode==MODE_GAMEOVER)
	{
		Context.fillStyle="red";
		Context.fillText("GAME OVER", tetrix_blockbox_left + 40, tetrix_blockbox_top + 250);
	}
}

$(document).ready(function(){
	Init();
	RunEvent = setInterval(Run, RunEventTime);
});

$(document).keydown(function( event ){
	onKeyDown(event);		
});

</script>

<canvas id="MyCanvas" width=600 height=700>
Canvas is not supported.
</canvas>
<br/>



배경음악 마리오<br/>
사장이 장인임 만점 넘기고 오면 상품 드림<br/>

<span id=debug></span>
</body>
</html>
