<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- [공통] header : 이지윤 -->
    <title>Document</title>
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- template -->
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- [메인] 메인 이지윤 -->
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    
    <!-- Js Plugins -->
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/player.js"></script>
	<script src="resources/js/jquery.nice-select.min.js"></script>
	<script src="resources/js/mixitup.min.js"></script>
	<script src="resources/js/jquery.slicknav.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/main.js"></script>
    
</head>
<body>
		<c:if test="${not empty alertMsg }">
			<script>
				alert("${alertMsg}");
			</script>
			<c:remove var="alertMsg" scope="session"/>
		</c:if>
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.jsp">
                            <img src="resources/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="">영화 <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="">현재상영작</a></li>
                                        <li><a href="">무비차트</a></li>
                                    </ul>
                                </li>
                                <li><a href="">예매 <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="">빠른예매</a></li>
                                    </ul>
                                </li>
                                <li><a href="">스토어 <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="">영화관람권</a></li>
                                        <li><a href="">콤보</a></li>
                                        <li><a href="">팝콘</a></li>
                                        <li><a href="">음료</a></li>                                        
                                        <li><a href="">스낵</a></li>
                                    </ul>
                                </li>

                                 <li><a href=""><span>고객센터 <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="">FAQ</a></li>
                                        <li><a href="">공지사항</a></li>
                                        <li><a href="">1:1문의</a></li>
                                        <li><a href="">분실물문의</a></li>                                        
                                    </ul>
                                </li>
                          
                                
                        <span>
                           <c:choose>
      							<c:when test="${empty Memberlogin}">
                                <a href="login.me"><img src="img/common/lock.png" class="header__logo2"><span> 로그인 </span></a>                                
                                <a href="insert.me"><img src="img/common/user-b.png" class="header__logo2"><span> 회원가입 </span></a>
                         <!--   <a href="mypage.me"><img src="img/common/user-a.png" class="header__logo2"><span> 마이페이지 </span></a>-->
                         <!--   <a href=""><img src="img/common/headset.png" class="header__logo2"><span> 고객센터 </span></a>   -->
        
								</c:when>
							<c:otherwise>
					 <!--	<lable id="mem">${Memberlogin.memberName}님 환영합니다</label> &nbsp;&nbsp;  -->
         					<span id="lolo"><a href="logout.me"><img src="img/common/lock.png" class="header__logo2"> 로그아웃 </a></span>
                       <!--         <a href="mypage.me"><img src="img/common/user-a.png" class="header__logo2"><span> 마이페이지 </span></a>-->
                     <!--       <a href=""><img src="img/common/headset.png" class="header__logo2"><span> 고객센터 </span></a>-->

     				 		</c:otherwise>
      					  </c:choose>
					    </span>
                           </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <a href="mypage.me"><span class="icon_profile"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    
    <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="검색어를 입력해주세요.">
        </form>
    </div>
  </div>
<!-- Search model end -->

    
</body>
</html>