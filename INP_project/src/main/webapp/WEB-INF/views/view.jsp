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
            <strong>Ŀ�´�Ƽ</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_view">
                <div class="title">
                	${dto.article_title}
                </div>
                <div class="info">
                    <dl>
                        <dt>��ȣ</dt>
                        <dd>${dto.article_seq }</dd>
                    </dl>
                    <dl>
                        <dt>�ۼ���</dt>
                        <dd>${dto.m_id}</dd>
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
                    
                </div>
            </div>
            <div class="bt_wrap">
                <a href="SelectAll.do" class="on">���</a>
                <a href="GoEdit.do">����</a>
            </div>
        </div>
    </div>

</body>
</html>