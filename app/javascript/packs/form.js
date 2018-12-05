a = document.getElementById('booking_deal_id')
b = document.getElementById('priceselect')
c = document.getElementById('amount')
d = document.getElementById('total-price')

a.addEventListener('change', function(){
  Array.from(b.children).forEach(function(x){
    if(x.value == a.children[a.selectedIndex].innerHTML){
      x.selected = true
    }
    calcTotalPrice()
  })
})
c.addEventListener('change', function(){
  calcTotalPrice()
})


function calcTotalPrice(){
  var price = document.querySelector("#priceselect")[document.querySelector("#priceselect").selectedIndex].innerHTML.replace(/\D+/g, '');
  var x = document.getElementById('amount').value
  var total_price = document.getElementById('total-price')
  document.getElementById('total-price').innerHTML = (price * x) + '€';
}


