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

            <form action ="GoEdit.do" method = "post">
	<div class="board_wrap">
        <div class="board_title">
            <strong>커뮤니티</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_view">
                <div class="title">
                	${dto.article_title}
                	<input type="text" name="article_title" style="display: none" value="${dto.article_title}">
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${dto.article_seq }</dd>
                        <input type="text" name="article_seq" style="display: none" value="${dto.article_seq}">
                        
                    </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd>${dto.m_id}</dd>
                        <input type="text" name="m_id" style="display: none" value="${dto.m_id}">
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>${dto.article_date }</dd>
                    </dl>
                    <dl>
                        <dt>조회수</dt>
                        <dd>${dto.article_cnt}</dd>
                    </dl>
                </div>
                <div class="cont">
                    ${dto.article_content}
                    <input type="text" name="article_content" style="display: none" value="${dto.article_content}">
                    
                </div>
            </div>
            <div class="bt_wrap">
                <a href="SelectAll.do" class="on">목록</a>
                <a><input type="submit" class="btn" value="수정"></a>
            </div>
        </div>
    </div>
            </form>

</body>
</html>