<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<!-- 내가쓴 리뷰 [오하늘] -->
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
</head>
<style>
	#review:hover{
		cursor:pointer;
	}
</style>

<body>
  	<jsp:include page="../common/header.jsp"/>
    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>내가 쓴 리뷰</h5>
                            </div>
                            <c:forEach var="r" items="${list }">
	                            <div class="anime__review__item">
	                                <div class="anime__review__item__pic">
	                                    <img src="${r.movie.mvImg }" alt="">
	                                </div>
	                                <div id="review" class="anime__review__item__text">
	                                	<input type="hidden" id="mno" value="${r.mvNo }">
	                                    <h6>${r.movie.mvTitle }</h6>
	                                    <span style="color:white; float:right">${r.createDate }</span>
	                                    <p>${r.reContent }</p>
	                                </div>
	                            </div>
                             </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Anime Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="page-up">
                <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer__nav">
                            <ul>
                                <li class="active"><a href="./index.html">Homepage</a></li>
                                <li><a href="./categories.html">Categories</a></li>
                                <li><a href="./blog.html">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

                      </div>
                  </div>
              </div>
          </footer>
          <!-- Footer Section End -->

          <!-- Search model Begin -->
          <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch"><i class="icon_close"></i></div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="resources/js/jquery-3.3.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/player.js"></script>
        <script src="resources/js/jquery.nice-select.min.js"></script>
        <script src="resources/js/mixitup.min.js"></script>
        <script src="resources/js/jquery.slicknav.js"></script>
        <script src="resources/js/owl.carousel.min.js"></script>
        <script src="resources/js/main.js"></script>

    </body>
    <script>
    	//댓글 클릭시 영화디테일 페이지로 이동
    	$(document).on("click","#review",function(){
    		//movie no 추출
			var mno=$(this).children().eq(0).val();
    	})
    
    
    </script>
    
    
    

    </html>