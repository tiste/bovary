(function(){this.maxHeight=function(){return $(window).width()>991?$(".height-100").height($(window).height()):void 0},this.sendMail=function(){return window.location.href="mailto:champagnebovary@gmail.com?subject="+$(".m-contact--subject").val()+"&body="+$(".m-contact--body").val().replace(/\n/g,"%0D%0A")},$(function(){return $.parallaxify(),window.scrollReveal=new scrollReveal})}).call(this);