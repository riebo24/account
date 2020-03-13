$(function(){
  var hidden_tab = {"background-color":"white"}
  var visible_tab = {"background-color":"#f4f4f4"}
  var hidden_form = {"display":"none","background-color":"white"}
  var visible_form = {"display":"block", "background-color":"#f4f4f4"}
  $(".post-tab").on("click", function(){
    $("#revenue-form").css(hidden_form)
    $(".revenue-tab").css(hidden_tab)
    $("#post-form").css(visible_form)
    $(".post-tab").css(visible_tab)
    console.log("OK")

  })

  $(".revenue-tab").on("click", function(){
    $("#post-form").css(hidden_form)
    $(".post-tab").css(hidden_tab)
    $("#revenue-form").css(visible_form)
    $(".revenue-tab").css(visible_tab)
    console.log("NG")
  })
})