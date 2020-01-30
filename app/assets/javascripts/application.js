//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
$(document).ready(function() {
  $('#usa_only').click(function(event) {
    $('#usa_products').toggle()
    $('#all_products').toggle()
  })
  $('#display_all').click(function(event) {
    $('#usa_products').toggle()
    $('#all_products').toggle()
  })
  $('.more_content').on("click", function(event) {
    $(this).parent().children('.more_content').slideUp()
    $(this).parent().children('.less_content').toggle()
  })
  $('.less_content').click(function(event) {
    $(this).parent().children('.more_content').slideDown()
    $(this).parent().children('.less_content').toggle()
  })
  event.preventDefault()
})
