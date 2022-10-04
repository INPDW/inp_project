<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/login.css">

</head>
<body>

	<center>
  
    <form action="dologin" method="POST" class="loginForm" onsubmit="DologinForm__submit(this);">                                                                                        
        <h2>로그인</h2>

        <div class="textForm">
            <input name="loginId" type="text" class="id" placeholder="아이디">
        </div>

        <div class="textForm">
          <input name="loginPw" type="password" class="pw" placeholder="비밀번호">
        </div>
    
        <input type="submit" class="btn" value="로그인">
      </form>

    </center>

</body>
</html>