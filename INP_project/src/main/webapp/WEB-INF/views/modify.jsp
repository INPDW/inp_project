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
        <h2>��������</h2>

        <div class="textForm">
          <input name="loginPw" type="password" class="pw" placeholder="��й�ȣ">
        </div>

        <div class="textForm">
            <input name="nickname" type="text" class="nickname" placeholder="�г���">
          </div>
    
        <input type="submit" class="btn" value="�����ϱ�"/>
      </form>

    </center>

</body>
</html>