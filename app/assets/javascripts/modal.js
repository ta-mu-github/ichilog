
$(function() {
  /*ログインボタン押下したらモーダルを表示 */
  $('#Login-modal').click(function(){
    // alert("a");
    $('.Signin').fadeIn();
    $('.Signin__wrapper').fadeIn();
  });

  /*バツボタンを押したらモーダルを閉じる */  
  $('.Signin__wrapper__container__close_btn').click(function(){
    $('.Signin').fadeOut();
    $('.Signin__wrapper').fadeOut();
  });


});