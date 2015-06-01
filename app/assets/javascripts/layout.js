$(document).ready(function(){
    $(".babajo").hover(function(){
        $(this).stop(true).animate({marginLeft: '20px'},"slow")
    },function(){
        $(this).stop(true).animate({marginLeft: '0px'},"slow")
  });
});