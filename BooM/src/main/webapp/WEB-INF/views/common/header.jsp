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
<style>
#header__logo3{
    width: 15px;
    height: 15px;
	margin-right: 0px;
}
#header__logo4{
    width: 20px;
    height: 20px;
    margin-left: 10px;
}
.row_2{
    display: -ms-flexbox;
	display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -90px;
    margin-left: 200px;
    width:43%;
}
#header__logo2{
    width: 17px;
    height: 17px;
	margin-right: 3px;
}
#header__logo3{
    width: 15px;
    height: 15px;
	margin-right: 0px;
}
#header__logo4{
    width: 20px;
    height: 20px;
    margin-left: 10px;
	
}
.header__3{
	text-decoration: none;
	color: black;
	font-size: 13px;	
}
#mem{
	color : white;
	font-size: 13px;	
}
#logogo{
	color : #e1e1e1;
	font-weight: 500;
	line-height: 26px;
	margin-right: 10px;
    margin-top:10px;
    font-size: 13px;
    padding: 7px 3px 5px;
}
#logogo:hover{
	color : white;
	font-weight: 500;
	line-height: 26px;
	margin-right: 10px;
    margin-top:10px;
    font-size: 13px;
    padding: 7px 3px 5px;
}
#logogo2:hover{
	color : white;
	font-weight: 500;
	line-height: 26px;
    font-size: 15px;
}
#login_1 {
    text-align: right;
    padding-left: 153px;
    margin-right: 90px;
}
#login_2{ 
	text-align: right;
 	margin-left: 75px; 
    margin-right: 120px;
}
.row_1 {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -90px;
    margin-left: -19px;
}
#sisi{
	margin-right: -85px;
} 
#sisi2{
	margin-right: -255px;
}
.row_2{
    display: -ms-flexbox;
	display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -90px;
    margin-left: 200px;
    width:43%;
}
.row_3{
	display: flex;
}
#header_9{
	display: flex;	
}
.row_4{
	display: flex;	
}
#header_my0010{
	position: fixed;
	z-index: 99999;!important;
  	top: 0;
  	left: 0;
 	right: 0; 
    background: #0b0c2a; 
}
</style>
</head>
<body>
	<c:if test="${not empty alertMsg }">
			<script>
				alert("${alertMsg}");
			</script>
			<c:remove var="alertMsg" scope="session"/>
		</c:if>
<div id="header_my0010">
    <header class="header">
        <div class="container">
            <div class="row_1">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.jsp">
                            <img src="resources/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-82">
					<div class="header__nav">
					    <nav class="header__menu mobile-menu">
                          <ul id="row_2">
                               <li><a href="">영화 <span class="arrow_carrot-down"></span></a>
                                   <ul class="dropdown">
                                      <li><a href="">현재상영작</a></li>
                                      <li><a href="">무비차트</a></li>
                          		   </ul>
                               </li>
                               <li><a href="">예매 <span class="arrow_carrot-down"></span></a>
                                   <ul class="dropdown">
                                      <li><a href="ticketing1.mv">빠른예매</a></li> 
                                   </ul>
                               </li>
                               <li><a href="productList.pd">스토어 <span class=""></span></a>
                               </li>
                               <li><a href="csMainForm.bo">고객센터 <span class="arrow_carrot-down"></span></a>
                                   <ul class="dropdown">
                                       <li><a href="faqListForm.bo">FAQ</a></li>
                                       <li><a href="noticeList.bo">공지사항</a></li>
                                       <li><a href="">1:1문의</a></li>
                                       <li><a href="">분실물문의</a></li>                                        
                                   </ul>
                               </li> 
                          <span id="login_1">
                           <c:choose>
      						  <c:when test="${empty Memberlogin}">
      						  <span id="sisi">
                                <a href="login.me"><img src="resources/img/common/lock.png" id="header__logo3"><span id="logogo"> 로그인 </span></a>                                
                                <a href="insert.me"><img src="resources/img/common/user-a.png" id="header__logo3"><span id="logogo"> 회원가입 </span></a>
                                
                                <a href="login.me"><img src="resources/img/common/user-b.png" id="header__logo3"><span id="logogo" onclick="mypage()"> 마이페이지 </span></a>
            
								<span class="col-lg-2">
								<span class="header__right">
                         		 <a href="#" class="search-switch"><img src="resources/img/common/search.png" id="header__logo3"></a></span>
                         		 <a href="#"><img src="resources/img/common/menu-burger.png" id="header__logo4"><span id="logogo"></span></a></span>
                         		 </span>
                         		</span>
                         		</span>
        					  </c:when>
							<c:otherwise>
        				   <span id="login_2">	  	
					 <!--	<lable id="mem">${Memberlogin.memberName}님 환영합니다</label> &nbsp;&nbsp;  -->
					 		 <span id="sisi2">
         						<a href="logout.me"><img src="resources/img/common/1_unlock.png" id="header__logo3"><span id="logogo"> 로그아웃 </span></a>
         						<a href="mypage.me"><img src="resources/img/common/user-b.png" id="header__logo3"><span id="logogo"> 마이페이지 </span></a>
         						<span class="col-lg-2">
							 	<span class="header__right">
                         	 	 <a href="#" class="search-switch"><img src="resources/img/common/search.png" id="header__logo3"></a></span>
                         	 	 <a href="#"><img src="resources/img/common/menu-burger.png" id="header__logo4"><span id="logogo"></span></a></span>
								</span>
      					  	   </span>
							 </c:otherwise>
      					   </c:choose>
      				  </ul>
                    </nav>
                  </div>
               </div>              
			 </div>
            <div id="mobile-menu-wrap"></div>
            </div>
             </div>
        <script>       	
        	$(function() {
        		//돋보기 아이콘 클릭시 생성
        		$(".search-switch").on("click",function(){
            		$(".search-model").css("display","block");
            	})
        		//검색에서 X 버튼 클릭시 삭제
        		$(".search-close-switch").click(function(){
            		$(".search-model").css("display","none");
            	})
        	})      	
        </script>
</header>
 <!-- Search model Begin -->
  <div class="search-model" id="model-close">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="검색어를 입력해주세요.">
        </form>
    </div>
  </div>
<!-- Search model end -->

    <script>
		function mypage() {
  			alert("마이페이지는 로그인 후 사용하실 수 있습니다.");
  			window.location.href = "login.me";
		}
	</script>

</div>
<br><br>
</body>
</html>