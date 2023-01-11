<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!-- [영화] 영화 리스트페이지 : 박연 -->
    <title>영화 리스트</title>


    <!-- icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>

        .search_box{
            position: relative;
          width: 300px;
            transform: translateY(58px);
            background-color: rgba(78, 78, 78, 0.544);
  height: 30px;
  padding: 5px;
  float: right;
  border-radius: 10px;
 
 
        }

        .search-btn {
            position: absolute;
  color: #EDEDED;
  
  width: 20px;
  height: 20px;
  border: none;
  background: none;
  display: flex;
  align-items: center;
  justify-content: center;
}

.search-txt {
    width: 90%;
  float: right;
  padding: 0;
  margin-left: 5px;
  background: none;
  border: none;
  outline: none;
  color: white;
  font-size: 13px;
  line-height: 20px;
}

       

        .filter_area>p>a{
            
            margin-left: 10px;
            font-size: 12px;
            font-weight: bold;
            color: white;
            float: left;
            text-decoration: none;

        }
        .filter_area>p>a:hover{
            border-left: 4px solid red;
        }

        #search-txt{
            padding: 0;
  background: none;
  border: none;
  outline: none;
  color: white;
  font-size: 15px;
  line-height: 40px;
        }
        
        /*.heart{
        font-size: 13px;
    color: #ffffff;
    background: red;
    display: inline-block;
    padding: 2px 10px;
    border-radius: 4px;
    position: absolute;
    left: 10px;
    bottom: 10px;
        }*/
        
       
        
    </style>
</head>

<body>

<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
    <!-- Header End -->
<!--=========================================================== 영화리스트, 영화 검색결과 페이지 =================================================================-->
    
<!-- 메뉴바 영역 -->


    <!-- 카테고리링크영역 Begin -->
    <!-- <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./categories.html">Categories</a>
                        <span>Romance</span>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- 카테고리링크영역 End -->

    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                    <!-- ============== 영화 리스트 타이틀 영역 ============= -->
                                        <h4>전체 영화 리스트</h4><br><div class="filter_area">
                                            <p><a href="mvBest.mv">&nbsp;인기순&nbsp;</a> 
                                               <a href="mvHigh.mv">&nbsp;예매율순&nbsp;</a> 
                                               <a href="mvNew.mv">&nbsp;최신순&nbsp;</a> 
                                               <a href="mvNow.mv">&nbsp;현재 상영작&nbsp;</a> </p> 
                                           
                                       </div>
                                    </div>
                                </div>
                                
                               
                                    
                                <!-- ====================== 검색 영역 ====================== -->
                                    <div class="col-lg-4">
                                        <div class="search_box">
                                        <form action="mvSearch.mv" method="get">
                                        <input type="hidden" name="currentPage" value="1">
                                            <input class="search-txt" type="text" name="SearchKeyword" placeholder="검색어를 입력해 주세요">
                                            <button class="search-btn" type="submit">
                                                <i class="fas fa-search"></i></button>
                                          </form>
                                          </div>
                                    </div>
                                
                            </div>
                        </div>

                    <!-- ========================================= 영화리스트 영역 ========================================= -->
                    
                
                    <div class="row" id="mvContent_area">
                            
                     <c:forEach var="m" items="${movieAllList}">       
                        <!-- 한 개체 시작-->
                            <div class="col-lg-3 col-md-6 col-sm-6">
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
                     <c:when test="${empty mvFilter}">
                       <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="movieList.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="movieList.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="movieList.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="movieList.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                       <a class="" href="movieList.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                    
                     </c:when>
                  
                     <c:otherwise>
                       <c:choose>
                         <c:when test="${mvFilter eq '인기순'}">
                           <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="mvBest.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="mvBest.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="mvBest.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="mvBest.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                     <a class="" href="mvBest.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                         
                         </c:when>
                         
                         <c:when test="${mvFilter eq '최신순'}">
                           <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="mvNew.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="mvNew.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="mvNew.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="mvNew.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                     <a class="" href="mvNew.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                         
                          </c:when>
                          
                         <c:when test="${mvFilter eq '예매율순'}">
                             <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="mvHigh.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="mvHigh.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="mvHigh.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="mvHigh.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                     <a class="" href="mvHigh.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                         
                         </c:when>
                       
                         <c:when test="${mvFilter eq '현재상영작'}">
                              <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="mvNow.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="mvNow.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="mvNow.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="mvNow.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                     <a class="" href="mvNow.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                         
                         </c:when>
                         
                         <c:when test="${mvFilter eq '검색결과'}">
                          <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="mvSearch.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="mvSearch.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="mvSearch.mv?currentPage=${p}" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="mvSearch.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                     <a class="" href="mvSearch.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                         
                         </c:when>
                      
                       </c:choose>
                     
                     </c:otherwise>
                   </c:choose> 
                    
                    
                       
                    </div>
                </div>
               
</div>
</div>
</section>

<!-- Product Section End -->

<!-- 푸터바 영역 -->
<jsp:include page="../common/footer.jsp" />

</body>


</html>