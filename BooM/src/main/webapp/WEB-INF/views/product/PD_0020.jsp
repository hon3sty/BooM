<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [상품] 상품디테일 : 박혜영 -->
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
                        <a href="productList.pd?currentPage=${pi.currentPage-1}">상품</a>
                        <span>스토어</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad" style="width:auto;">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" style="background-image : url(${p.productImg })">
                        </div>
                    </div>
                    <div class="col-lg-9" style="padding-left: 200px;">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${p.productName}</h3>
                            </div>
                            <div class="anime__details__rating">
                            </div>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>유효기간:</span> 구매일로부터 3개월 이내</li>
                                            <li><span>사용처:</span> 모든 BooM 영화관</li>
                                            <li><span>구매제한:</span> 제한없음</li>
                                            <br><br>
                                            <li><span>가격:</span> ${p.productPrice}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <a href="wishList.me" class="follow-btn"><i class="fa fa-heart-o"></i> 장바구니</a>
                                <a href="productPurchase.pd?pno=${p.productNo}&&pprice=${p.productPrice}" class="watch-btn"><span>구매하기</span>
                                <i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<p style="color:white;">
				이용안내<br>
				• 극장 사정에 따라 일부 메뉴 제공이 어려울 수 있습니다.<br>
				• 해당 기프트콘은 오프라인 매점에서 실제 상품으로 교환할 수 있는 온라인 상품권입니다.<br>
				해당 상품 내에서 팝콘 맛 혹은 사이즈 변경 시 추가 비용 발생합니다.<br>
				교환 완료한 상품의 환불 및 반품은 불가합니다.<br>
				• 유효기간 연장을 신청하는 경우,<br>
				유효기간은 발급일로부터 5년 이내 횟수 제한 없이 기간 연장 가능하며, 1회 연장 시 3개월(92일) 단위로 유효기간이 연장됩니다.<br>
				단, 이벤트 경품 및 프로모션 상품의 경우 유효기간 연장이 불가할 수 있습니다.<br>
				유효기간 만료 이후에는 결제금액의 90% 환불이 가능합니다.<br>
				• 매점상품 기프트콘은 극장 매점에서 상품 교환 후 수령한 영수증으로 CJ ONE 적립이 가능합니다.<br>
				(모바일App,웹 > MY > 매점적립 or 홈페이지> My CGV > 매점이용 포인트 적립)<br>
				• 상기 이미지는 실제와 다를 수 있습니다.<br>
				</p>
            </div>
        </section>
        <!-- Anime Section End -->

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