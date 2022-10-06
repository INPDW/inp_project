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
            <strong>커뮤니티</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                <form action="Insert.do" method="post">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="article_title" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>${memberDTO.m_nick}</dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea name="article_content" placeholder="내용 입력"></textarea>
                </div>

            </div>
            <div class="bt_wrap">
               <input type="submit" class="btn" value="등록" style="min-width: 80px;
       min-width: 90px;
    margin-left: 10px;
    padding: 10px;
    border: 1px solid #000;
    border-radius: 2px;
    font-size: 1.4rem;
    position: relative;
    left: -18px;
    color: white;
    top: 0px;
    background-color: black;">
                <a href="GoList.do">취소</a>
            </div>
                </form>
        </div>
    </div>

</body>
</html>