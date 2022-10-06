<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>독립 발자취</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/culmap.css?after">
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
		<link
		
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/> 


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	
	
	<style type="text/css">
	 .gmnoprint, .gm-control-active.gm-fullscreen-control {
            display: none;
        }
	
	 </style>      <!-- 위성/지도 안나오게 하는 것  -->
	 
	 



        
	</head>


	<body class="landing is-preload">
	
	<div class ="S">
			
	
	<h1 id="party">~~~~~님 환영합니다!!</h1>

		
		<div class="top1">
			
			<img src="./images/footlogo.png" alt="" id = "footlogo">
			
			<button id ="btn1">LOGIN</button> 
			<button id = "btn2">JOIN</button> 
			<div id = "foot">
					<li><a href="#">발자취</a></li>
					<li><a href="#" id ="page">유산 지도</a></li>
					<li><a href="#">인물소개</a></li>
					<li><a href="#">장소소개</a></li>
					<li><a href="#">커뮤니티</a></li>
			</div>
				</div >
				
			 <div class="div1">
      <div class="cul" id = "cul1">한국</div>
      <div class="cul" id = "cul2">중국</div>
      <div class="cul" id = "cul3">일본</div>
      <div class="cul" id = "cul4">미국</div>
      <div class="cul" id = "cul5">그 외</div>


    </div>

	
		</div>
			
			
    <h3>문화유산 지도</h3>
    <!--The div element for the map -->
    <div id="map"style="border: solid; width:1900px; height:700px;"></div>

<script window.initMap = initMap;
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCLI4aEZqQAP3F4eQUFhl9tJ2Q0VwM_HeA&callback=initMap&libraries=&v=weekly"
        async>
  		 </script>  
  		 <!-- 스크립트 바디 밑에 들어 있어야함  -->

			
			
		</div>	
			


			<div class = "culmap">
			
			
			
			
			</div>





<!-- footer -->




			
<script src="assets/js/culmap.js"></script>
		



</body>
</html>