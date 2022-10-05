<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/modify.css">

</head>
<body>

	<center>
  
    <form action="domodify" method="POST" class="modifyForm" onsubmit="DomodifyForm__submit(this);">                                                                                        
        <h2>정보수정</h2>

        <div class="textForm">
          <input name="loginPw" type="password" class="pw" placeholder="비밀번호">
        </div>

        <div class="textForm">
            <input name="nickname" type="text" class="nickname" placeholder="닉네임">
          </div>
    
        <input type="submit" class="btn" value="수정하기"/>
      </form>

    </center>

</body>
</html>