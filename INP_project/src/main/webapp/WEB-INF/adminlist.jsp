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
            <div class="board_list">
                <div class="top">
                	<div><input type="checkbox" class="allcheck"></div>
                    <div class="num">번호</div>
                    <div class="title">제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">등록일</div>
                    <div class="count">조회수</div>
                </div>
                <div>
                	<div><input type="checkbox" class="check"></div>
                    <div class="num">5</div>
                    <div class="title"><a href="view.html"> 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                	<div><input type="checkbox" class="check"></div>
                    <div class="num">4</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                	<div><input type="checkbox" class="check"></div>
                    <div class="num">3</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                	<div><input type="checkbox" class="check"></div>
                    <div class="num">2</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                	<div><input type="checkbox" class="check"></div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
            </div>
            <div class="board_page">
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
            <div class="bt_wrap">
                <a href="write.html" class="on">글쓰기</a>
                <button type="button" class="del">삭제</button>
                
            </div>
        </div>
    </div>
    <script>
        var allcheck = document.querySelector(".allcheck");
        var list = document.querySelectorAll(".check");
        var del = document.querySelector(".del");

        allcheck.onclick = () => {
            if(allcheck.checked) {
                for(var i=0; i<list.length; i++){
                    list[i].checked = true;
                }
            }else {
                for(var i=0; i<list.length; i++){
                    list[i].checked = false;
                }
            }
        }

        del.onclick = () => {
            for(var i =0; i<list.length; i++){
                if(list[i].checked){
                    list[i].parentElement.parentElement.remove();
                }
            }
        }

    </script>

</body>
</html>