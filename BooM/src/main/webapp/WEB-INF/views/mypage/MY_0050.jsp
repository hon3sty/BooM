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
	#outer_0010 {
	display: flex;
	justify-content: center;
}
.anime-details {
	padding-top: 60px;
	width: 1000px;
}
.row{
    justify-content: center;
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
                            <c:forEach var="r" items="${myReviewList }">
	                            <div class="anime__review__item">
	                                <div class="anime__review__item__pic">
	                                    <img src="${r.movie.mvImg }" alt="">
	                                </div>
	                                <div id="review" class="anime__review__item__text">
	                                	<input type="hidden" id="mno" value="${r.mvNo }">
	                                    <h6>${r.movie.mvTitle }</h6>
	                                    <span style="color:white; float:right">${r.reCreateDate }</span>
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
        <div id="aa">aa</div>
<!--pd영역 끝-->
</div>
</div>
<!--전체영역 끝-->   
	<jsp:include page="../common/footer.jsp" />

    </body>
    
    <script>
    	//댓글 클릭시 영화디테일 페이지로 이동
    	$(document).on("click","#review",function(){
    		//movie no 추출
			var mno=$(this).children().eq(0).val();
    	})
    
    
    </script>

    
    

    </html>