a = document.getElementById('booking_deal_id')
b = document.getElementById('priceselect')
c = document.getElementById('amount').value
d = document.getElementById('total-price')

a.addEventListener('change', function(){
  Array.from(b.children).forEach(function(x){
    if(x.value == a.children[a.selectedIndex].innerHTML){
      x.selected = true
    }
  })
})

var price = document.getElementById('priceselect')
var x = document.getElementById('amount').value
var total_price = document.getElementById('total-price')

function calcTotalPrice(x)
{
document.getElementById('total-price').value = price * x;
}


