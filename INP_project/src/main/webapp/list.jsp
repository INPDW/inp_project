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

	<div style="width: 2000px;">
    <div class="board_wrap">
        <div class="board_title">
            <strong>커뮤니티</strong>
        </div>

        <div class="container">
            <div class="row">
                <form name="search">
                    <table class="pull-right">
                        <tr>
                            <td><select class="form-control" name="searchField">
                                    <option value="0">선택</option>
                                    <option value="bbsTitle">제목</option>
                                    <option value="userID">작성자</option>
                            </select></td>
                            <td><input type="text" class="form-control1"
                                placeholder="검색어 입력" name="searchText" maxlength="100"></td>
                            <td><button type="submit" class="btn">검색</button></td>
                        </tr>
    
                    </table>
                </form>
            </div>
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
                <a href="write.html" class="on" id = "onn">글쓰기</a>
                
                <a href="adminlist.html" class="on2" id="on3">관리자 수정</a>
            </div>
        </div>

    </div>
    </div>

    <script>

        var on = document.getElementById("onn")
        let id = "user1"
        let id2 = "admin"

        function On() {
            
            if(id == "user1"){
                alert("로그인후 글쓰기가 가능합니다.")
                location.href = "./1차HTML\login.html"
            } else {
                
                location.href = "write.html"
                return false;
            }
        }
        on.addEventListener("click",On)

        function on2() {
            
            if(id2 == "admin") {
                document.getElementById('on3').style.display="";
            }
        }
        

    </script>

</body>
</html>