<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/css.css">

</head>
<body>

	<div class="board_wrap">
        <div class="board_title">
            <strong>커뮤니티</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_view">
                <div class="title">
                    글 제목
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>1</dd>
                    </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd>철수</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2022.09.30</dd>
                    </dl>
                    <dl>
                        <dt>조회수</dt>
                        <dd>33</dd>
                    </dl>
                </div>
                <div class="cont">
                    글 내용 들어감
                    
                </div>
            </div>
            <div class="bt_wrap">
                <a href="list.html" class="on">목록</a>
                <a href="edit.html">수정</a>
            </div>
        </div>
    <div class="container"></div>
        <div class="reply">
            <h1 class="">댓글 입력</h1>
            <section class="reply-form">
                <form action="return false;">
                    <div>
                        <input type="text" placeholder="닉네임 입력">
                    </div>
                    <div>
                        <textarea placeholder="내용 입력"></textarea>
                        <input type="submit">
                    </div>
                </form>
            </section>
        
            <h1 class="reply_list">댓글 목록</h1>
    <section class="reply-list">
        <table border="1" width="950" height="200">
            <colgroup>
                <col width="200px">
            </colgroup>
            <thead>
                <tr>
                    <th>닉네임</th>
                    <th>내용</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>닉네임</td>
                    <td>내용</td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td>내용</td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td>내용</td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td>내용</td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td>내용</td>
                </tr>
            </tbody>
        </table>
        </div>
        <div class="board_page1">
            <a href="#" class="bt first"><<</a>
            <a href="#" class="bt prev"><</a>
            <a href="#" class="num on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="num">3</a>
            <a href="#" class="num">4</a>
            <a href="#" class="num">5</a>
            <a href="#" class="bt next">></a>
            <a href="#" class="bt last">>></a>
        </div>
    </section>

        

    </div>

</body>
</html>