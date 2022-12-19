<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [영화] 영화예매페이지2(인원, 좌석 선택) : 박연/우도균 -->
<title>예매페이지2</title>

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
                                <!-- ============== 예매페이지1 타이틀 영역 ============= -->
                                    <h4>영화 예매</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
                <div class="col-lg-12" style="float: right;">
                  <div class="row">
                     <div class="col-lg-7">
                        <div class="card shadow mb-4">
                           <div class="card-header bg-danger">
                              <h6 class="m-0 text-white"><i class="fas fa-video"></i>좌석 선택</h6>
                           </div>
                           
                           <!-- 영화 좌석 영역 -->
                           <div class="list-group list-group-flush small seat-wrapper" style="height: 300px; overflow: auto; text-align: center;">   
                              <h6 style="text-align: center;">screen</h6>
                              <!--아이 어른수 증가 영역 시작-->
                              <div>아이
                                 <button id="cp">+</button>
                                 <input type="number"id="children" min="0" value="0" disabled>
                                 <button id="cm">-</button>
                              </div>
                              <div>어른
                                 <button id="ap">+</button>
                                 <input type="number"id="adult" value="0" disabled>
                                 <button id="am">-</button>
                              </div>
                              <!--아이 어른수 증가 영역 끝-->
                           </div>

                        </div>   
                     </div>
                     <div class="col-lg-5">
                        <div class="card shadow mb-6">
                           <div class="card-header bg-danger">
                              <h6 class="m-0 text-white"><i class="fas fa-video"></i>좌석 확인</h6>
                           </div>
                           <div class="card-header bg-white">
                              <div class="list-group list-group-flush small" style="height: 270px;">
                                 <!-- 선택한 요소 모두 뿌려주는 영역 -->
                                 
                                 <table align="center">
                                    <tbody>
                                  
                                       <tr>
                                           <th rowspan="5"><img align="center" src="https://w.namu.la/s/2db10a346062200963354f62159e1690de15413604fb0a1e6b8971169ee4be69fcc1c8db51660d16b133f09057919a66b44074d2169affd899624230d34a7b9cf89555c40b1e44cd65bb1246292c64ee9062e40f8aaa37f42ffc7c8c313935ea3cec0c2347f1c771b3f641b221c7164f"  style="height:200px;" alt=""></th>
                                           <th>&nbsp; 극장 : </th>
                                           <td>&nbsp; CGV센텀시티/스타리움</td>
                                       </tr>
                                       
                                       <tr>
                                           <th>&nbsp; 관 : </th>
                                           <td>&nbsp;1관</td>
       
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
                                          <th>&nbsp; 좌석 : </th>
                                          <td id="seats"></td>
      
                                      </tr>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>   
                     </div>
                  </div>
               </div>
            </div>
               
               <!-- 결제선택 버튼 영역 begin  -->
                  <div class="blog__details__btns">
                     <div class="row">
                        <div class="col">
                           <div class="blog__details__btns__item" align="center">
                              <h5><a href="#"><span class="arrow_right"></span> 결제선택</a></h5>
                           </div>
                        </div>
                     </div>
                  </div>         
            <!--// 결제선택 버튼 영역 end  -->    
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

         <!-- 푸터바 영역 -->
         <jsp:include page="../common/footer.jsp"/>
        
      </body>

   <!--좌석 함수-->
   <script>
      let test = [];
      let selectedSeats = new Array();
      let selectedSeatsMap = [];
      const seatWrapper = document.querySelector(".seat-wrapper");
      let clicked = "";
      let div = "";
      let children = $("#children").val();
      let adult = $("#adult").val();
      


      for (let i = 0; i < 7; i++) {
         div = document.createElement("div");
         seatWrapper.append(div);
         for (let j = 0; j < 7; j++) {
            const input = document.createElement('input');
            input.type = "button";
            input.name = "seats"
            input.classList = "seat";     
            mapping(input, i, j);    //3중포문을 사용하지 않기위해
            input.style.cssText  = 'color:black; background-color:gray; width:70px;';
            div.append(input);
              
            input.addEventListener('click', function(e) {
               //좌석수 보다 많은 자리를 클릭시에 막음
               if( parseInt(adult)+parseInt(children) > selectedSeats.length){
                  //중복방지 함수
                  selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
                  
                  //click class가 존재할때(제거해주는 toggle)
                  //클릭시 색상 변경
                  $(this).css("background-color","white") 
                     
                  if (input.classList.contains("clicked")) {
                     input.classList.remove("clicked");
                     clicked = document.querySelectorAll(".clicked");
                     selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                     //클릭시 색상 변경
                     $(this).css("background-color","gray");
                     clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                     });
                     //click class가 존재하지 않을때 (추가해주는 toggle)
                  } else {
                     input.classList.add("clicked");
                     clicked = document.querySelectorAll(".clicked");
                     clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                     })
                  }
                  $("#seats").html(selectedSeats.join(","));
                        
               }else{                     
                  alert("좌석숫자 이상의 클릭을 하셨습니다."); 
               }
               console.log(selectedSeats);
            })
         }
      }

      //좌석에 value 넣어주는 함수
      function mapping(input, i, j) {
          if (i === 0) {
              input.value = "A" + j;
          } else if (i === 1) {
              input.value = "B" + j;
          } else if (i === 2) {
              input.value = "C" + j;
          } else if (i === 3) {
              input.value = "D" + j;
          } else if (i === 4) {
              input.value = "E" + j;
          } else if (i === 5) {
              input.value = "F" + j;
          } else if (i === 6) {
              input.value = "G" + j;
          }
      }
      
      //아이 +,-버튼 함수
      $('#cm').click(function(){
         if(parseInt(adult)+parseInt(children)<= selectedSeats.length){
            alert("잘못한 선택입니다.");
         }else if($("#children").val()>0){
            $("#children").attr("value",children-1);
         }
         children = $("#children").val();
      });
      $('#cp').click(function(){
         $("#children").attr("value", parseInt(children)+1);
         children = $("#children").val();
      });

      //어른 +,-버튼 함수
      $('#am').click(function(){
         if(parseInt(adult)+parseInt(children)<= selectedSeats.length){
            alert("잘못한 선택입니다.");
         }else if($("#adult").val()>0){
            $("#adult").attr("value",adult-1);
         }         
         adult = $("#adult").val();
      });
      $('#ap').click(function(){
         $("#adult").attr("value",parseInt(adult)+1);
         adult = $("#adult").val();
      });

   </script>

</html>