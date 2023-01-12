<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [상품] 상품 목록 : 박혜영 -->
<title>Insert title here</title>
</head>
<body>
 <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
    <!-- Header End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.jsp"><i class="fa fa-home"></i> Home</a>
                        <a href=productList.pd?currentPage=${pi.currentPage-1}>상품</a>
                        <!-- <span>상품</span> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

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
                                        <h4>Romance</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <p>Order by:</p>
                                        <select>
                                            <option value="">A-Z</option>
                                            <option value="">1-10</option>
                                            <option value="">10-50</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
	                            <c:forEach var="p" items="${list}">
                            <div class="col-lg-4 col-md-6 col-sm-6">
	                                <div class="product__item">
	                                    <div class="product__item__pic set-bg" style="background-image : url(${p.productImg })">
	                                        <div class="ep">18 / 18</div>
	                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
	                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
	                                    </div>
	                                    <div class="product__item__text">
	                                        <ul>
	                                            <li>Movie</li>
	                                        </ul>
	                                        <h5><a href="productDetail.pd?pno=${p.productNo}">${p.productName}</a></h5>
	                                    </div>
	                                </div>
                            </div>
                                </c:forEach>
                        </div>
                    </div>
                    <div class="product__pagination">
                    <c:choose>
                		<c:when test="${pi.currentPage ne 1 }">
                			<a href="productList.pd?currentPage=${pi.currentPage-1}"><i class="fa fa-angle-double-left"></i></a>
                		</c:when>
                	</c:choose>
                	<c:forEach begin="${pi.startPage }" end="${pi.endPage }" var="pg">
	                  <c:choose>
                		<c:when test="${pi.currentPage eq pg }">
                			<a class="current-page" href="productList.pd?currentPage=${pg}">${pg}</a>
                		</c:when>
                		<c:otherwise>
	                    	<a class="current-page" href="productList.pd?currentPage=${pg}">${pg}</a>
                		</c:otherwise>
                		</c:choose>
                	</c:forEach>
                    
                    <!-- currentPage가 maxPage와 일치하면 숨기기  -->
                    <c:choose>
						<c:when test="${pi.currentPage eq pi.maxPage }">
		                   <!--  <li class="page-item disabled"><a class="page-link" href="#">Next</a></li> -->
		                    <a href="#"><i class="fa fa-angle-double-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="productList.pd?currentPage=${pi.currentPage +1}"><i class="fa fa-angle-double-right"></i></a>
						</c:otherwise>                    
                    </c:choose>
                         
                    </div>
                </div>
			</div>
		</div>
</section>
<!-- Product Section End -->

<script>
</script>

<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"/>
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

</body>
</html>