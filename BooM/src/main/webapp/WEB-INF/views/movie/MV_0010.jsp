<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!-- [영화] 영화 리스트페이지 : 박연 -->
    <title>영화 리스트</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">

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
        
       
        
    </style>
</head>

<body>
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
                                            <p><a href="">&nbsp;인기순&nbsp;</a> 
                                               <a href="">&nbsp;예매율순&nbsp;</a> 
                                               <a href="">&nbsp;최신순&nbsp;</a> 
                                               <a href="">&nbsp;현재 상영작&nbsp;</a> </p> 
                                           
                                       </div>
                                    </div>
                                </div>
                                
                                    
                                <!-- ====================== 정렬 필터영역 ====================== -->
                                    <div class="col-lg-4">
                                        <div class="search_box">
                                        <form action="." method="post">
                                            <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요">
                                            <button class="search-btn" type="submit">
                                                <i class="fas fa-search"></i></button>
                                          </form>
                                          </div>
                                    </div>
                                
                            </div>
                        </div>

                    <!-- ========================================= 영화리스트 영역 ========================================= -->
                    
                    <!-- <div class="col-lg-4 filter_area">
                        <p><a href="">&nbsp;인기순&nbsp;</a> 
                           <a href="">&nbsp;예매율순&nbsp;</a> 
                           <a href="">&nbsp;최신순&nbsp;</a> 
                           <a href="">&nbsp;현재 상영작&nbsp;</a> </p> 
                       
                   </div> -->
                    <div class="row">
                            
                            
                        <!-- 한 개체 시작-->
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/mv1.jpg">
                                       
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">헤어질 결심</a></h5>
                                    </div>
                                </div>
                            </div>
                        <!-- 한 개체 끝 -->

                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20201028_19%2F1603867994616GALu9_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">화양연화</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20150922_278%2F14429125873720WOoU_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">이터널선샤인</a></h5>
                                    </div>
                                </div>
                            </div>

                            <!-- 한 개체 시작-->
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/mv1.jpg">
                                       
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">헤어질 결심</a></h5>
                                    </div>
                                </div>
                            </div>
                        <!-- 한 개체 끝 -->

                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20201028_19%2F1603867994616GALu9_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">화양연화</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20150922_278%2F14429125873720WOoU_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">이터널선샤인</a></h5>
                                    </div>
                                </div>
                            </div>

                            <!-- 한 개체 시작-->
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/mv1.jpg">
                                       
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">헤어질 결심</a></h5>
                                    </div>
                                </div>
                            </div>
                        <!-- 한 개체 끝 -->

                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20201028_19%2F1603867994616GALu9_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">화양연화</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20150922_278%2F14429125873720WOoU_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">이터널선샤인</a></h5>
                                    </div>
                                </div>
                            </div>

                            <!-- 한 개체 시작-->
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/mv1.jpg">
                                       
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">헤어질 결심</a></h5>
                                    </div>
                                </div>
                            </div>
                        <!-- 한 개체 끝 -->

                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20201028_19%2F1603867994616GALu9_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">화양연화</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20150922_278%2F14429125873720WOoU_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">이터널선샤인</a></h5>
                                    </div>
                                </div>
                            </div>

                            <!-- 한 개체 시작-->
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/mv1.jpg">
                                       
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">헤어질 결심</a></h5>
                                    </div>
                                </div>
                            </div>
                        <!-- 한 개체 끝 -->

                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20201028_19%2F1603867994616GALu9_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">화양연화</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20150922_278%2F14429125873720WOoU_JPEG%2Fmovie_image.jpg">
                                        
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        
                                        <h5><a href="#">이터널선샤인</a></h5>
                                    </div>
                                </div>
                            </div>

                        
                        </div>
                    </div>
                    
                
                <!--=================== 페이징바 영역 ====================-->
                    <div class="product__pagination" align="center">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
                <!-- <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="product__sidebar">
                        
                    

</div>
</div> -->
</div>
</div>
</section>

<!-- Js Plugins -->
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/player.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/mixitup.min.js"></script>
<script src="resources/js/jquery.slicknav.js"></script>
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/main.js"></script>


<!-- Product Section End -->

<!-- 푸터바 영역 -->

</body>

</html>