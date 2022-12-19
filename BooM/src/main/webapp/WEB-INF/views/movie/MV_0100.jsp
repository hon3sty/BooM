<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 수정 페이지(관리자) / 우도균 -->
<title>영화 수정페이지</title>

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
   
    <!--jquery 사용해야해서 넣음-->
    <script src="https://code.jquery.com/jquery-3.6.2.js" integrity="sha256-pkn2CUZmheSeyssYw3vMp1+xyub4m+e+QK4sQskvuo4=" crossorigin="anonymous"></script>
    <!--jquery 나중에 삭제-->

    <style>
      input{
         width: 400px;
      }
    </style>
</head>
<body>

  <!-- 메뉴바 -->
  <jsp:include page="../common/header.jsp"/>
 
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
            <div class="section-title">
               <!-- ============== 수정 페이지 타이틀 영역 ============= -->
                  <h4>영화 수정 페이지</h4>
            </div>
            
            <div class="row">
               <div class="col-lg-3">
                  <p style="color: #b7b7b7;">이미지</p>
                  <div class="anime__details__pic set-bg" id="" data-setbg=""><img id="imgview" src="img/anime/mv1.jpg"></div>
                  <input type="file" id="file" onchange="readURL(this);">
               </div>
               <div class="col-lg-9">
                  
         <!--==================================================== 영화 상세정보 영역 ========================================================== -->
                  <div class="anime__details__text">
                        
                     <!--========== 타이틀 영역 ==========-->
                     <div class="anime__details__title">
                        <p>제목</p>
                        <h3><input type="text" value="해어질 결심"></h3> 
                     </div>
                     
                  
                     <!--======== 줄거리 영역 시작=========-->
                     <p>줄거리</p>
                     <p><textarea cols="70" rows="8" name="">
                     산 정상에서 추락한 한 남자의 변사 사건.
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
                        그들의 헤어질 결심
                     </textarea></p>
                     <!--======== 줄거리 영역 끝=========-->
                     <div class="anime__details__widget">
                        <div class="row">
                           <div class="col-lg-6 col-md-6">
                              <!--======== 기타 내용들의 영역 시작=========-->
                                 <ul>
                                    <li><span>키워드 : </span><input type="text" value="멜로/로맨스, 드라마, 서스펜스"></li>
                                    <li><span>개봉일 : </span><input type="date" value="2022-06-29"></li>
                                    <li><span>상영시간 : <input type="text" value="113"></li>
                                 </ul>
                           </div>
                           <div class="col-lg-6 col-md-6">
                              <ul>
                                 <li><span>감독 : </span><input type="text" value="박찬욱"></li>
                                 <li><span>출연 : </span><input type="text" value="박해일(해준), 탕웨이(서래), 이정현(정안)"></li>
                                 <li><span>등급 : </span><input type="text" value="[국내] 15세 관람가"></li>
                              </ul>
                              <!--======== 기타 내용들의 영역 끝=========-->
                           </div>
                        </div>
                     </div>
                  
                     <!-- ================== 등록, 취소하기 버튼 영역 ================= -->
                     <div class="anime__details__btn">
                        <a href="#" class="follow-btn"><span>등록하기</span></a>
                        <a href="#" class="follow-btn"><span>취소하기</span></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section> 
                     
                 
        
         <!-- 푸터바 -->
         <jsp:include page="../common/footer.jsp"/>
         
         <script>
            function readURL(input) {
               if (input.files && input.files[0]) {
                  var reader = new FileReader();
                  reader.onload = function(e) {
                     $("#imgview").attr('src',e.target.result);
                  };
                  reader.readAsDataURL(input.files[0]);
               } else {
                  document.getElementById('data-setbg').src = "";
               }
            }
         </script>
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