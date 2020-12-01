<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style type="text/css">
 	input:hover {
	background-color: #ccff00;
	}
	input:focus {
	background-color: #009900;
	border: 5px solid #000000;
	color: #ffffff;
}

 </style>
</head>
<body>
	<h1>동적 관련 가상 클래스 선택자</h1>
			<hr />
			<h2>로그인</h2> 
	        <form action="#" method="post">
					<fieldset>
							<p><label>아이디</label>
								<input name="userID" type="text" />
							</p>
							<p><label>비밀번호</label>
								<input name="userPWD" type="password" />
							</p>
							<p>
								<input type="submit" value="login" />
							</p>
						</fieldset>
	        </form>
</body>
</html>