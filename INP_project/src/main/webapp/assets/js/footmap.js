      var per_foot = document.getElementsByClassName("per_foot");
      src="./js/jquery-3.6.1.min.js"

   

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
    let getData = () => { 
    	$.ajax({
    		url:"AjaxConkoo.do",
    		dataType: "json",
    		
    		//객체로 보내거나~ 문자열로 보내거나 
    		//단일값으로만 보낼수 있다. 
    		success:function(data){
    			console.log(data+" 체크")
    		},
    		
    	});
   
    }
    per_foot1.addEventListener("click", getData);
    
    
    let per_foot4 = document.getElementById("per_foot4");
   
   
   
   
    // 서버에 데이터를 요청하는 함수 
    let getData4 = () => { 
    	$.ajax({
    		url:"AjaxConjoong.do",
    		dataType: "json",
    		
    		//객체로 보내거나~ 문자열로 보내거나 
    		//단일값으로만 보낼수 있다. 
    		success:function(data){
    			console.log(data)
    		},
    		
    	});
   
    }
    per_foot4.addEventListener("click", getData4);
    
    
    
      
      
$(".per_foot").on('click', function(e){
    if(e.target.id === 'per_foot1'){
   			 alert("경고!!")
   
    
    
    

   
   
   
   
   
   
   
   
   
   			 
    }else if(e.target.id === 'per_foot2'){
        // 2번 버튼을 클릭했을 때 구현하고 싶으 코드
    }
    per_foot1.addEventListener("click", getData);
    
    
    
    
    
    
    
    
    
    
    
});
 $(document).ready(function(){
        $(".click-btn").on('click', function(e){
            console.log(e.target.id)
        });
    });
    
$(document).ready(function(){    $("#maps").load("maps.html");
});

	