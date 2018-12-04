a = document.getElementById('booking_deal_id')
b = document.getElementById('priceselect')

a.addEventListener('change', function(){
  Array.from(b.children).forEach(function(x){
    if(x.value == a.children[a.selectedIndex].innerHTML){
      x.selected = true
    }
  })
})
