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

	<div class="board_wrap">

        <div class="board_title">
            <strong>Ŀ�´�Ƽ</strong>
        </div>
            <form action ="GoEdit.do" method = "post">
        
        <div class="board_write_wrap">
            <div class="board_view">
                <div class="title">



                  ${dto.article_title}
                   <input type="text" name="article_title" style="display: none" value="${dto.article_title}">


   

                </div>
                <div class="info">
                    <dl>
                        <dt>��ȣ</dt>
                        <dd>${dto.article_seq }</dd>
                        <input type="text" name="article_seq" style="display: none" value="${dto.article_seq}">
                        
                    </dl>
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd>${dto.m_id}</dd>
                        <input type="text" name="m_id" style="display: none" value="${dto.m_id}">
                    </dl>
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd>${dto.article_date }</dd>
                    </dl>
                    <dl>
                        <dt>��ȸ��</dt>
                        <dd>${dto.article_cnt}</dd>
                    </dl>
                </div>
                <div class="cont">
                    ${dto.article_content}
                    <input type="text" name="article_content" style="display: none" value="${dto.article_content}">


                    </div>
                    
            </form>
                    
                    
                     <br><Br>
                    
                     <div class="comment" style = "
                
               
   				 border-style: hidden;
   				 
   				 line-height: 160%;
   				 font-size: 1.4rem;
   				 background-color:whitesmoke;
                height: 
                
                
                
                ">
                	<b style="font-size: 15px; bo">�г���</b>
                	<br><br>
                	
                	
                	�ʸ� ���ƿ�
                	
                	
                
                </div>
                    
                    
                    
                    
                    
                            
                <a href="" style="position: relative; left: 980px;top: -30px; border-style:solid; border-width: 1px; border-color: black; background-color: black; color: white;"
                
                
                
                >X</a>
 
                <br><br>
                <div class ="comment_input" style="font-size: 20px; ">
                
                ���
                <br><br>
                
                <textarea rows="3" cols=20 wrap="hard" style="width: 1000px; height: 100px"></textarea>
                    
                    

                    
                </div>
                
                 <a href="" style="position: relative; left: 930px; ">��� ����</a>
                
            
            <div class="bt_wrap">
                <a href="SelectAll.do" class="on">���</a>



                <li><input type="submit" class="btn" value="����" style="
                     width: 105px;
    height: 41px;
    position: relative;
    left: 120px;
    top: -40px;" ></li>

    
    
     <li><button onclick = "location.href='Delete.do?article_seq=${dto.article_seq}'"
     style="
      width: 105px;
    height: 41px;
    position: relative;
    left: 455px;
    top: -82px;">   �� ����</button>
    
    
    </li>
</li>

            </div>
        </div>
    </div>

</body>
</html>