// 	var min=29;
// 		var sec=59;
		function counter(){
			var	min=sessionStorage.getItem("min");
			var	sec=sessionStorage.getItem("sec");
				if(min===null && sec===null){
					min=29;sec=59;
				}
			//}
			var timer=document.getElementById('timer');
			setInterval(function(){
					timer.innerHTML=''+min+':'+sec;
					sec--;
					if(sec==-1){
						min--;
						sec=59
					}
					if(sec===0&&min===0){
						sessionStorage.clear();
						document.Test.submit();
						
					}
				sessionStorage.setItem("min",min);
				sessionStorage.setItem("sec",sec);
				}
				,1000);
			//window.onbeforeunload=function(){
				
			
		}

/*    window.onload=function(){ 
    	counter();
    }*/
 window.history.forward();

