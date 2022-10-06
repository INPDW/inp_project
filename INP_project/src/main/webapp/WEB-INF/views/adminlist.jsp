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


        
            <div class="search-condition">
                <div class="form-group">
                    <label for="q_searchkey" class="sr-only"></label>
                    <select name="q.searchkey" id="q.searchkey" class="select" style="width: 150px;">
                        <option value>-- 검색선택 --</option>
                        <option value="sj_1002"> 제목 </option>
                        <option value="registernm_1001">작성자</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="q_searchval" class="sr-only"></label>
                    <input type="text" name="q_searchval" id="q_searchval"
                    value class="form-control" placeholder="검색어를 입력하세요.">
                </div>
                
                <button type="button" class="btn" >검색</button>
                
            </div>
            
        

        <div class="board_write_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</a></div>
                    <div class="writer">작성자</div>
                    <div class="date">등록일</div>
                    <div class="count">조회수</div>
                </div>
                <div>
                    <div class="num">5</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">4</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">3</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">2</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">글 제목 들어감</a></div>
                    <div class="writer">철수</div>
                    <div class="date">2022.9.30</div>
                    <div class="count">33</div>
                </div>
            </div>
            <div class="board_page">
                <a href="#" class="bt first">&lt;</a>
                <a href="#" class="bt prev">&laquo;</a>
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
                <a href="edit.html">수정</a>
                <a href="adminlist.html">관리자 수정</a>
            </div>
        </div>
    </div>

</body>
</html>