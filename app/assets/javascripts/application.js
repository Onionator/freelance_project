$(document).ready(function() {
  $('#usa_only').click(function(event) {
    $('#usa_products').toggle()
    $('#all_products').toggle()
  })
  $('#display_all').click(function(event) {
    $('#usa_products').toggle()
    $('#all_products').toggle()
  })
  $('.more').on("click", function(event) {
    console.log(this);
    $('.more_content').toggle()
    $('.less_content').toggle()
  })
  $('.less').click(function(event) {
    $('.more_content').toggle()
    $('.less_content').toggle()
  })
  event.preventDefault()
})
