$(document).ready(function() {
  $('#usa_only').click(function(event) {
    $('#usa_products').toggle()
    $('#all_products').toggle()
  })
  $('#display_all').click(function(event) {
    $('#usa_products').toggle()
    $('#all_products').toggle()
  })
  event.preventDefault()
})
