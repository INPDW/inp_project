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

      function init() {
        for (var i = 0; i < cul.length; i++) {
          cul[i].addEventListener("click", handleClick);
        }
      }

      init();
      
      
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

	