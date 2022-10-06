<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/css.css">

</head>
<body>

	<div class="board_wrap">
        <div class="board_title">
            <strong>커뮤니티</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                  	  <form action="Update.do" method = "post">
                <div class="title">
                <dd><input type="text" placeholder="제목 입력" name="article_seq" style="display: none" value="${dto.article_seq}"></dd>
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력" name="article_title" value="${dto.article_title}"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd>${dto.m_id}</dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력" name="article_content" style="font-size: 15px;">
					${dto.article_content}
                    </textarea>
                </div>
            <div class="bt_wrap">
                <a><input type="submit" class="btn" value="수정"></a>
                <a href="GoView.do">취소</a>
            </div>
                  	  </form>
            </div>
        </div>
    </div>

</body>
</html>