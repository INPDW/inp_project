<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <link rel="stylesheet" href="./css/join.css">
	
</head>
<body>

	<center>
  
    <form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this);">                                                                                        
        <h2>회원가입</h2>

        <div class="textForm">
            <input name="loginId" type="text" class="id" placeholder="아이디">
        </div>

        <div class="textForm">
          <input name="loginPw" type="password" class="pw" placeholder="비밀번호">
        </div>
    
        <div class="textForm">
          <input name="nickname" type="text" class="nickname" placeholder="닉네임">
        </div>

        <div class="idover" >
          <input type="button" value="중복확인">
        </div>

        <div class="nickover">
          <input type="button" value="중복확인">
        </div>

        <input type="submit" class="btn" value="가입하기">
      </form>

    </center>

</body>
</html>