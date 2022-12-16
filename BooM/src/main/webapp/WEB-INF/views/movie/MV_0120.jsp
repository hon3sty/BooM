<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 시간표 관리페이지(관리자) / 박연 -->

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

<!-- ============== 영화 시간표 관리페이지(관리자) / 박연 ============= -->   

   <!-- 메뉴바 영역 -->
    

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
                    <div class="product__page__title">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="section-title">
                                <!-- ============== 영화 시간표 관리페이지(관리자) 타이틀 영역 ============= -->
                                    <h4>스케줄 등록</h4>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                
                <!-- 영화, 지역, 영화관, 날짜 줄 begin -->
                 <div class="col-lg-12">
                 
                    <div class="row">
                    
                    <!-- 영화 목록 출력 -->
                    <div class="col-lg-5">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-danger">

                                <a href="#" id="mv_insert"><h6 class="m-0 text-white">영화 등록</h6></a>
                                
                            </div>
                             
                            <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                              
                              <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 헤어질 결심
                               </a>

                               <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 아바타
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 올빼미
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 러브 레터
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 이터널 선샤인
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 화양연화
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 중경삼림
                             </a>
                             </div>



                        </div>
                        
                    </div>
                <!-- 지역 목록 출력 -->
                 <div class="col-lg-2">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-secondary">

                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>지역 선택</h6>
                            </div>
                             <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                               <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 서울
                               </a>

                               <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 경기
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 인천
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 대전/충청/세종
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 부산/대구/경상
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 광주/전라/제주
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 강원
                             </a>
                             </div>



                        </div>
                        
                    </div>
                
                 <!-- 영화관 목록 출력 -->
                 <div class="col-lg-3">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-info">

                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>영화관 선택</h6>
                            </div>
                             <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                               <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 강남
                               </a>

                               <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 강변
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 건대입구
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 구로
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 대학로
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 동대문
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 등촌
                             </a>
                             </div>



                        </div>
                        
                    </div>


               <!-- 날짜 목록 출력 -->
                 <div class="col-lg-2">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-success">

                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>2022-12월 &nbsp; &nbsp;<input id="datepicker" type="date" style="width: 25px;"></h6>
                               
                            </div>
                             <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                               <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 오늘 13
                               </a>

                               <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 내일 14
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 목 15
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 금 16
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 토 17
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 일 18
                             </a>

                             <a class="list-group-item list-group-item-action" href="#">
                                <i class="fas fa-caret-right"></i> 월 19
                             </a>
                             </div>



                        </div>
                        
                    </div>

                    
                </div>
                </div>
               <!--// 영화, 지역, 영화관, 날짜 줄 end -->  
               
               <!-- 시간표, 선택확인 줄 begin --> 
               <div class="col-lg-12">
                  
                 <div class="row">
                    <!-- 회차 목록 출력 -->
                    <div class="col-lg-7">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-primary">

                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>시간표 선택</h6>
                            </div>
                             <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                              <h6>[ 1관 ]</h6>
                              <ul class="list-group list-group-horizontal">
                                  <li class="list-group-item"><a href="">8:00</a></li>
                                  <li class="list-group-item"><a href="">10:30</a></li>
                                  <li class="list-group-item"><a href="">13:00</a></li>
                                  <li class="list-group-item"><a href="">15:30</a></li>
                                  <li class="list-group-item"> <a href="">18:00</a></li>
                                  <li class="list-group-item"><a href="">20:30</a></li>
                                  <li class="list-group-item"><a href="">23:00</a></li>
                                  <li class="list-group-item"><a href="">25:30</a></li>
                                </ul>

                               <h6>[ 2관 ]</h6>
                              <ul class="list-group list-group-horizontal">
                                  <li class="list-group-item"><a href="">8:00</a></li>
                                  <li class="list-group-item"><a href="">10:30</a></li>
                                  <li class="list-group-item"><a href="">13:00</a></li>
                                  <li class="list-group-item"><a href="">15:30</a></li>
                                  <li class="list-group-item"> <a href="">18:00</a></li>
                                  <li class="list-group-item"><a href="">20:30</a></li>
                                  <li class="list-group-item"><a href="">23:00</a></li>
                                  <li class="list-group-item"><a href="">25:30</a></li>
                                </ul>

                               <h6>[ 3관 ]</h6>
                               <ul class="list-group list-group-horizontal">
                                  <li class="list-group-item"><a href="">8:00</a></li>
                                  <li class="list-group-item"><a href="">10:30</a></li>
                                  <li class="list-group-item"><a href="">13:00</a></li>
                                  <li class="list-group-item"><a href="">15:30</a></li>
                                  <li class="list-group-item"> <a href="">18:00</a></li>
                                  <li class="list-group-item"><a href="">20:30</a></li>
                                  <li class="list-group-item"><a href="">23:00</a></li>
                                  <li class="list-group-item"><a href="">25:30</a></li>
                                </ul>

                                <h6>[ 4관 ]</h6>
                               <ul class="list-group list-group-horizontal">
                                  <li class="list-group-item"><a href="">8:00</a></li>
                                  <li class="list-group-item"><a href="">10:30</a></li>
                                  <li class="list-group-item"><a href="">13:00</a></li>
                                  <li class="list-group-item"><a href="">15:30</a></li>
                                  <li class="list-group-item"> <a href="">18:00</a></li>
                                  <li class="list-group-item"><a href="">20:30</a></li>
                                  <li class="list-group-item"><a href="">23:00</a></li>
                                  <li class="list-group-item"><a href="">25:30</a></li>
                                </ul>

                             </div>

                        </div>
                        
                    </div>

                <!-- 선택확인 출력 -->
                 <div class="col-lg-5">
                    <div class="card shadow mb-4">
                        <div class="card-header bg-warning">

                            <h6 class="m-0 text-white"><i class="fas fa-video"></i>선택확인</h6>
                        </div>
                         <div class="list-group list-group-flush small" style="height: 200px;">
                           <!-- 선택한 요소 모두 뿌려주는 영역 -->
                           <table align="center">
                              <tbody>
                            
                                 <tr>
                                     <th rowspan="4"><img align="center" src="https://w.namu.la/s/2db10a346062200963354f62159e1690de15413604fb0a1e6b8971169ee4be69fcc1c8db51660d16b133f09057919a66b44074d2169affd899624230d34a7b9cf89555c40b1e44cd65bb1246292c64ee9062e40f8aaa37f42ffc7c8c313935ea3cec0c2347f1c771b3f641b221c7164f"  style="height:200px;" alt=""></th>
                                     <th>&nbsp; 영화 : </th>
                                     <td>&nbsp; 헤어질 결심</td>
                                 </tr>
                                 
                                 <tr>
                                     <th>&nbsp; 극장 : </th>
                                     <td>&nbsp;CGV센텀시티/ 1관</td>
 
                                 </tr>
                                 <tr>
                                     
                                     <th>&nbsp; 일시 : </th>
                                     <td>&nbsp;2022-12-22</td>
 
                                 </tr>
                                 <tr>
                                     
                                     <th>&nbsp; 회차 : </th>
                                     <td>&nbsp;8:00 ~ 11:22</td>
 
                                 </tr>
                             </tbody>
 


                           </table>
                         </div>



                    </div>
                    
                  </div>
                 </div>
               </div>    
            <!--// 시간표, 선택확인 줄 end --> 
              
            <!-- 좌석선택 버튼 영역 begin  -->
                  <div class="blog__details__btns">
                            <div class="row">
                                <div class="col">
                                    <div class="blog__details__btns__item" align="center">
                                        <h5><a href="#"><span class="arrow_right"></span>스케줄 등록</a>
                                        </h5>
                                    </div>
                                </div>
                      </div>
                  </div>         
            <!--// 좌석선택 버튼 영역 end  -->    
           
               </div>
            </div>
        </section>
        <!-- Blog Details Section End -->


        
        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

        <!-- 푸터바 영역 -->

    </body>

    </html>