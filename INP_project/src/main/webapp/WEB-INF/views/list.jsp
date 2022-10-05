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
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">등록일</div>
                    <div class="count">조회수</div>
                </div>
                
                
                <c:forEach var="Community" items="${list}">
                <div>
                    <div class="num">${Community.article_seq} </div>
                    <div class="title"><a href = "SelectOne.do?article_seq=${Community.article_seq}">${Community.article_title}</a></div>
                    <div class="writer">${Community.m_id} </div>
                    <div class="date">${Community.article_date}</div>
                    <div class="count">${Community.article_cnt}</div>
                </div>
                
                </c:forEach>
                
                
            </div>
            <div class="board_page">
                <a href="#" class="bt first"></a>
                <a href="#" class="bt prev"></a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
            <div class="bt_wrap">
                <a href="GoWrite.do" class="on">글쓰기</a>
                <a href="edit.html">수정</a>
                <a href="adminlist.html">관리자 수정</a>
            </div>
        </div>
    </div>

</body>
</html>