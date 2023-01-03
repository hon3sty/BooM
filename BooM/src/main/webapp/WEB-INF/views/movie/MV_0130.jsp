<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .blog__item h4 span{
            color: #e53637;
            margin-right: 10px;

        }
        .icon{
          transform: translateY(5px); 
          margin: auto;
        }
        .icon::before{
            content: "\e43a";
        
        }
        .heart{
        
          transform: translateY(5px);
          margin: auto;
        }
        .heart::before{
            content: "\e87d";
        
        }
        
        .normal-breadcrumb{
            opacity: 0.8;
        }
       

        
    </style>

   
</head>

<body>
    <!-- 메뉴바 영역 -->
    <jsp:include page="../common/header.jsp"/>

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" style="background-image : url(https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20190502_289%2F1556759412539S91Cw_JPEG%2Fmovie_image.jpg); background-size : cover;">
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
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Blog Section Begin  총 6개 컨텐츠(3개씩) -->
    <section class="blog spad">
        <div class="container">
            <div class="row">

                <!-- 왼쪽 영역시작 (3개)-->
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" style="background-image : url(); background-size : cover;">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span> 대충키워드적어주기</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="#">헤어질 결심</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" data-setbg="img/blog/mv3.jpg">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>키워드영역</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="#">Her</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" data-setbg="img/blog/mv4.jpg">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>키워드영역</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="#">헤드윅</a></h4>
                                </div>
                            </div>
                        </div>
                        
                        
                    
                    </div>
                </div>
                <!-- //왼쪽 영역 끝 -->
                
                <!-- 오른쪽 영역시작 (3개) -->
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" data-setbg="img/blog/mv6.jpg">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>키워드영역</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="#">Raw</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="blog__item small__item set-bg" data-setbg="img/blog/mv5.jpg">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>키워드영역</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="#">에브리띵 에브리웨어 올앳원스</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="blog__item set-bg" data-setbg="img/blog/mv7.jpg">
                                <div class="blog__item__text">
                                    <p><span class="material-symbols-outlined icon"></span>키워드영역</p>
                                    <h4><span class="material-symbols-outlined heart"></span><a href="#">러브레터</a></h4>
                                </div>
                            </div>
                        </div>
                        
                    
                    </div>
                </div>
                <!-- //오른쪽 영역 끝 -->


            </div>
        
        <script>
            //빈 하트 클릭하면 꽉찬하트로 바꾸고 다시 누르면 빈하트로 변하는 이벤트
            // $(".heart").click(function(){

            // })



        </script>
        
        </div>

        
        
    
    </section>
    <!-- Blog Section End -->

    <!-- 푸터바 영역 -->
    <jsp:include page="../common/footer.jsp"/>
   
   
    <!-- 페이지업버튼 영역 -->
<!-- 
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div> -->

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