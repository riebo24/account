$(function(){

  $(".hamburger_position").on("click", function(){
    $(".menu").toggleClass('open-menu'); //隠れていた詳細なmenuが出現
    $(".content").css({"width":"calc(100% - 300px)", "margin-left":"200px", "opacity": "0.5", "transition": ".7s ease-in-out"})
    //menuの横幅の分だけ、右に移動
  })


  $(document).on("click", ".close-menu", function(){
    $(".content").css({"width":"100%", "margin-left":"0px", "opacity": "1","transition": ".7s ease-in-out"})
  })

  $(document).on("click", ".menu", function(){
    $(".content").css({"width":"100%", "margin-left":"0px", "opacity": "1","transition": ".7s ease-in-out"})
    })

  $(".hamberger_icon").on({
    "mouseenter": function(){
      $("span#hamberger").css({"background":"black"})},
      //hanburgerをマウスで触ると色が変わる
    
    'mouseleave': function(){
      $("span#hamberger").css({"background":"#555"})
      //離れると戻る
		}
  })
})
