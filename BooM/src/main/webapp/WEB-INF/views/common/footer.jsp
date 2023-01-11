<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- [공통] footer : 이지윤 -->
    <title>Document</title>
<style>
.footer {
	background: #070720;
	padding-top: 60px;
	padding-bottom: 40px;
	position: relative;
    width: 100%;
}
.footer__logo2{
    width: 24px;
    height: 24px;
    margin: 4px;
}
.footer__logo5{
    width: 14px;
    height: 14px;
    margin: 4px;;
}
#logogo2:hover{
	color : #cbc3c3;
	font-weight: 500;
	line-height: 26px;
    font-size: 14px;
}
#logogo2{
	color : white;
	font-weight: 500;
	line-height: 26px;
	margin-right: 10px;
    margin-top:10px;
	font-size: 14px;
	padding: 7px 3px 5px;
}
#footer-sns{ 
    margin-left:120px;
 } 
 p {
	font-size: 15px;
	font-family: "Mulish", sans-serif;
	color: #3d3d3d;
	font-weight: 400;
	line-height: 25px;
	margin: 0 0 15px 15px !important;;
}
</style>  
</head>
<body>
<br><br><br><br><br><br><br>
<div id="footer__01">
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="./index.jsp"><img src="resources/img/common/22.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                       <li><a href="movieList.mv"><img src="resources/img/common/1_film.png" class="footer__logo5"><span id="logogo2" >영화</span></a></li>
                       <li><a href="ticketing1.mv"><img src="resources/img/common/1_ticket.png" class="footer__logo5"> <span id="logogo2">예매</span></a></li>
                       <li><a href="productList.pd"><img src="resources/img/common/1_shopping-cart.png" class="footer__logo5"><span id="logogo2">스토어</span></a></li>
                       <li><a href="csMainForm.bo"><img src="resources/img/common/1_headset.png" class="footer__logo5"> <span id="logogo2">고객센터</span></a></li>
                     </ul>
                </div>
            </div> 
            <br>
            <div class="col-lg-3">
            <div id="footer-sns">
                  <a href="https://www.instagram.com/" target="_blank" title="인스타그램 페이지로 이동"><img src="resources/img/common/instagram.png" class="footer__logo2"></a>
                  <a href="https://www.facebook.com/" target="_blank" title="페이스북 페이지로 이동"><img src="resources/img/common/facebook.png" class="footer__logo2"></a>
                  <a href="https://twitter.com/" target="_blank" title="트위터 페이지로 이동"><img src="resources/img/common/twitter.png" class="footer__logo2"></a>
                  <a href="https://www.youtube.com/" target="_blank" title="유튜브 페이지로 이동"><img src="resources/img/common/youtube.png" class="footer__logo2"></a>
            </div>
            <br><br>
            </div>
             	<p id="p1">서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F  | 고객센터 1544-5586<br>
			          대표이사 이호선 | 사업자등록번호 522-29-1994 | 통신판매업신고번호 제1994호 | 개인정보 보호 최고 책임자 이선유<br>
			    Copyright © 1994-2022 KH Information Educational Institute All Right Reserved</p>
          </div><br><br>
      </div>
  </footer>   
  </div>
</body>
</html>