@maxHeight = ->
  if $(window).width() > 991
    $('.height-100').height $(window).height()

@sendMail = ->
  window.location.href = 'mailto:champagnebovary@gmail.com?subject=' + $('.m-contact--subject').val() + '&body=' + $('.m-contact--body').val().replace(/\n/g, '%0D%0A')

$ ->
  $.parallaxify()

  window.scrollReveal = new scrollReveal()
