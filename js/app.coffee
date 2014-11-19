$ ->
  # $('.slider').slick dots: true

  # TPL_MScroll='<ul class="lh">    {for slide in list}    <li class="item fore${parseInt(slide_index)+1}" clstag="homepage|keycount|home2013|09b${parseInt(slide_index)+1}">        <a href="${slide.href}" target="_blank">            <img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" data-lazyload="background:url(${slide.src}) no-repeat #fff center 0;" alt="${slide.alt}" /></a>    </li>    {/for}</ul>'
  # DATA_MScroll = '<ul><li class="item"><a href=""><img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" alt="" style="background:url(0.jpg) no-repeat #fff center 0;"></a></li><li class="item"><a href=""><img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" alt="" style="background:url(0.jpg) no-repeat #fff center 0;"></a></li><li class="item"><a href=""><img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" alt="" style="background:url(0.jpg) no-repeat #fff center 0;"></a></li><li class="item"><a href=""><img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" alt="" style="background:url(2.png) no-repeat #fff center 0;"></a></li><li class="item"><a href=""><img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" alt="" style="background:url(2.png) no-repeat #fff center 0;"></a></li><li class="item"><a href=""><img width="202" height="159" src="http://misc.360buyimg.com/lib/img/e/blank.gif" class="loading-style2" alt="" style="background:url(2.png) no-repeat #fff center 0;"></a></li></ul>'
  # $mscroll = $('#mscroll-list')
  $('.slider').slick dots: true
  # if $mscroll[0]
  #   $mscroll.imgScroll 
  #     loop: !0
  #     navItems: !0
