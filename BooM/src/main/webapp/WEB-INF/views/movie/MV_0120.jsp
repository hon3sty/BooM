<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 시간표 관리페이지(관리자) / 박연 -->
<title>상영스케줄 등록</title>

<!-- icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
 .fa-video-location::before{
    content: "\e0c8";
    box-sizing: border-box;
}

</style>


</head>

<body>

<!-- ============== 영화 시간표 관리페이지(관리자) / 박연 ============= -->   

   <!-- 메뉴바 영역 -->
   <jsp:include page="../common/header.jsp"/>
    

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

                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>영화 등록</h6>
                                
                            </div>
                             
                            <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                              
                              
                              <!-- 영화리스트 한 개체 시작 -->
                              <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 헤어질 결심
                               </a>
                              <!-- //영화리스트 한 개체 끝 -->

                               
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
                             
                             <!-- 지역 한 개체 시작 -->
                               <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 서울
                               </a>
                             <!-- //지역 한 개체 끝 -->  

                            
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
                               
                               <!-- 영화관 한 개체 시작 -->
                               <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 강남
                               </a>
                               <!-- //영화관 한 개체 끝 -->

                               
                             </div>



                        </div>
                        
                    </div>


               <!-- 날짜 목록 출력 -->
                 <div class="col-lg-2">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-success">

                                <h6 class="m-0 text-white"><i class="fa-video-location"></i>2022-12월 &nbsp; &nbsp;<input id="datepicker" type="date" style="width: 25px;"></h6>
                               
                            </div>
                             <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
                               
                               <!-- 상영일 한 개체 시작 -->
                               <a class="list-group-item list-group-item-action" href="#">
                                  <i class="fas fa-caret-right"></i> 오늘 13
                               </a>
                               <!-- 상영일 한 개체 끝 -->

                              
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


        <!-- 푸터바 영역 -->
        <jsp:include page="../common/footer.jsp"/>

    </body>

    </html>