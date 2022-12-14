<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    				
    				
					<div class="box-inner"  style="background-color:#82ae46; width:100%; padding:5px; display:inline-block;">
						<div style="display:inline-block;">
							<h3>구매 목록</h3>
						</div>
						<div  style="float: right;display:inline-block;" ;>
							<strong class="period">조회기간</strong>
							<p style="background-color:white">
		            	        <span>기간 선택</span> <input id="startDate" type="date"> ~ <input id="endDate" type="date">
								<button id="btn_search">조회하기</button>
							</p>
						</div>
						
					</div>
				
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th><div  style="float: right;display:inline-block; border:1px solid black";>
							<strong class="period">조회기간</strong>
							<p style="background-color:#82ae46">
		            	        <input id="startDate" type="date"> ~ <input id="endDate" type="date">
								<button id="btn_search">조회하기</button>
							</p>
						</div></th>
						        <th>상품명</th>
						        <th>가격</th>
						        <th>수량</th>
						        <th>구매금액</th>
						        
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        
						        <td class="image-prod"><div class="img" ></div></td>
						        
						        <td class="product-name">
						        	<h3>Bell Pepper</h3>
						        	<p style="color:white">Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td style="color:white" class="price">$4.90</td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" id="quantity" name="quantity" class="quantity form-control input-number" value="1" readonly>
					          	</div>
					          </td>
						        
						        <td style="color:white" class="total">$4.90</td>
						      </tr><!-- END TR-->
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3 style="color:white">총 상품 구매금액</h3>
    					<p  class="d-flex total-price">
    						<span style="color:red">86,000 원</span>
    					</p>
						      <button id="btn_cancel" style="float:right">구매 취소</button>
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
		
		
		$("#btn_search").click(function(){
			//기간에 맞는 주문 조회
			console.log($("#startDate").val());
			console.log($("#endDate").val());
		})
		
		$("#btn_cancel").click(function(){
			//주문 취소
		})
	</script>
    
  </body>
</html>