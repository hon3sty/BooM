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

    <link href="https://fonts.googleapis.com/
    icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    rel="stylesheet">
    <!-- [영화] 영화예매페이지3(결제방식선택페이지) : 박연/우도균 -->
     <!-- ============== 예매페이지3(결제방식) ============= -->
    <title>예매페이지3</title>

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
    

    <style>

.inline-block{
   display: inline-block;
   margin: 10px;
   width: 130px;
   height: 65px;
   align-items: center;
   
}


.mvDetail_area{
  
   display: block;
}

.mvDetail>img{
   margin-top: 25px;
   align-items: center;
}

.pay_area{
   display: flex;
   margin: auto;
  
   align-items: center;
   
}

      button{
         background-position: center 14px;
                           background-position-x: center;
                           background-position-y: 14px; 
                           overflow: visible;
    position: relative;
    width: 130px;
    height: 68px;
    line-height: 95px;
    background-repeat: no-repeat;
      }

    </style>

</head>

<body>

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
                                <!-- ============== 예매페이지3 타이틀 영역 ============= -->
                                    <h4>결제방식 선택</h4>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                
                <!-- 영화, 지역, 영화관, 날짜 줄 begin -->
                 <div class="col-lg-12">
                  
                    <div class="row">
                    
                    <!-- 결제/할인 방식 목록 출력 -->
                    <div class="col-lg-6">
                        <div class="card shadow mb-4">
                            <div class="card-header bg-danger">

                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>예매정보</h6>
                            </div>
                             <div class="mvDetail_area" style="height: 600px;">
                              <div class="mvDetail" align="center" style="height: 300px;">
                                 <img src="https://w.namu.la/s/2db10a346062200963354f62159e1690de15413604fb0a1e6b8971169ee4be69fcc1c8db51660d16b133f09057919a66b44074d2169affd899624230d34a7b9cf89555c40b1e44cd65bb1246292c64ee9062e40f8aaa37f42ffc7c8c313935ea3cec0c2347f1c771b3f641b221c7164f"  style="height:250px;" alt="">

                              </div>

                              <table class="table" style="text-align: center; height: 300px;">
                                 <tbody>
                               
                                    <tr>
                                       
                                       <th>&nbsp; 영화 : </th>
                                       <td>&nbsp; 헤어질 결심</td>

                                       
                                    </tr>
                                    
                                    <tr>
                                        <th>&nbsp; 극장 : </th>
                                        <td>&nbsp;CGV센텀시티/스타리움1관</td>
    
                                    </tr>
                                    <tr>
                                        
                                        <th>&nbsp; 일시 : </th>
                                        <td>&nbsp;2022-12-22</td>
    
                                    </tr>
                                    <tr>
                                        
                                        <th>&nbsp; 회차 : </th>
                                        <td>&nbsp;8:00 ~ 11:22</td>
    
                                    </tr>
                                    
                                    <tr>
                                        
                                        <th>&nbsp; 인원 : </th>
                                        <td>&nbsp;성인 2</td>
    
                                    </tr>



                                    <tr>
                                        
                                       <th>&nbsp; 좌석 : </th>
                                       <td>&nbsp;F1, F2</td>
   
                                   </tr>



                                </tbody>
    
   
   
                              </table>
                              
                         </div>

                    
                </div>
                </div>

                <!-- 결제정보 영역 -->
                <div class="col-lg-6">
                  <div class="card shadow mb-4">
                      <div class="card-header bg-danger">

                          <h6 class="m-0 text-white"><i class="fas fa-video"></i>결제수단 선택</h6>
                      </div>
                       
                   <div class="pay_area" style="height: 400px;">
                     <!-- <ul class="list-group list-group-horizontal">
                           <li class="list-group-item">
                              <button type="button" class="btn btn-outline-secondary">신용카드</button>
                           </li>
                           <li class="list-group-item">
                              <button type="button" class="btn btn-outline-secondary">내통장결제</button>
                           </li>
                           <li class="list-group-item">
                              <button type="button" class="btn btn-outline-secondary">관람권결제</button>
                           </li>
                        </ul> -->

                        <div class="inline-block">
                           <button style="background-image: url(https://www.lottecinema.co.kr/NLCHS/Content/images/payment/method_ic_card.png);">신용카드</button>
                        </div> 
                        
                        <div class="inline-block">
                           <button style="background-image: url(https://www.lottecinema.co.kr/NLCHS/Content/images/payment/method_ic_card.png);">내통장결제</button>
                        </div> 
                        
                        <div class="inline-block">
                           <button style="background-image: url(https://www.lottecinema.co.kr/NLCHS/Content/images/payment/method_ic_card.png);">관람권결제</button>
                        </div>
                       


                   </div>
                   
                   <div class="list-group list-group-flush small" style="height: 200px; border-top: 1px solid lightgray;">
                     
                     
                     <div class="list-group-item" style="background-color: gray; font-size: 14px; color: white; height: 50px;" href="#">
                        상품금액 <span style="float: right;"><b>30,000원</b></span>
                     </div>

                     <div class="list-group-item" style="background-color: gray; font-size: 14px; color: white; height: 50px;" href="#">
                      할인금액  <span style="float: right;"><b>- 0원</b></span>
                   </div>
                   
                   <div class="list-group-item" style="background-color: gray; font-size: 14px; color: white; height: 50px;" href="#">
                      결제금액  <span style="float: right;"><b>총 30,000원</b></span>
                   </div>

                   <a class="list-group-item list-group-item-action" style="text-align: center; height: 50px; font-size: 18px; color: white; background-color: red;" href="#">
                     <b>결제하기</b>
                   </a>

                   
                   </div>


               </div>
               
           </div>
               <!--// 영화, 지역, 영화관, 날짜 줄 end -->  
             
              
            
           
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
        <jsp:include page="../common/footer.jsp"/>

    </body>

    </html>