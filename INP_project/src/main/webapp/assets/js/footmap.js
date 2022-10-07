var per_foot = document.getElementsByClassName("per_foot");
src = "./js/jquery-3.6.1.min.js"



function handleClick(event) {
	console.log(event.target);
	// console.log(this);
	// 콘솔창을 보면 둘다 동일한 값이 나온다

	console.log(event.target.classList);

	if (event.target.classList[1] === "clicked") {
		event.target.classList.remove("clicked");
	} else {
		for (var i = 0; i < per_foot.length; i++) {
			per_foot[i].classList.remove("clicked");
		}

		event.target.classList.add("clicked");
	}
}

function init() {
	for (var i = 0; i < per_foot.length; i++) {
		per_foot[i].addEventListener("click", handleClick);
	}
}

init();






let per_foot1 = document.getElementById("per_foot1");

// 서버에 데이터를 요청하는 함수 

			function initMap(List) {
				
				//지도 스타일
				var map = new google.maps.Map(document.getElementById('map'), {

					//처음 중심 좌표
					center: {
						lat: Number(List[0].place_lat),
						lng: Number(List[0].place_lon),
					},

					//처음 줌 값. 숫자가 작을수록 낮은 배율
					zoom: 10
					

                





                
              
					
					
					
					
					
				});

			}

let getData1 = () => {
	$.ajax({
		url: "AjaxConkoo.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			let kooList = data;
			console.log(kooList[3].event_date);   // event date
			initMap(kooList);

		},

	});

}

per_foot1.addEventListener("click", getData1);

let per_foot2 = document.getElementById("per_foot2");

let getData2 = () => {
	$.ajax({
		url: "AjaxConja.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let jaList = data;
			initMap(jaList);
		},

	});
	

}
per_foot2.addEventListener("click", getData2);








let per_foot3 = document.getElementById("per_foot3");
let getData3 = () => {
	$.ajax({
		url: "AjaxConchang.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let changList = data;
			initMap(changList);
		},

	});

}




per_foot3.addEventListener("click", getData3);

let per_foot4 = document.getElementById("per_foot4");

// 서버에 데이터를 요청하는 함수 
let getData4 = () => {
	$.ajax({
		url: "AjaxConjoong.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let joongList = data;
			initMap(joongList);
		},

	});

}
per_foot4.addEventListener("click", getData4);

let per_foot5 = document.getElementById("per_foot5");

let getData5 = () => {
	$.ajax({
		url: "AjaxCondong.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let dongList = data;
			initMap(dongList);
		},

	});

}
per_foot5.addEventListener("click", getData5);


let per_foot6 = document.getElementById("per_foot6");

let getData6 = () => {
	$.ajax({
		url: "AjaxConchae.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let chaeList = data;
			initMap(chaeList);
		},

	});

}
per_foot6.addEventListener("click", getData6);

let per_foot7 = document.getElementById("per_foot7");
let getData7 = () => {
	$.ajax({
		url: "AjaxConbong.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let bongList = data;
			initMap(bongList);
		},

	});

}
per_foot7.addEventListener("click", getData7);

let per_foot8 = document.getElementById("per_foot8");
let getData8 = () => {
	$.ajax({
		url: "AjaxConkwan.do",
		dataType: "json",

		//객체로 보내거나~ 문자열로 보내거나 
		//단일값으로만 보낼수 있다. 
		success: function(data) {
			console.log(data)
			let kwanList = data;
			initMap(kwanList);
		},

	});

}
per_foot8.addEventListener("click", getData8);
















//$(".per_foot").on('click', function(e){
//   if(e.target.id === 'per_foot1'){
//	 alert("경고!!")















//   }else if(e.target.id === 'per_foot2'){
// 2번 버튼을 클릭했을 때 구현하고 싶으 코드
// }












//});


$(document).ready(function() {
	$(".click-btn").on('click', function(e) {
		console.log(e.target.id)
	});
});

$(document).ready(function() {
	$("#maps").load("maps.html");
});

