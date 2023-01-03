<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [영화] 영화예매페이지1(날짜,영화,영화관,회차 선택) : 박연/우도균 -->
<title>영화 예매페이지1</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
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
                
                <!-- 영화, 지역, 영화관, 날짜 줄 begin -->
                <div class="col-lg-12">
                    <div class="row">
                    
	                    <!-- 영화 목록 출력 -->
	                    <div class="col-lg-5">
	                        <div class="card shadow mb-4">
	                            <div class="card-header bg-danger">
	                                <h6 class="m-0 text-white"><i class="fas fa-video"></i>영화 선택</h6>
	                            </div>
	                             <div class="list-group list-group-flush small" style="height: 200px; overflow: auto;">
	                                <!-- for문으로 영화 리스트 뿌려줌 (제목) -->
									<c:forEach var="m" items="${movieList}">
										<a class="list-group-item list-group-item-action" href="javascript:void(0);" onclick="getListLocation(this)" data-Img="${m.mvImg}" data-playTime="${m.playTime}">
	                                  	<i class="fas fa-caret-right"></i> ${m.mvTitle}
	                                	</a>
									</c:forEach>
									<!-- 영화 리스트 넣기 끝 -->
									
								</div>
	                        </div>
	                    </div>
	                    <!-- 지역 선택 ajax -->
	                    <script>
	                    
	                    //변수편하게 써볼려고 한번 해봤습니다.
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
	                    // timetableNo
	                    let timetableNo;
	                    
	                    //생각중~~
	                    function setText(count){
	                    	//영화제목 변경
	                    	$("#titleText").text(title);
	                    	//영화이미지 변경
	                    	$("#imgText").attr("src",mvImg);
	                    	//영화관 변경
		                	$("#multiplexText").text(mvLocation+"/");
		                	$("#multiplexText").text(mvLocation+"/"+multiplex);
		                	
		                	//일주일 버튼 생성
		                	$("#dateArea").html(str);
		                	
	                    }
	                    
	                    //지역선택 리스트
						function getListLocation(obj) {
							title = obj.innerText.trim();
							mvImg = $(obj).attr('data-Img');
							playTime = $(obj).attr('data-playTime'); 
							
	                    	$.ajax({
	                           	url: "location.mv",
	                               data: {
									mvTitle : title
	                               },
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
	                    
	                    $(function(){
	                    	<c:if test="selectMovie ne null">
	                    	
								title = obj.innerText.trim();
								mvImg = $(obj).attr('data-Img');
								playTime = $(obj).attr('data-playTime'); 
								
		                    	$.ajax({
		                           	url: "location.mv",
		                               data: {
										mvTitle : title
		                               },
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
		                    	
	                    	</c:if>
	                    })
	                    </script>
	                    
		                <!-- 지역 목록 출력 -->
		                <div class="col-lg-2">
							<div class="card shadow mb-4">
								<div class="card-header bg-secondary">
									<h6 class="m-0 text-white"><i class="fas fa-video"></i>지역 선택</h6>
								</div>
								<div class="list-group list-group-flush small" id="locationArea" style="height: 200px; overflow: auto;">
		                           	
									<!-- 지역 선택 영역 (메소드 getListLocation통해서 값이 들어감)-->
									
								</div>
							</div>
						</div>
		                
		                <script>
		                //영화관 선택 리스트
		                function getListMultiplex(obj){
		                	mvLocation = obj.innerText.trim();
		                	
		                	$.ajax({
		                       	url: "multiplex.mv",
		                        data: {
		                        	mvTitle : title,
									lcName : mvLocation
		                           },
									success: function(result) {
		                               	var str ="" ;
		                               	for(var i=0 ; i<result.length;i++){
			                               	str += tag1+tag2+"selectDate(this);"+tag3+ result[i].mpName +tag4;	
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
									
									<!-- 영화관 선택 영역 (메소드 getListMultiplex통해서 값이 들어감)-->
									
								</div>
							</div>
						</div>
						<script>
							//현재 날짜로 부터 7개 날짜 뿌려주기
							function selectDate(obj){
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
									<h6 class="m-0 text-white"><i class="fas fa-video"></i>2022-12월 &nbsp; &nbsp;<input id="datepicker" type="date" style="width: 25px;"></h6>
								</div>
								<div class="list-group list-group-flush small" id="dateArea" style="height: 200px; overflow: auto;">
									
									<!-- 날짜 들어가는 공간 (selectDate 메소드 통해서 들어감)-->
									
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
	                       	url: "timetable.mv",
	                           data: {
	                        	mvTitle : title,
								openDate : selectDay
	                           },
								success: function(result) {
	                               	var str ="" ;
	                               	//시작 시간을 텍스트로 저장
	                               	var timeText;
	                               	var hour;
	                               	var minute;
	                               	var seconds;
	                               	
	                               	//끝나는 시간
	                               	var endTime;
	                               	var endHour;
	                               	var endMinute;
	                               	var endSeconds;
	                               	
	                               	for(var i=0 ; i<result.length;i++){
	                               		//playTime은 113분으로 되어있음
	                               		//timeText은 112500을 시분초로 나누는 작업
	                               		timeText = result[i].openTime.toString();
	                               		
	                               		// 10시 이전 같은 경우 90000으로 나와서 090000형태로 바꿔주는 조건문
	                               		if(timeText < 100000){
	                               			timeText = "0" + timeText;
	                               		}
	                               		
	                               		
	                               		hour = parseInt(timeText.substr(0,2));
	                               		if(hour <10){
	                               			hour = "0" + hour;
	                               		}
	                               		minute = parseInt(timeText.substr(2,2));
	                               		seconds = parseInt(timeText.substr(4,2));
	                               		
	                               		//끝나는 시간 초로 저장
	                               		endTime = (hour*60*60)+(minute*60)+seconds+(playTime*60);
	                               		
	                               		endHour =  parseInt(endTime/3600);
	                               		endMinute = parseInt((endTime%3600)/60);
	                               		
	                               		//1~9사이의 숫자일 경우 0을 더해줌
	                               		//ex) 1분 -> 01분
	                               		if(endMinute<10){
	                               			endMinute = "0"+endMinute;
	                               		}
	                               		endSeconds = endTime%60;
	                               		period = hour+":"+minute+" ~ "+endHour+":"+endMinute;
		                               	str += tag1+"data-time='"+timeText+"'"+"data-timeNo='"+result[i].timeNo+"'"+" data-theater='"
		                               	str += result[i].theaterNo+"'"+tag2+"checkList(this);"+tag3+period+" "+result[i].theaterNo+tag4;
									}
	                               	if(str == ""){
	                               		str ="현재 상영작이 없습니다.";
	                               	}
	                               	$("#timetableArea").html(str);
		                 			
	           					},
								error: function() {
	           						console.log("통신실패");
	           					}
						});
	                	//회차 변경
	                	$("#multiplexText").text();
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
                            <div class="list-group list-group-flush small" id="timetableArea" style="height: 200px; overflow: auto;">
                            
                            <!-- 시간대 들어갈 공간 (getListTimetable메소드 통해서 생성) -->
							
                            </div>
						</div>
					</div>
					
					<script>
						function checkList(obj){
							
							timetableNo = $(obj).attr("data-timeNo");
							theaterText = $(obj).attr("data-theater");
							selectTime = obj.innerText.trim();
							$("#timeText").html(selectTime);
							selectTime = $(obj).attr("data-time");
						}
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
              `
      		<!-- 좌석선택 버튼 영역 begin  -->
            <div class="blog__details__btns">
				<div class="row">
					<div class="col">
						<div class="blog__details__btns__item" align="center">
							<h5><a href="javascript:void(0);" onclick="checkPage();"><span class="arrow_right"></span> 좌석선택</a></h5>
						</div>
					</div>
				</div>
            </div>         
      		<!--// 좌석선택 버튼 영역 end  -->    
			<script>
				function checkPage(){
					if(title != null && mvImg != null && mvLocation != null && multiplex != null && selectDay != null && selectTime != null && theaterText != null){
						var newForm = $('<form></form>');
						//form 태그 생성(form) 
						newForm.attr("name","newForm");
						newForm.attr("method","post");
						newForm.attr("action","ticketing2.mv");
						
						// input[type=hidden] 생성 
						newForm.append($('<input/>', {type: 'hidden', name: 'title', value: title}));
						newForm.append($('<input/>', {type: 'hidden', name: 'mvImg', value: mvImg}));
						newForm.append($('<input/>', {type: 'hidden', name: 'mvLocation', value: mvLocation}));
						newForm.append($('<input/>', {type: 'hidden', name: 'multiplex', value: multiplex}));
						newForm.append($('<input/>', {type: 'hidden', name: 'selectDay', value: selectDay}));
						newForm.append($('<input/>', {type: 'hidden', name: 'selectTime', value: selectTime}));
						newForm.append($('<input/>', {type: 'hidden', name: 'period', value: period}));
						newForm.append($('<input/>', {type: 'hidden', name: 'theaterNo', value: theaterText}));
						newForm.append($('<input/>', {type: 'hidden', name: 'timetableNo', value: timetableNo}));

						// body 안에 form태그 넣기 
						newForm.appendTo('body');

						// submit 하기
						newForm.submit();
						
					}else{
						alert("영화정보를 다시 확인해주세요.");
					}
				}
			</script>
			</div>
		</div>
	</section>
        <!-- Blog Details Section End -->


        
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

    </html>