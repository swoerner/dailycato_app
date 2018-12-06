const restaurantTitle = document.querySelectorAll(".restaurant-details h3");

restaurantTitle.forEach(function(x){
  z = x.innerText.split(" ")
  if (z[0].length > 14){
    x.classList.add("smallerTitle")
  }
})



