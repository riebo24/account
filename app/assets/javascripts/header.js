$(function(){
  var open_menu = {"width":"calc(100vw - 300px)", "margin-left":"200px", "opacity": "0.2", "transition": ".7s ease-in-out"};
  var open_menu_for_post = {"transition": ".7s ease-in-out", "margin-left":"0px"};
  var close_menu = {"width":"100vw", "margin-left":"0px", "opacity": "1","transition": ".7s ease-in-out"}
  var close_menu_for_post = {"transition": ".7s ease-in-out", "width":"100%"}

  $(".hamburger_position").on("click", function(){
    $(".menu").toggleClass('open-menu'); //隠れていた詳細なmenuが出現
    $(".content").css(open_menu)
    $(".post").css(open_menu_for_post)
    //menuの横幅の分だけ、右に移動
  })

  //close-menuをクリックすると閉じる
  $(document).on("click", ".close-menu", function(){
    $(".menu").removeClass('open-menu');
    $(".content").css(close_menu)
    $(".post").css(close_menu_for_post)
  })

  $(document).on("click", ".menu", function(){
    $(".menu").removeClass('open-menu');
    $(".content").css(close_menu)
    $(".post").css(close_menu_for_post)
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
