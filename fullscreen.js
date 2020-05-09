 document.getElementById("header").style.display="none";
document.getElementById("test").style.display="none";
var flag=0; 

document.addEventListener("fullscreenchange", function() {
    flag++;
    if(!document.fullscreenElement && flag%2!=0){
        sessionStorage.clear();
        document.Test.submit();
    }
});
document.addEventListener("webkitfullscreenchange", function() {
    flag++;
    if(!document.fullscreenElement && flag%2!=0){
        sessionStorage.clear();
        document.Test.submit();
    }
});
document.addEventListener("mozfullscreenchange", function() {
    flag++;
    if(!document.webkitIsFullScreen && flag%2!=0){
        sessionStorage.clear();
        document.Test.submit();
    }
});
document.addEventListener("msfullscreenchange", function() {
    flag++;
    if(!document.webkitIsFullScreen && flag%2!=0){
        sessionStorage.clear();
        document.Test.submit();
    }
});

var elem = document.getElementById("main");
function openFullscreen() {
    
  if (elem.requestFullscreen) {
    elem.requestFullscreen();
  } else if (elem.mozRequestFullScreen) { /* Firefox */
    elem.mozRequestFullScreen();
  } else if (elem.webkitRequestFullscreen) { /* Chrome, Safari and Opera */
    elem.webkitRequestFullscreen();
  } else if (elem.msRequestFullscreen) { /* IE/Edge */
    elem.msRequestFullscreen();
  }
  flag=1;
  document.getElementById("header").style.display="block";
  document.getElementById("test").style.display="block";
  document.getElementById("full").style.display="none";
  // document.getElementsByClassName('w3-khaki').style.display="block";
  counter();
 // check();
}
