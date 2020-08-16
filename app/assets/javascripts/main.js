$(function() {
  $('.Container').fadeIn(1500);

  $('.Notification').fadeOut(2000);

  $('.Header_right__user_box').click(function(){

    if($('.Header_right__user_box_open').hasClass('open')){

      $('.Header_right__user_box_open').removeClass('open');
      $('.Header_right__user_box_open').slideUp();

    }else{

      $('.Header_right__user_box_open').addClass('open');  
      $('.Header_right__user_box_open').slideDown();

    }
    
  });

    $('#img1').click(function(){
    $('#myfile').click();    
  })

  


  });
