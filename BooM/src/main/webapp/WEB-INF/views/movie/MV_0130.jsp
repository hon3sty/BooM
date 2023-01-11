<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 추천영화 리스트페이지 / 박연 -->
<title>추천영화</title>

    <!-- icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <style>
        .blog__item__text{
          background-color: rgba( 255, 0, 0, 0.4 );
          
          
        }
        
        .blog__item h4 span{
           /*  color: #e53637; */
            color: white;
            margin-right: 10px;

        }
        
       
        .icon{
          transform: translateY(5px); 
          margin: auto;
        }
        .icon::before{
            content: "\e43a";
        
        }
        
        .keyword{
          transform: translateY(5px); 
          margin: auto;
        }
        .keyword::before{
            content: "\e73c";
            color: white;
        
        }
        
        .normal-breadcrumb{
            opacity: 0.8;
        }
       
       .anime-details1 {
	/* padding-top: 0px; */
	width: 1000px;
} 

        
    </style>

   
</head>

<body>
    <!-- 메뉴바 영역 -->
    <jsp:include page="../common/header.jsp"/>
    <!-- 전체 영역-->	
<div id="outer_0010">		
<!--메뉴바 -->
<jsp:include page="../common/menu.jsp"/>

    <!-- Normal Breadcrumb Begin -->
   <!--  <section class="normal-breadcrumb set-bg" style="background-image : url(https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20190502_289%2F1556759412539S91Cw_JPEG%2Fmovie_image.jpg); background-size : cover;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>추천 영화</h2>
                        <p>당신을 위한 추천영화</p>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Normal Breadcrumb End -->
    
    <c:choose>
    <%-- 좋아요가 없을때 --%>
      <c:when test="${empty mvRecoList}">
      
        <section class="anime-details1">
        <div class="container">
           <div class="product__page__title">
			  <div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="section-title">
						<h4>추천영화</h4>
						</div>
					
					</div>
					</div>
					</div>  
            
            <div class="row">

                <%-- 왼쪽 영역시작 (3개)--%>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(${mvBestList[0].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span> ${mvBestList[0].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="movieDetail.mv?mno=${mvBestList[0].mvNo }">${mvBestList[0].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[1].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>${mvBestList[1].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="movieDetail.mv?mno=${mvBestList[1].mvNo }">${mvBestList[1].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[2].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>${mvBestList[2].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="movieDetail.mv?mno=${mvBestList[2].mvNo }">${mvBestList[2].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        
                    
                    </div>
                </div>
                <%-- //왼쪽 영역 끝 --%>
                
                <%-- 오른쪽 영역시작 (3개) --%>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[3].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>${mvBestList[3].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="movieDetail.mv?mno=${mvBestList[3].mvNo }">${mvBestList[3].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[4].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>${mvBestList[4].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="movieDetail.mv?mno=${mvBestList[4].mvNo }">${mvBestList[4].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(${mvBestList[5].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>${mvBestList[5].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="movieDetail.mv?mno=${mvBestList[5].mvNo }">${mvBestList[5].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                    
                    </div>
                </div>
                <%-- //오른쪽 영역 끝 --%>


            </div>
        
        </div>

        
        
    
    </section> 
      
      </c:when>
      
    <%-- 좋아요가 있을때 --%>  
      <c:otherwise>
        
        <c:choose>
         <%-- 추천영화가 6개 미만일때 --%>
          <c:when test="${fn:length(mvRecoList) < 6 }">
           
             <section class="anime-details1">
        <div class="container">
           <div class="product__page__title">
			  <div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="section-title">
						<h4>추천영화</h4>
						</div>
					
					</div>
					</div>
					</div>  
            
            <div class="row">

                <%-- 왼쪽 영역시작 (3개)--%>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(${mvRecoList[0].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span> ${mvRecoList[0].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[0].mvNo }">${mvRecoList[0].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvRecoList[1].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvRecoList[1].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[1].mvNo }">${mvRecoList[1].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[2].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvBestList[2].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvBestList[2].mvNo }">${mvBestList[2].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        
                    
                    </div>
                </div>
                <%-- //왼쪽 영역 끝 --%>
                
                <%-- 오른쪽 영역시작 (3개) --%>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[3].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvBestList[3].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvBestList[3].mvNo }">${mvBestList[3].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvBestList[4].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvBestList[4].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvBestList[4].mvNo }">${mvBestList[4].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(${mvBestList[5].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvBestList[5].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvBestList[5].mvNo }">${mvBestList[5].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                    
                    </div>
                </div>
                <%-- //오른쪽 영역 끝 --%>


            </div>
       
        </div>

        
        
    
    </section> 
         
          </c:when>
          <%-- 추천영화가 6개 이상일때 --%>
          <c:otherwise>
           
             <section class="anime-details1">
        <div class="container">
           <div class="product__page__title">
			  <div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="section-title">
						<h4>추천영화</h4>
						</div>
					
					</div>
					</div>
					</div>  
            
            <div class="row">

                <%-- 왼쪽 영역시작 (3개)--%>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(${mvRecoList[0].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span> ${mvRecoList[0].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[0].mvNo }">${mvRecoList[0].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvRecoList[1].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvRecoList[1].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[1].mvNo }">${mvRecoList[1].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvRecoList[2].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvRecoList[2].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[2].mvNo }">${mvRecoList[2].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        
                    
                    </div>
                </div>
                <%-- //왼쪽 영역 끝 --%>
                
                <%-- 오른쪽 영역시작 (3개) --%>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvRecoList[3].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvRecoList[3].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[3].mvNo }">${mvRecoList[3].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" style="background-image : url(${mvRecoList[4].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvRecoList[4].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[4].mvNo }">${mvRecoList[4].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(${mvRecoList[5].mvImg}); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined keyword"></span>${mvRecoList[5].mvKeyword }</p>
                                    <h4><span class="material-symbols-outlined icon"></span><a href="movieDetail.mv?mno=${mvRecoList[5].mvNo }">${mvRecoList[5].mvTitle}</a></h4>
                                </div>
                            </div>
                        </div>
                        
                    
                    </div>
                </div>
                <%-- //오른쪽 영역 끝 --%>


            </div>
        
        </div>

        
        
    
    </section> 
              
              
          
          
          </c:otherwise>
        </c:choose>
        
        
      </c:otherwise>
    
    </c:choose>

</div>
    <!-- 푸터바 영역 -->
    <jsp:include page="../common/footer.jsp"/>
   
   
    <!-- 페이지업버튼 영역 -->
<!-- 
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div> -->

   <!-- Js Plugins -->
     <!-- <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/player.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script> -->

</body>

</html>