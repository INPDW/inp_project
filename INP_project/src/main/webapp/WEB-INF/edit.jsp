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
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력" value="글 제목이 들어감"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" placeholder="작성자 입력" value="철수"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력" style="font-size: 15px;">
글 내용이 들어감
글 내용이 들어감
글 내용이 들어감
글 내용이 들어감
글 내용이 들어감
                    </textarea>
                </div>

            </div>
            <div class="bt_wrap">
                <a href="view.html" class="on">수정</a>
                <a href="view.html">취소</a>
            </div>
        </div>
    </div>

</body>
</html>