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
  
    <form action="Login.do" method="POST" class="loginForm" onsubmit="DologinForm__submit(this);">                                                                                        
        <h2>�α���</h2>

        <div class="textForm">
            <input name="m_id" type="text" class="id" placeholder="���̵�">
        </div>

        <div class="textForm">
          <input name="m_pw" type="password" class="pw" placeholder="��й�ȣ">
        </div>
    
        <input type="submit" class="btn" value="�α���">
      </form>

    </center>

</body>
</html>