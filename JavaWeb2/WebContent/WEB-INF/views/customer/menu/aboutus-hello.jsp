<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-header.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>

</head>

<body>

 <header id="header">
   <div class="content-container">
      <h1 id="logo">
         <a href="../home/main"><img src="../../images/doglogo.png"
            width="300px" height="100px" alt="PUPPYFOOD101" /></a>
      </h1>

      <section>
         <!-- <nav id="main-menu" class="hd-list"> -->
         <div class="gnb">
            <ul class="header-menu">
               <li><a style="font-weight: bold; font-size: 21px;" href="../../customer/menu/aboutus-hello">ABOUT US</a></li>
               <li><a style="font-weight: bold; font-size: 21px;"  href="../../customer/menu/basic-type-dry">기본 사료</a></li>
               <li><a style="font-weight: bold; font-size: 21px;" href="../../customer/menu/cm-recocm">맞춤 사료</a></li>
               <li><a style="font-weight: bold; font-size: 21px;"  href="../../customer/board/list">커뮤니티</a></li>
            </ul>
         
         </div>
         <!-- </nav> -->
         <nav id="member-menu" class="hd-list">
         <ul>
            <li><a href="../member/login">로그인</a></li>
            <li><a href="../member/mypage-check">마이페이지</a></li>
            <!-- <li id="search"><a href=""><img src="images/search.PNG" alt="검색"/></a></li> -->
         </ul>
         </nav>
         <section id="search-form">
         <form>
            <label>검색</label> <input type="text" /> <input type="submit" value="검색" />
         </form>
         </section>
      </section>
   </div>
   </header>



  <div class="bg"></div>
  <header>
    <div class="content">
       <img alt="" src="${path}/images/aboutusment.png" />
    </div>

  </header>

  <div class="layout">

    <div class="page">
      <div class="headline">
        <h1>ABOUT US</h1>
        <h5>About Us Information</h5>
      </div>

      <div class="block center">
        <div class="about"><p>♥안녕하세요. PUPPYFOOD101입니다.♥</p></div>
        <div ><p>저희 홈페이지는 회원님들의 반려견에게 가장 적합한</p></div>
        <div ><p>사료를 추천하고자 만들어진 홈페이지 입니다.</p></div>
        <br/>
        <div ><p>기존에 있는 사료들을 비롯하여</p></div>
        <div ><p>가입하신 반려견 정보에 맞게 가장 적합한 사료를</p></div>
        <div ><p>분석하여 제공하고 있습니다.</p></div>
        <br/>
        <div ><p>저희가 회원님의 반려견 정보를 바탕으로 하여</p></div>
        <div ><p>적합한 사료 정보를 제공해 드립니다 :)</p></div>
        <br/>
        <div ><p>본 홈페이지는 정보를 제공하고자 하는 목적으로 만들어져</p></div>
        <div ><p>더 정확한 정보를 제공하고자 노력하겠습니다.</p></div>
        <br/>
        <ul class="social-icons">
          <li> <a href="//www.facebook.com/ImagineAlex1"><i class="fa fa-facebook"></i></a></li>
          <li> <a href="//www.vk.com/imaginealex"><i class="fa fa-vk"></i></a></li>
          <li> <a href="//www.codepen.io/ImagineAlex"><i class="fa fa-codepen"></i></a></li>
          <!--<li> <a href="//www.youtube.com/channel/UCF9jX0IuiQwtM9FLevjAsHA"><i class="fa fa-youtube-play"></i></a></li>-->
          <li> <a href="//imaginealex.deviantart.com/"><i class="fa fa-deviantart"></i></a></li>
          <!--<li> <a href="//www.twitch.tv/imaginealex/profile"><i class="fa fa-twitch"></i></a></li>-->
        </ul>
      </div>
    </div> 

   <div class="page Blue">
      <div class="headline">
        <h1>사이트 소개</h1>
        <h5>Site Intro</h5>
      </div>

      <div class="block center">
        <div class="servicecard">
           <div class="content">
             <img alt="" src="${path}/images/aboutus-siteintro.png" />
          </div>
      </div>
    </div>   
 

    <div class="page">
      <div class="headline">
        <h1>사이트 이용방법</h1>
        <h5>Site Use</h5>
      </div>

      <div class="IA_window">
        <div class="bar">
          <div class="buttons">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <span class="full_scr"><!-- <i class="material-icons">&#xE5D0;</i> --></span>
        </div>
        <div class="site">
          <a href=" "><img src="${path}/images/use-1.PNG" alt=""  width="900" height="500"/></a>
        </div>
      </div>
      <div class="IA_window">
        <div class="bar">
          <div class="buttons">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <span class="full_scr"><!-- <i class="material-icons">&#xE5D0;</i> --></span>
        </div>
        <div class="site">
          <a href=" "><img src="${path}/images/use-2.PNG" alt="" width="900" height="500"/></a>
        </div>
      </div>
      <div class="IA_window">
        <div class="bar">
          <div class="buttons">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <span class="full_scr"><!-- <i class="material-icons">&#xE5D0;</i> --></span>
        </div>
        <div class="site">
          <a href=" "><img src="${path}/images/use-3.PNG" alt="" width="900" height="500"/></a>
        </div>
      </div>
       <div class="IA_window">
        <div class="bar">
          <div class="buttons">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <span class="full_scr"><!-- <i class="material-icons">&#xE5D0;</i> --></span>
        </div>
        <div class="site">
          <a href=" "><img src="${path}/images/use-4.PNG" alt="" width="900" height="500"/></a>
        </div>
      </div>
      <div class="IA_window">
        <div class="bar">
          <div class="buttons">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <span class="full_scr"><!-- <i class="material-icons">&#xE5D0;</i> --></span>
        </div>
        <div class="site">
          <a href=" "><img src="${path}/images/use-5.PNG" alt="" width="900" height="500"/></a>
        </div>
      </div>
 </body>


<script type="text/javascript">



/*       $(function() {
         var Accordion = function(el, multiple) {
            this.el = el || {};
            // more then one submenu open?
            this.multiple = multiple || false;

            var dropdownlink = this.el.find('.dropdownlink');
            dropdownlink.on('click', {
               el : this.el,
               multiple : this.multiple
            }, this.dropdown);
         };

         Accordion.prototype.dropdown = function(e) {
            var $el = e.data.el, $this = $(this),
            //this is the ul.submenuItems
            $next = $this.next();

            $next.slideToggle();
            $this.parent().toggleClass('open');

            if (!e.data.multiple) {
               //show only one menu at the same time
               $el.find('.submenuItems').not($next).slideUp().parent()
                     .removeClass('open');
            }
         }

         var accordion = new Accordion($('.accordion-menu'), false);
      }) */
      
      

      //PARALLAX

      $(window).scroll(function(){
        parallax();
      });

      function parallax(){
        var scrolled = $(window).scrollTop();
        $('.bg').css('top',-(scrolled*0.1)+'px');
        $('header .content').css('top',50+(scrolled*0.1)+'%');
        $('header .content').css('opacity',1-(scrolled*0.01)/10);
        $('header .content').css('opacity',1-(scrolled*0.01)/10);
      };

      $('.IA_window .full_scr').on('click',function(){
        $(this).parents().toggleClass('f_scr');
        
        $("html, body").animate({ scrollTop: $(this).parents().offset().top }, 500);
      });

   </script>



</html>