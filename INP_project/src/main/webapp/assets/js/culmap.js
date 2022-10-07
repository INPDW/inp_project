

      var cul = document.getElementsByClassName("cul");

      function handleClick(event) {
        console.log(event.target);
        // console.log(this);
        // 콘솔창을 보면 둘다 동일한 값이 나온다

        console.log(event.target.classList);

        if (event.target.classList[1] === "clicked") {
          event.target.classList.remove("clicked");
        } else {
          for (var i = 0; i < cul.length; i++) {
            cul[i].classList.remove("clicked");
          }

          event.target.classList.add("clicked");
        }
      }

src="./js/jquery-3.6.1.min.js"


      function init() {
        for (var i = 0; i < cul.length; i++) {
          cul[i].addEventListener("click", handleClick);
        }
      }

      init();
     function initMap() {
	
  const seo = { lat: 23.1187846
, lng: 113.2954906};
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 13,
    center: { lat: 23.1187846
, lng: 113.2954906},
  
  });
     
  const contentString =
    '<div id="content">' +
    '<div id="siteNotice">' +
    "</div>" +
    '<h3 id="firstHeading" class="firstHeading">안창호 탄생지</h3>' +"<div>"+`<img src="http://oversea.i815.or.kr/getImage/?type=place_main&manageNo=CN00017"width="300" height="300">`+"<div>"+
    '<div id="bodyContent">' +
    "<p><b>안창호</b>, 독립운동가</p>" +
    '<p> <a href="https://ko.wikipedia.org/wiki/%EC%95%88%EC%B0%BD%ED%98%B8">' +
    "안창호</a> " +
    "</p>" +
    "</div>" +
    "</div>" ;

            //인포윈도우
            
        const infowindow = new google.maps.InfoWindow({
    content: contentString, 
  });

  var customicon = 'https://th.bing.com/th/id/R.5e397f27b80da832f7589f434cf07ee1?rik=9Pvb2DeLVu5uLQ&riu=http%3a%2f%2fst2.depositphotos.com%2f2850099%2f7036%2fv%2f450%2fdepositphotos_70366819-Map-pointer-icon-flat-location.jpg&ehk=0T1%2fVX9FWY5L%2fxSEPCV7UtCyHKre2b7KKE1H%2bwrbmFg%3d&risl=&pid=ImgRaw&r=0'
 

  var GreenIcon = new google.maps.MarkerImage(src="./assets/css/images/mark.png",

new google.maps.Size(100,80),

new google.maps.Point(0, 0),

new google.maps.Point(50, 50)

); //마커 이미지 변경 


  const marker = new google.maps.Marker({
    position: seo,
    map,
    icon:GreenIcon, 
    title: "1",
  });

  marker.addListener("click", () => {
    infowindow.open({
      anchor: marker,
      map,
      shouldFocus: false,
    });
  });
}
  
    
   
   			      
         
      
      
      
$(".cul").on('click', function(e){
    if(e.target.id === 'cul1'){
   			 alert("경고!!")
   			 
  
   			 
    }else if(e.target.id === 'cul2'){
        // 2번 버튼을 클릭했을 때 구현하고 싶으 코드
    }
    
    
    
    
    
    
    
});
 $(document).ready(function(){
        $(".click-btn").on('click', function(e){
            console.log(e.target.id)
        });
    });
    
$(document).ready(function(){    $("#maps").load("maps.html");
});

