<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<!-- 구매 내역 [하늘] -->
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
    </style>
  </head>
  <!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
  <body class="goto-here">
    <div class="hero-wrap hero-bread" style="background-image: url('resources/img/list.jpg'); background-size:contain;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
						<h3 style="color:white">구매 목록</h3>
						</div>
					</div>
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
							        <div  style="float: right;display:inline-block; border:1px solid black";>
										<strong class="period">조회기간</strong>
										<p style="background-color:#82ae46">
											<form action="date.pd" method="post">
					            	        	<input id="startDate" name="startDate" type="date"> ~ <input id="endDate" name="endDate" type="date">
												<button  class="btn btn-primary py-3 px-4" onclick="return date()" >조회 하기</button>
											</form>
										</p>
									</div>
								<th>구매 번호</th>
						        <th>보내신 분</th>
						        <th>구매일</th>
						        <th>만료일</th>
						        <th>상품 상태</th>
						      </tr>
						    </thead>
						    <tbody id="body">
							    <c:forEach var="c" items="${list}">
							      <tr class="text-center">
							      		<input type="hidden" name="orderNo" value="${c.orderNo }">
							      		<td style="color:white" class="total">${c.rownum }</td>
								        <td style="color:white" class="total">${c.orderName }</td>
								        <td style="color:white" class="total">${c.orderDate }</td>
								        <td style="color:white" class="total">${c.expiryDate }</td>
								       	<c:choose>
								       		<c:when test="${c.orderStatus eq 'Y' }">
								       			<td style="color:white" class="total">사용 가능</td>
								       		</c:when>
								       		<c:otherwise>
								       			<td style="color:white" class="total">사용 만료</td>
								       		</c:otherwise>
								        </c:choose>
							   	  </tr> 
							    </c:forEach>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    	
			</div>
		</section>


    
  

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
			
			if(sD>eD){
				alert("날짜를 잘못 입력하셨습니다")
				return false
			}else{
				return true
			}			
		}	
		
		$(document).on("click","tbody>tr",function(){
			location.href="orderDetail.pd?ono="+$(this).children().eq(0).val()
		})
	</script>
  </body>
</html>