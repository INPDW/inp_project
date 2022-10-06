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
<<<<<<< HEAD
   <div class="board_wrap">
=======
	<div class="board_wrap">
>>>>>>> branch 'master' of https://github.com/INPDW/inp_project.git
        <div class="board_title">
            <strong>커뮤니티</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_view">
                <div class="title">
<<<<<<< HEAD
                   ${dto.article_title}
                   <input type="text" name="article_title" style="display: none" value="${dto.article_title}">
=======
                	${dto.article_title}
                	<input type="text" name="article_title" style="display: none" value="${dto.article_title}">
>>>>>>> branch 'master' of https://github.com/INPDW/inp_project.git
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
<<<<<<< HEAD
                    
                     <br><Br>
                    
                     <div class="comment" style = "
                
               
   				 border-style: hidden;
   				 
   				 line-height: 160%;
   				 font-size: 1.4rem;
   				 background-color:whitesmoke;
                height: 
                
                
                
                ">
                	<b style="font-size: 15px; bo">닉네임</b>
                	<br><br>
                	
                	
                	너모 좋아요
                	
                	
                
                </div>
                    
                    
                    
                    
                    
                            
                <a href="" style="position: relative; left: 980px;top: -30px; border-style:solid; border-width: 1px; border-color: black; background-color: black; color: white;"
                
                
                
                >X</a>
 
                <br><br>
                <div class ="comment_input" style="font-size: 20px; ">
                
                댓글
                <br><br>
                
                <textarea rows="3" cols=20 wrap="hard" style="width: 1000px; height: 100px"></textarea>
                    
                    
=======
>>>>>>> branch 'master' of https://github.com/INPDW/inp_project.git
                    
                </div>
                
                 <a href="" style="position: relative; left: 930px; ">댓글 쓰기</a>
                
            </div>
            <div class="bt_wrap">
                <a href="SelectAll.do" class="on">목록</a>
<<<<<<< HEAD
                <li><input type="submit" class="btn" value="수정" style="
                     width: 105px;
    height: 41px;
    position: relative;
    left: 120px;
    top: -40px;" ></li>
=======
                <a><input type="submit" class="btn" value="수정"></a>
>>>>>>> branch 'master' of https://github.com/INPDW/inp_project.git
            </div>
        </div>
    </div>
            </form>

</body>
</html>