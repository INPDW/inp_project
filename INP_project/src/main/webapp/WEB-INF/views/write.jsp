<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/css.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>

	<div class="board_wrap">
        <div class="board_title">
            <strong>Ŀ�´�Ƽ</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                <form action="Insert.do" method="post">
                    <dl>
                        <dt>����</dt>
                        <dd><input type="text" name="article_title" placeholder="���� �Է�"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd>${memberDTO.m_nick}</dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea name="article_content" placeholder="���� �Է�"></textarea>
                </div>

            </div>
            <div class="bt_wrap">
                <a><input type="submit" class="btn" value="���"></a>
                <a href="GoList.do">���</a>
            </div>
                </form>
        </div>
    </div>

</body>
</html>