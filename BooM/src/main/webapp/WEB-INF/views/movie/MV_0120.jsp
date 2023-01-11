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
	                            	<!-- for문으로 영화 리스트 뿌려줌 (제목) -->
									<c:forEach var="m" items="${movieList}">
										<a class="list-group-item list-group-item-action" href="javascript:void(0);" 
										onclick="getListLocation(this)" data-Img="${m.mvImg}" data-playTime="${m.playTime}" data-mvNo="${m.mvNo}">
	                                  	<i class="fas fa-caret-right"></i> ${m.mvTitle}
	                                	</a>
									</c:forEach>
									<!-- 영화 리스트 넣기 끝 -->
								</div>
	                        </div>
	                    </div>
	                    
	                    <script>
		                    const tag1 = "<a class=\"list-group-item list-group-item-action\"" 
		                    //여기 사이에 넣고 싶은 원하는 데이터 타입 넣기 (안넣어도 됨)
		                    const tag2 = "href=\"javascript:void(0);\" onclick=\"";
		                    //여기 사이에 method 이름 적기 
		                    const tag3 = "\"> <i class=\"fas fa-caret-right\"></i>";
		                  	//여기 사이에 값 넣기
		                    const tag4 = "</a>";
		                    
		                    //몇년
		                    let year;
		                    //몇월
		                    let month;
		                    //몇일
		                    let day;
									
		                    //영화 제목
		                    let title;
		                    //영화 이미지
		                    let mvImg;
		                    //플레이 타임
		                    let playTime;
		                    //지역
		                    let mvLocation;
		                    //영화관
		                    let multiplex;
		                    //날짜
		                    let selectDay;
		                    //시간
		                    let selectTime;
		                    //"07:00 ~ 08:00"식으로 저장됨
		                    let period;
		                    // 상영관 번호(ex 1관)
		                    let theaterText;
		                    // multiplexNo
		                    let multiplexNo;
		                    let theaterNo;
		                    let mvNo;
		                    
		                    //지역선택 리스트
							function getListLocation(obj) {
								title = obj.innerText.trim();
								mvImg = $(obj).attr('data-Img');
								playTime = $(obj).attr('data-playTime'); 
								mvNo = $(obj).attr('data-mvNo');
								
		                    	$.ajax({
		                           	url: "movieScheLocation.mv",
									success: function(result) {
		                               	var str ="" ;
		                               	for(var i=0 ; i<result.length;i++){
			                               	str += tag1+tag2+"getListMultiplex(this);"+tag3+ result[i].lcName +tag4;	
			                 				$("#locationArea").html(str);
										}
	               					},
									error: function() {
	               						console.log("통신실패");
	               					}
								});
		                    	//영화제목 변경
		                    	$("#titleText").text(title);
		                    	
		                    	//영화이미지 변경
		                    	$("#imgText").attr("src",mvImg);
		                    	
		                    	//텍스트 지우기
								$("#multiplexText").empty();
								$("#dateText").empty();
								$("#timeText").empty();
		              		}
	                    </script>
	                    
	                	<!-- 지역 목록 출력 -->
	                 	<div class="col-lg-2">
							<div class="card shadow mb-4">
								<div class="card-header bg-secondary">
	                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>지역 선택</h6>
	                            </div>
	                            <div class="list-group list-group-flush small" id="locationArea" style="height: 200px; overflow: auto;">
									<!-- 지역 리스트 넣기  -->
								</div>
							</div>
						</div>
		                
		                <script>
			                //영화관 선택 리스트
			                function getListMultiplex(obj){
			                	mvLocation = obj.innerText.trim();
			                	$.ajax({
			                       	url: "movieScheMultiplex.mv",
			                        data: {
										lcName : mvLocation
			                           },
										success: function(result) {
			                               	var str ="" ;
			                               	for(var i=0 ; i<result.length;i++){
				                               	str += tag1+"multiplexNo-date='"+result[i].mpNo+"'"+tag2+"selectDate(this);"+tag3+ result[i].mpName +tag4;	
											}
				                 				$("#multiplexArea").html(str);
												$("#dateText").empty();
												$("#timeText").empty();
			           					},
										error: function() {
			           						console.log("통신실패");
			           					}
								});
			                	//영화관 변경
			                	$("#multiplexText").text(mvLocation+"/");
								$("#dateText").empty();
								$("#timeText").empty();
			          		}
						</script>
		                
		                <!-- 영화관 목록 출력 -->
		                <div class="col-lg-3">
		                	<div class="card shadow mb-4">
		                    	<div class="card-header bg-info">
		                        	<h6 class="m-0 text-white"><i class="fas fa-video"></i>영화관 선택</h6>
		                        </div>
		                        <div class="list-group list-group-flush small" id="multiplexArea" style="height: 200px; overflow: auto;">
		                        	<!-- 영화관 내용 -->
		                        </div>
		                    </div>
		                </div>
		
						<script>
							//현재 날짜로 부터 7개 날짜 뿌려주기
							function selectDate(obj){
								multiplexNo = $(obj).attr('multiplexNo-date');
								multiplex = obj.innerText.trim();
								$("#multiplexText").text(mvLocation+"/"+multiplex);
								$("#dateText").empty();
								$("#timeText").empty();
								
								var str="";
								//년,월,일 합친 값
								var date="";
								
								for(var i=0 ; i<7 ;i++){
									//년,월,일 추출
									day = new Date(new Date().setDate(new Date().getDate()+i)).getDate();
									month = new Date(new Date().setDate(new Date().getDate()+i)).getMonth()+1;	//0부터 시작해서 +1해줌
									year = new Date(new Date().setDate(new Date().getDate()+i)).getFullYear();

									//1~9사이에 숫자일 경우 0 더해줌
									if(month <10){
										month = "0"+month;
									}
									if(day <10){
										day = "0"+day;
									}
									date = year+String(month)+day;
									str += tag1+"data-date='"+date+"'"+tag2+"getListTimetable(this);"+tag3+day+"일" +tag4;
								}
	             				$("#dateArea").html(str);
								$("#timeText").empty();
							}
						</script>
		
						<!-- 날짜 목록 출력 -->
		                <div class="col-lg-2">
		                	<div class="card shadow mb-4">
		                    	<div class="card-header bg-success">
		                        	<h6 class="m-0 text-white"><i class="fa-video-location"></i>2022-12월 &nbsp; &nbsp;<input id="datepicker" type="date" style="width: 25px;"></h6>
		                        </div>
		                        <div class="list-group list-group-flush small" id="dateArea"  style="height: 200px; overflow: auto;">
									<!-- 상영일 출력 장소 -->		
		                        </div>
		                    </div>
		                </div>
	                </div>
	            </div>
				<!--// 영화, 지역, 영화관, 날짜 줄 end -->  
               
                <script>
				
				//달력에 값을 선택시 
				$("#datepicker").change(function(){
			 		getListTimetable($("#datepicker").val());
				})
			
				function getListTimetable(obj){
					//달력을 클릭시에 값변환
					if($("#datepicker").val()==obj){
						$("#dateText").html(obj)
						selectDay = obj.replace("-","");
					}else{
               			selectDay = $(obj).attr("data-Date");
               			$("#dateText").html(selectDay.substr(0,4)+"-"+selectDay.substr(4,2)+"-"+selectDay.substr(6,2));
					}
					$.ajax({
                       	url: "movieScheTheater.mv",
                        data: {
                        		mpNo : multiplexNo
                           },
							success: function(result) {
                               	var str ="" ;
                               	for(var i=0 ; i<result.length;i++){
	                               	str += '<h6>[ '+result[i].theaterName+' ]</h6>';
	                               	str += '<ul class="list-group list-group-horizontal">';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">08:00</li>';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">10:30</li>';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">13:00</li>';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">15:30</li>';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">18:00</li>';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">20:30</li>';
	                               	str += '<li class="list-group-item" value="'+result[i].theaterName+'\" theaterNo-date=\"'+result[i].theaterNo+'\">23:00</li>';
	                               	str += '</ul>';
								}
	                 				$("#timetableArea").html(str);
									$("#timeText").empty();
           					},
							error: function() {
           						console.log("통신실패");
           					}
					});
              	}
				</script>
	               
				<!-- 시간표, 선택확인 줄 begin --> 
				<div class="col-lg-12">
					<div class="row">
	                    <!-- 회차 목록 출력 -->
	                    <div class="col-lg-7">
	                        <div class="card shadow mb-4">
	                            <div class="card-header bg-primary">
	                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>시간표 선택</h6>
	                            </div>
	                            <div class="list-group list-group-flush small"  id="timetableArea" style="height: 200px; overflow: auto;">
									<!-- 시간 데이터 뿌려주는 곳 -->
								</div>
							</div>
	                    </div>
						
						<script>
						$(document).on('click', '.list-group-horizontal > li', function(){
							theaterNo = $(this).attr('theaterNo-date');
							selectTime = $(this).text();
							theaterText = $(this).val();
							$("#timeText").text(selectTime + " " +theaterText +"관")

						});
						
						</script>
	
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
												<th rowspan="4">
												<img id="imgText" align="center" style="height:200px;" src="https://mblogthumb-phinf.pstatic.net/MjAyMDAzMDZfMjY5/MDAxNTgzNDk1ODkyMDU5.XXcj_5D28YfNyKYiiSOKz8yuqarJ7bHAGmknpoW9O7wg.7F9H2eEIOjKgMs3UNPBb68Tdm9LSDU4yee7-76GUZoUg.JPEG.widak/%25ED%259D%25B0%25EC%2583%2589.jpg?type=w800"></th>
												<th>&nbsp; 영화 : </th>
												<td id="titleText"></td>
											</tr>
											<tr>
												<th>&nbsp; 극장 : </th>
												<td id="multiplexText"></td>
											</tr>
											<tr>
												<th>&nbsp; 일시 : </th>
												<td id="dateText"></td>
											</tr>
											<tr>
												<th>&nbsp; 회차 : </th>
		                                    	<td id="timeText"></td>
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
								<h5><a href="javascript:void(0);" onclick="checkPage();"><span class="arrow_right"></span>스케줄 등록</a></h5>
							</div>
						</div>
					</div>
				</div>    
				
				<script>
				function checkPage(){
					if(title != null && mvImg != null && mvLocation != null && multiplex != null && selectDay != null && selectTime != null && theaterText != null){
						var newForm = $('<form></form>');
						//form 태그 생성(form) 
						newForm.attr("name","newForm");
						newForm.attr("method","post");
						newForm.attr("action","movieScheduleInsert.mv");
						
						// input[type=hidden] 생성 
						newForm.append($('<input/>', {type: 'hidden', name: 'mvNo', value: mvNo}));
						newForm.append($('<input/>', {type: 'hidden', name: 'theaterNo', value: theaterNo}));
						newForm.append($('<input/>', {type: 'hidden', name: 'multiplexNo', value: multiplexNo}));
						newForm.append($('<input/>', {type: 'hidden', name: 'selectDay', value: selectDay}));
						newForm.append($('<input/>', {type: 'hidden', name: 'selectTime', value: selectTime}));

						// body 안에 form태그 넣기 
						newForm.appendTo('body');

						// submit 하기
						newForm.submit();
						
					}else{
						alert("영화정보를 다시 확인해주세요.");
					}
				}
				</script>
				     
	            <!--// 좌석선택 버튼 영역 end  -->    
			</div>
		</div>
	</section>
	<!-- Blog Details Section End -->

    <!-- 푸터바 영역 -->
    <jsp:include page="../common/footer.jsp"/>

</body>

</html>