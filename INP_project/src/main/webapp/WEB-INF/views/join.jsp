<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

 <link rel="stylesheet" href="./css/join.css">
	
</head>
<body>

	<center>
  
    <form action="Join.do" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this);">                                                                                        
        <h2>ȸ������</h2>

        <div class="textForm">
            <input name="m_id" type="text" class="id" placeholder="���̵�">
        </div>

        <div class="textForm">
          <input name="m_pw" type="password" class="pw" placeholder="��й�ȣ">
        </div>
    
        <div class="textForm">
          <input name="m_nick" type="text" class="nickname" placeholder="�г���">
        </div>

        <div class="idover" >
          <input type="button" value="�ߺ�Ȯ��">
        </div>

        <div class="nickover">
          <input type="button" value="�ߺ�Ȯ��">
        </div>

        <input type="submit" class="btn" value="�����ϱ�">
      </form>

    </center>

</body>
</html>