

$(function(){
      
	

        $('.MdWidgetList li').click(function(){

                var index = $('.MdWidgetList li').index(this);

                $('.Widgetcontents li').css('display','none');

                $('.Widgetcontents li').eq(index).css('display','block');

                $('.MdWidgetList li').removeClass('select');

                $(this).addClass('select');


            });





    });

$(document).ready(ready);
$(document).on('page:load', ready);