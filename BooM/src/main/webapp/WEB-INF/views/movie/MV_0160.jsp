<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      

<!DOCTYPE html>
<html lang="en">
	<!-- 예매 내역 [하늘] -->
  <head>
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/css2/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/css2/animate.css">
    
    <link rel="stylesheet" href="resources/css2/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css2/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/css2/magnific-popup.css">

    <link rel="stylesheet" href="resources/css2/aos.css">

    <link rel="stylesheet" href="resources/css2/ionicons.min.css">

    <link rel="stylesheet" href="resources/css2/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/css2/jquery.timepicker.css">

    
    <link rel="stylesheet" href="resources/css2/flaticon.css">
    <link rel="stylesheet" href="resources/css2/icomoon.css">
    <link rel="stylesheet" href="resources/css2/style.css">
   
    
    <style>
    	tbody tr:hover{
    		cursor:pointer;
    	}
    	
    	.anime-details1 {
	/* padding-top: 0px; */
	width: 1000px;
} 

    </style>
  </head>
<body class="goto-here">
<jsp:include page="../common/header.jsp"/> 
<!-- 전체 영역-->	
<div id="outer_0010">		
<!--메뉴바 -->
<jsp:include page="../common/menu.jsp"/>

<!--영역 시작  -->
<div id="pd">	
<!--영역 시작  -->		

   <!--  <div class="hero-wrap hero-bread" style="background-image: url('resources/img/list.jpg'); background-size:contain;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          </div>
        </div>
      </div>
    </div> -->

    <section class="anime-details1">
			<div class="container">
			  <div class="product__page__title">
			  <div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list section-title">
						<h4>예매내역</h4>
						</div>
					
					</div>
					</div>
					</div>
					<div class="row">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
							        <div style="float: right;display:inline-block; border:1px solid black";>
										
										<p style="background-color:#e53637; color:white; padding-left:1.5rem;">
										
											<form action="mvTicketDate.mv" method="get">
											<c:choose>
											 <c:when test="${empty tkFilter}">
											  ▶조회기간 &nbsp;
					            	        	<input id="startDate" name="startDate" type="date"> ~ <input id="endDate" name="endDate" type="date">
												<button style="color:white;" class="btn btn-primary py-3 px-4" onclick="return date()" >조회</button>
											 </c:when>
											 
											 <c:otherwise>
											    ▶조회기간 &nbsp;
					            	        	<input id="startDate" name="startDate" type="date" value="${startDate}"> ~ <input id="endDate" name="endDate" type="date" value="${endDate }">
												<button style="color:white;" class="btn btn-primary py-3 px-4" onclick="return date()" >조회</button>
											 </c:otherwise>
											</c:choose>
											
											</form>
										</p>
									</div>
								<th>예매일</th>
								<th>예매번호</th>
						        <th>영화명</th>
						        <th>관람일시</th>
						        <th>총 금액</th>
						        <th>예매상태</th>
						      </tr>
						    </thead>
						    <tbody id="body">
							    <c:forEach var="c" items="${tsList}">
							      <tr class="text-center">
							      		<input type="hidden" name="tkNo" value="${c.tkNo }">
							      		<td style="color:white" class="total">${c.tsCreateDate }</td>
								        <td style="color:white" class="total">${c.tkNo }</td>
								        <td style="color:white" class="total">${c.mvNo }</td>
								        <td style="color:white" class="total">${c.openDate }</td>
								        <td style="color:white" class="total"><fmt:formatNumber value="${c.totalPrice }"/> 원</td>
								        <td style="color:white" class="total">${c.fieltkCancled }</td>
								     
							   	  </tr> 
							    </c:forEach>
						    </tbody>
						  </table>
					  </div>
					 <!--=================== 페이징바 영역 ====================-->
                    <div class="product__pagination" align="center">
                   <c:choose>
                    <c:when test="${empty tsList }">
                                                 <p style="color:white;">예매내역이 없습니다.</p>
                    </c:when>
                    <c:otherwise>
               
                   <c:choose> 
                     <c:when test="${empty tkFilter}">
	                     <c:choose>
	                     <c:when test="${pi.currentPage == 1 }">
	                      <a class="disabled" href="myTicketList.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
	                     </c:when>
	                     <c:otherwise>
	                      <a class="" href="myTicketList.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
	                     </c:otherwise>
	                    </c:choose>
	                    
	                    <!--   페이징바 반복문 -->
	                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	                      <a href="myTicketList.mv?currentPage=${p}" class="current-page">${p } </a>
	                    </c:forEach>
	                    
	                    
	                    <!-- 다음 버튼 활성화 -->
	                    <c:choose>
	                     <c:when test="${pi.currentPage ne pi.maxPage}">
	                       <a class="" href="myTicketList.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
	                     </c:when>
	                     <c:otherwise>
	                       <a class="" href="myTicketList.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
	                     </c:otherwise>
	                    </c:choose>   
                     
                     </c:when>
                     <c:otherwise>
                      
                        <c:choose>
                     <c:when test="${pi.currentPage == 1 }">
                      <a class="disabled" href="mvTicketDate.mv?currentPage=${pi.startPage}&startDate=${startDate }&endDate=${endDate } "><i class="fa fa-angle-double-left"></i></a>
                     </c:when>
                     <c:otherwise>
                      <a class="" href="mvTicketDate.mv?currentPage=${pi.currentPage-1}&startDate=${startDate }&endDate=${endDate } "><i class="fa fa-angle-double-left"></i></a>
                     </c:otherwise>
                    </c:choose>
                    
                    <%--페이징바 반복문 --%>
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      <a href="mvTicketDate.mv?currentPage=${p}&startDate=${startDate }&endDate=${endDate }" class="current-page">${p } </a>
                    </c:forEach>
                    
                    
                    <%--다음 버튼 활성화 --%>
                    <c:choose>
                     <c:when test="${pi.currentPage ne pi.maxPage}">
                       <a class="" href="mvTicketDate.mv?currentPage=${pi.currentPage+1}&startDate=${startDate }&endDate=${endDate }"><i class="fa fa-angle-double-right"></i></a>
                     </c:when>
                     <c:otherwise>
                     <a class="" href="mvTicketDate.mv?currentPage=${pi.maxPage}&startDate=${startDate }&endDate=${endDate }"><i class="fa fa-angle-double-right"></i></a>
                     </c:otherwise>
                    </c:choose>   
                     
                     </c:otherwise>
                    </c:choose> 
                    </c:otherwise>
                   </c:choose>
                   
                   
                   
                   
                    
                   
                   
                       
                    </div>
    			</div>
    		</section>
    		</div>
    	
			</div>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>


    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="resources/js2/jquery.min.js"></script>
  <script src="resources/js2/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js2/popper.min.js"></script>
  <script src="resources/js2/bootstrap.min.js"></script>
  <script src="resources/js2/jquery.easing.1.3.js"></script>
  <script src="resources/js2/jquery.waypoints.min.js"></script>
  <script src="resources/js2/jquery.stellar.min.js"></script>
  <script src="resources/js2/owl.carousel.min.js"></script>
  <script src="resources/js2/jquery.magnific-popup.min.js"></script>
  <script src="resources/js2/aos.js"></script>
  <script src="resources/js2/jquery.animateNumber.min.js"></script>
  <script src="resources/js2/bootstrap-datepicker.js"></script>
  <script src="resources/js2/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="resources/js2/google-map.js"></script>
  <script src="resources/js2/main.js"></script>

  <script>
		function date(){
			var start=$("#startDate").val();
			var end=$("#endDate").val()
			
			var sD=new Date(start);
			var eD=new Date(end);
			
			if(start!='' && end!=''){
				if(sD>eD){
					alert("날짜를 잘못 입력하셨습니다")
					return false
				}else{
					return true
				}			
			}else{
				alert("날짜를 잘못 입력하셨습니다")
				return false
			}
		}	
		
		$(document).on("click","tbody>tr",function(){
			location.href="myTicketDetail.mv?tkno="+$(this).children().eq(0).val()
		})
	</script>
<!--pd영역 끝-->
</div>
</div>
<!--전체영역 끝--> 
	<jsp:include page="../common/footer.jsp" />
  </body>
</html>