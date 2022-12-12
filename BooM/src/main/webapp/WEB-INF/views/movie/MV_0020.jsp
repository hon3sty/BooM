<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [영화] 영화 상세페이지 : 박연 -->
<title>영화 상세페이지</title>

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
</head>
<body>

  <!-- 메뉴바 -->
 <%--  <jsp:include page=""/> --%>
 
 <!-- ========== 카테고리링크 영역 ========== -->
  <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
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
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="img/anime/mv1.jpg">
                            <div class="comment"><i class="fa fa-comments"></i> 11</div> <!-- 별점리뷰 수 노출 부분 -->
                           <div class="view"><i class="fa fa-eye"></i> 9141</div> <!-- 조회수 노출 부분 -->
                        </div>
                    </div>
                    <div class="col-lg-9">
                      
               <!--==================================================== 영화 상세정보 영역 ========================================================== -->
                        <div class="anime__details__text">
                            
                        <!--========== 타이틀 영역 ==========-->
                            <div class="anime__details__title">
                                <h3>헤어질 결심</h3> <!-- 영화제목 -->
                                <span>Decision To Leave, 2021</span> <!-- 부제(영문제목) -->
                            </div>
                           
                        <!--==== 별점 영역 ====-->
                            <div class="anime__details__rating">
                                <div class="rating"> <!-- 별점이미지 -->
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                <span>8.96</span>
                            </div>
                        <!--======== 줄거리 영역 =========-->
                            <p>산 정상에서 추락한 한 남자의 변사 사건.
                                담당 형사 '해준'(박해일)은
                                사망자의 아내 '서래'(탕웨이)와 마주하게 된다.
                                
                                "산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐."
                                
                                남편의 죽음 앞에서 특별한 동요를 보이지 않는 '서래'.
                                경찰은 보통의 유가족과는 다른 '서래'를 용의선상에 올린다.
                                '해준'은 사건 당일의 알리바이 탐문과 신문,
                                잠복수사를 통해 '서래'를 알아가면서
                                그녀에 대한 관심이 점점 커져가는 것을 느낀다.
                                
                                한편, 좀처럼 속을 짐작하기 어려운 '서래'는
                                상대가 자신을 의심한다는 것을 알면서도
                                조금의 망설임도 없이 '해준'을 대하는데….
                                
                                진심을 숨기는 용의자
                                용의자에게 의심과 관심을 동시에 느끼는 형사
                                그들의 <헤어질 결심></p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>키워드 : </span>멜로/로맨스, 드라마, 서스펜스</li>
                                            <li><span>개봉일 : </span>2022 .06.29</li>
                                            <li><span>누적관객 : </span>1,891,137명(12.08 기준)</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>감독 : </span>박찬욱</li>
                                            <li><span>출연 : </span>박해일(해준), 탕웨이(서래), 이정현(정안)</li>
                                            <li><span>등급 : </span>[국내] 15세 관람가</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        
                        <!-- ================== 좋아요, 예매하기 버튼 영역 ================= -->
                            <div class="anime__details__btn">
                                <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> 좋아요</a>
                                <a href="#" class="watch-btn"><span>예매하기</span> <i
                                    class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        
                  <!--============================================ 리뷰리스트와 리뷰작성 영역 ============================================ -->
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>별점 리뷰</h5>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-1.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Chris Curry - <span>1 Hour ago</span></h6>
                                    <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                    "demons" LOL</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-2.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Lewis Mann - <span>5 Hour ago</span></h6>
                                    <p>Finally it came out ages ago</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-3.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Louis Tyler - <span>20 Hour ago</span></h6>
                                    <p>Where is the episode 15 ? Slow update! Tch</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-4.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Chris Curry - <span>1 Hour ago</span></h6>
                                    <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                    "demons" LOL</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-5.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Lewis Mann - <span>5 Hour ago</span></h6>
                                    <p>Finally it came out ages ago</p>
                                </div>
                            </div>
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic">
                                    <img src="img/anime/review-6.jpg" alt="">
                                </div>
                                <div class="anime__review__item__text">
                                    <h6>Louis Tyler - <span>20 Hour ago</span></h6>
                                    <p>Where is the episode 15 ? Slow update! Tch</p>
                                </div>
                            </div>
                        </div>
                        <div class="anime__details__form">
                            <div class="section-title">
                                <h5>리뷰 작성</h5>
                            </div>
                            <form action="#">
                                <textarea placeholder="Your Comment"></textarea>
                                <button type="submit"><i class="fa fa-location-arrow"></i> 리뷰등록</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
            
                <!--============================================ 추천 영화리스트 영역 ============================================ -->
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>추천 영화 목록</h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-1.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Boruto: Naruto next generations</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-2.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-3.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-4.jpg">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <!-- 푸터바 -->
 <%--  <jsp:include page=""/> --%>

         <!-- Js Plugins -->
         <script src="js/jquery-3.3.1.min.js"></script>
         <script src="js/bootstrap.min.js"></script>
         <script src="js/player.js"></script>
         <script src="js/jquery.nice-select.min.js"></script>
         <script src="js/mixitup.min.js"></script>
         <script src="js/jquery.slicknav.js"></script>
         <script src="js/owl.carousel.min.js"></script>
         <script src="js/main.js"></script>
 
</body>
</html>