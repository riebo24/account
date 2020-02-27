$(function(){

  $(".detailed_header").on("click", function(){
    $(".menu").toggleClass('open-menu');
    $(".posts").css({"width":"calc(100% - 300px)", "margin-left":"200px", "transition": ".7s ease-in-out"})
    $(".index").css({"height":"100%", "width":"100%", "opacity": "0.6", "transition": ".7s ease-in-out"})
  })

  $(document).on("click", ".close-menu", function(){
    $(".posts").css({"width":"100%", "margin-left":"0px", "transition": ".7s ease-in-out"})
  })

  $(document).on("click", ".menu", function(){
    $(".posts").css({"width":"100%", "margin-left":"0px", "transition": ".7s ease-in-out", })
    $(".index").css({"height":"100%", "width":"100%" , "opacity": "1", "transition": ".7s ease-in-out"})
  })
})
