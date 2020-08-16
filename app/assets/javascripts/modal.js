
$(function() {
  /*ログインボタン押下したらモーダルを表示 */
  $('#Login-modal').click(function(){
    // alert("a");
    $('.Signin_wrapper').fadeIn();
  });

  /*バツボタンを押したらモーダルを閉じる */  
  $('.Signin_wrapper__container__close_btn').click(function(){
    $('.Signin_wrapper').fadeOut();
  });


});