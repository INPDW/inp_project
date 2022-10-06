<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/person.css" />
<link rel="stylesheet" href="assets/css/main.css?after" />
<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/> 


		<title>인물소개</title>
	
	
		

<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>


</head>









	<body class="landing is-preload">
	
	<div id = size>
	<div class ="S">
			
	
	<h1 id="party">~~~~~님 환영합니다!!</h1>

		
		<top1 class="top1">
			
			<img src="./images/footlogo.png" alt="" id = "footlogo">
			
			<button onclick = "location.href='GoLogin.do'" id ="btn1" >LOGIN</button> 
			<button onclick = "location.href='GoJoin.do'" id = "btn2" >JOIN</button> 
			<div id = "foot">
				
					<li><a href="GoFootmap.do">발자취</a></li>
					<li><a href="GoCulmap.do">유산 지도</a></li>
					<li><a href="GoPeople.do">인물소개</a></li>
					<li><a href="GoPlace.do">장소소개</a></li>
					<li><a href="SelectAll.do">커뮤니티</a></li>
			</div>
				</div>
			</top1>
	<form>
		<input type="text" id="input_search" placeholder="이름 검색">
		<button type="submit" id="input_search_button">검색</button>
		&#160 &#160
		<div></div>
	</form>
	&#160





	<table>
		<tr>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
		</tr>
		<tr>
			<td>설명1</td>
			<td>설명2</td>
			<td>설명3</td>
			<td>설명4</td>
		</tr>
		<tr>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
			<td><a href="./person_detail.html"><img
					src="./images/kim.png" width="200" height="200"></a></td>
		</tr>
		<tr>
			<td>설명5</td>
			<td>설명6</td>
			<td>설명7</td>
			<td>설명8</td>
		</tr>

	</table>
	<center>
		<button type="button" >이전</button>
		<button type="button" >다음</button>
	</center>
</body>
</html>