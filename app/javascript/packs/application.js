// import "bootstrap";
// // import "banner_scrolling"
import "bootstrap";
import "../plugins/flatpickr";

const money = document.querySelectorAll(".money-btn");


money.forEach( element => {
  element.addEventListener('click', event => {
    if (element == btn_4) {
      document.getElementById("btn_1").classList.add("active")
      document.getElementById("btn_2").classList.add("active")
      document.getElementById("btn_3").classList.add("active")
      document.getElementById("btn_4").classList.add("active")
    }
    else if (element == btn_3){
      document.getElementById("btn_1").classList.add("active")
      document.getElementById("btn_2").classList.add("active")
      document.getElementById("btn_3").classList.add("active")
      document.getElementById("btn_4").classList.remove("active")
    }
    else if (element == btn_2){
      document.getElementById("btn_1").classList.add("active")
      document.getElementById("btn_2").classList.add("active")
      document.getElementById("btn_3").classList.remove("active")
      document.getElementById("btn_4").classList.remove("active")
    }
    else if (element == btn_1){
      document.getElementById("btn_1").classList.add("active")
      document.getElementById("btn_2").classList.remove("active")
      document.getElementById("btn_3").classList.remove("active")
      document.getElementById("btn_4").classList.remove("active")
    }

  });
});


const star = document.querySelectorAll(".star-btn");
console.log(star)

star.forEach( element => {
  element.addEventListener('click', event => {
     if (element == star_5) {
      document.getElementById("star_1").classList.add("active")
      document.getElementById("star_2").classList.add("active")
      document.getElementById("star_3").classList.add("active")
      document.getElementById("star_4").classList.add("active")
      document.getElementById("star_5").classList.add("active")
    }
    if (element == star_4) {
      document.getElementById("star_1").classList.add("active")
      document.getElementById("star_2").classList.add("active")
      document.getElementById("star_3").classList.add("active")
      document.getElementById("star_4").classList.add("active")
      document.getElementById("star_5").classList.remove("active")
    }
    else if (element == star_3){
      document.getElementById("star_1").classList.add("active")
      document.getElementById("star_2").classList.add("active")
      document.getElementById("star_3").classList.add("active")
      document.getElementById("star_4").classList.remove("active")
      document.getElementById("star_5").classList.remove("active")
    }
    else if (element == star_2){
      document.getElementById("star_1").classList.add("active")
      document.getElementById("star_2").classList.add("active")
      document.getElementById("star_3").classList.remove("active")
      document.getElementById("star_4").classList.remove("active")
      document.getElementById("star_5").classList.remove("active")
    }
    else if (element == star_1){
      document.getElementById("star_1").classList.add("active")
      document.getElementById("star_2").classList.remove("active")
      document.getElementById("star_3").classList.remove("active")
      document.getElementById("star_4").classList.remove("active")
      document.getElementById("star_5").classList.remove("active")
    }

  });
});


