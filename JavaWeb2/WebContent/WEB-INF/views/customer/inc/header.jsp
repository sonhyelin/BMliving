<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>

   <header id="header">
   <div class="content-container">
      <h1 id="logo">
         <a href="../home/main"><img src="../../images/logo.jpg"
            width="200px" height="100px" alt="PUPPYFOOD101" /></a>
      </h1>

      <section>
         <!-- <nav id="main-menu" class="hd-list"> -->
         <div class="gnb">
            <ul class="header-menu">
               <!-- <li class="menuhover"><a href="../menu/intro">회사 소개</a></li> -->
               <li class="menuhover"><a href="#">회사 소개</a>
                  <ul class="submenu">
                     <li><a href="../menu/intro-ceo">CEO 인사말</a></li>
                     <li><a href="../menu/intro-com">회사 소개 및 개요</a></li>
                     <li><a href="../menu/intro-his">연혁</a></li>
                     <li><a href="../menu/intro-map">찾아오시는 길</a></li>
                  </ul>
               </li>
               <li class="menuhover"><a href="#">제품 소개</a>
                  <ul class="submenu">
                     <li><a href="../menu/product-mir">거울</a></li>
                     <li><a href="../menu/product-gla">유리</a></li>
                  </ul>
               </li>
               <li class="menuhover"><a href="#">기술 및 특허</a>
                  <ul class="submenu">
                     <li><a href="../menu/tech-tech">기술</a></li>
                     <li><a href="../menu/tech-pat">특허</a></li>
                  </ul>
               </li>
               <li class="menuhover"><a href="#">문의 게시판</a>
                  <ul class="submenu">
                     <li><a href="../board/board-qna">Q&A</a></li>
                     <li><a href="../menu/board-other">기타 문의</a></li>
               
                  </ul>
               </li>
            </ul>
         
         </div>
         <!-- </nav> -->
         <nav id="member-menu" class="hd-list">
         <ul>
            <%-- <li>
               <c:if test="${empty sessionScope.id}">
               <a href="../member/login">로그인</a>
	            </c:if> 
	            <c:if test="${not empty sessionScope.id}">
	               <a href="../member/logout">로그아웃</a>
	            </c:if>
         	</li> --%>
            <!-- <li><a href="../member/mypage-check">마이페이지</a></li> -->
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
   
   <script type="text/javascript">
;( function( window ) {
   
   'use strict';

   var document = window.document,
      docElem = document.documentElement;

   function extend( a, b ) {
      for( var key in b ) { 
         if( b.hasOwnProperty( key ) ) {
            a[key] = b[key];
         }
      }
      return a;
   }

   // from https://github.com/ryanve/response.js/blob/master/response.js
   function getViewportH() {
      var client = docElem['clientHeight'],
         inner = window['innerHeight'];
      if( client < inner )
         return inner;
      else
         return client;
   }

   // http://stackoverflow.com/a/11396681/989439
   function getOffset( el ) {
      return el.getBoundingClientRect();
   }

   // http://snipplr.com/view.php?codeview&id=5259
   function isMouseLeaveOrEnter(e, handler) { 
      if (e.type != 'mouseout' && e.type != 'mouseover') return false; 
      var reltg = e.relatedTarget ? e.relatedTarget : 
      e.type == 'mouseout' ? e.toElement : e.fromElement; 
      while (reltg && reltg != handler) reltg = reltg.parentNode; 
      return (reltg != handler); 
   }

   function cbpTooltipMenu( el, options ) {   
      this.el = el;
      this.options = extend( this.defaults, options );
      this._init();
   }

   cbpTooltipMenu.prototype = {
      defaults : {
         // add a timeout to avoid the menu to open instantly
         delayMenu : 100
      },
      _init : function() {
         this.touch = Modernizr.touch;
         this.menuItems = document.querySelectorAll( '#' + this.el.id + ' > li' );
         this._initEvents();
      },
      _initEvents : function() {
         
         var self = this;

         Array.prototype.slice.call( this.menuItems ).forEach( function( el, i ) {
            var trigger = el.querySelector( 'a' );
            if( self.touch ) {
               trigger.addEventListener( 'click', function( ev ) { self._handleClick( this, ev ); } );
            }
            else {
               trigger.addEventListener( 'click', function( ev ) {
                  if( this.parentNode.querySelector( 'ul.cbp-tm-submenu' ) ) {
                     ev.preventDefault();
                  }
               } );
               el.addEventListener( 'mouseover', function(ev) { if( isMouseLeaveOrEnter( ev, this ) ) self._openMenu( this ); } );
               el.addEventListener( 'mouseout', function(ev) { if( isMouseLeaveOrEnter( ev, this ) ) self._closeMenu( this ); } );
            }
         } );

      },
      _openMenu : function( el ) {

         var self = this;
         clearTimeout( this.omtimeout );
         this.omtimeout = setTimeout( function() {
            var submenu = el.querySelector( 'ul.cbp-tm-submenu' );

            if( submenu ) {
               el.className = 'cbp-tm-show';
               if( self._positionMenu( el ) === 'top' ) {
                  el.className += ' cbp-tm-show-above';
               }
               else {
                  el.className += ' cbp-tm-show-below';
               }
            }
         }, this.touch ? 0 : this.options.delayMenu );

      },
      _closeMenu : function( el ) {
         
         clearTimeout( this.omtimeout );

         var submenu = el.querySelector( 'ul.cbp-tm-submenu' );

         if( submenu ) {
            // based on https://github.com/desandro/classie/blob/master/classie.js
            el.className = el.className.replace(new RegExp("(^|\\s+)" + "cbp-tm-show" + "(\\s+|$)"), ' ');
            el.className = el.className.replace(new RegExp("(^|\\s+)" + "cbp-tm-show-below" + "(\\s+|$)"), ' ');
            el.className = el.className.replace(new RegExp("(^|\\s+)" + "cbp-tm-show-above" + "(\\s+|$)"), ' ');
         }

      },
      _handleClick : function( el, ev ) {
         var item = el.parentNode,
            items = Array.prototype.slice.call( this.menuItems ),
            submenu = item.querySelector( 'ul.cbp-tm-submenu' )

         // first close any opened one..
         if( this.current &&  items.indexOf( item ) !== this.current ) {
            this._closeMenu( this.el.children[ this.current ] );
            this.el.children[ this.current ].querySelector( 'ul.cbp-tm-submenu' ).setAttribute( 'data-open', 'false' );
         }

         if( submenu ) {
            ev.preventDefault();

            var isOpen = submenu.getAttribute( 'data-open' );

            if( isOpen === 'true' ) {
               this._closeMenu( item );
               submenu.setAttribute( 'data-open', 'false' );
            }
            else {
               this._openMenu( item );
               this.current = items.indexOf( item );
               submenu.setAttribute( 'data-open', 'true' );
            }
         }

      },
      _positionMenu : function( el ) {
         // checking where's more space left in the viewport: above or below the element
         var vH = getViewportH(),
            ot = getOffset(el),
            spaceUp = ot.top ,
            spaceDown = vH - spaceUp - el.offsetHeight;
         
         return ( spaceDown <= spaceUp ? 'top' : 'bottom' );
      }
   }

   // add to global namespace
   window.cbpTooltipMenu = cbpTooltipMenu;

} )( window );

</script>

</body>
</html>