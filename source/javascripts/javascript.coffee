@maxHeight = ->
  $('.height-100').height $(window).height()

$(window).resize ->
  maxHeight()
