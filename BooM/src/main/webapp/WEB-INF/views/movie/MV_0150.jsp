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
    <title>보고싶은 영화</title>

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

<!-- Icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>
<style>
	#review:hover{
		cursor:pointer;
	}
	#outer_0010 {
	display: flex;
	justify-content: center;
}

h6 > a {

   cursor:pointer;
   text-decoration: none;
   color:white;

}

h6 > a:hover{

   cursor:pointer;
   text-decoration: none;
   color:red;

}


 .anime-details1 {
	/* padding-top: 0px; */
	width: 1000px;
} 
.row{
    justify-content: left;
}


  
  
</style>

<body class="goto-here">
<jsp:include page="../common/header.jsp"/> 
<!-- 전체 영역-->	
<div id="outer_0010">
<!--메뉴바 -->
<jsp:include page="../common/menu.jsp"/>

<!--영역 시작  -->
<div id="pd">	
<!--영역 시작  -->	
  <!-- Product Section Begin -->
    <section class="anime-details1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                    <!-- ============== 영화 리스트 타이틀 영역 ============= -->
                                        <h4>보고싶은 영화</h4>
                                    </div>
                                </div>
                               
                            </div>
                        </div>

                    <!-- =========================================좋아요 영화리스트 영역 ========================================= -->
                    
                
                    <div class="row" id="mvContent_area">
                        
                     <c:forEach var="m" items="${myLikeMovieList}">       
                        <!-- 한 개체 시작-->
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" style="background-image : url(${m.mvImg}); background-size : contain;">
                                       
                                        <div class="heart"></div>
                                        <div class="view"><i class="fa fa-eye"></i> ${m.mvCount } </div>
                                    </div>
                                    <div class="product__item__text" align="center">
                                        
                                        <h5><a href="movieDetail.mv?mno=${m.mvNo}"> ${m.mvTitle } </a></h5>
                                    </div>
                                </div>
                            </div>
                        <!-- 한 개체 끝 -->
                        </c:forEach>

 
                        </div>
                    </div>
                    
                
                <!--=================== 페이징바 영역 ====================-->
                    <div class="product__pagination" align="center">
                    
                   <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="myLikeMovieList.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="myLikeMovieList.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <!--   페이징바 반복문 -->
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="myLikeMovieList.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <!-- 다음 버튼 활성화 -->
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="myLikeMovieList.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                       <a class="" href="myLikeMovieList.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                   
                       
                    </div>
                </div>
               
</div>
</div>
</section>
        <!-- Anime Section End -->
        <div id="aa">aa</div>
<!--pd영역 끝-->
</div>
</div>
<!--전체영역 끝-->   
	<jsp:include page="../common/footer.jsp" />
	

    </body>
    

    
    

    </html>