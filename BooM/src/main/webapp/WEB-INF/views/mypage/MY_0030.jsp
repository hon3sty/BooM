<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<!-- 장바구니 [하늘] dd-->
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
  <body class="goto-here">
  <jsp:include page="../common/header.jsp"/>
		
  
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">장바구니</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>상품명</th>
						        <th>&nbsp;</th>
						        <th>판매 금액</th>
						        <th>수량</th>
						        <th>총 금액</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="product-remove"><a style="background-color:white" href="#">x</a></td>
						        
						        <td class="image-prod"><div class="img" ></div></td>
						        
						        <td class="product-name">
						        	<h3>Bell Pepper</h3>
						        	<p style="color:white">Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td style="color:white" class="price">$4.90</td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
						        	<button class="quantity-left-minus" style="background-color:white">&lt;</button>
					             	<input type="text" id="quantity" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
					             	<button class="quantity-right-plus" style="background-color:white">&gt;</button>
					          	</div>
					          </td>
						        
						        <td style="color:white" class="total">$4.90</td>
						      </tr><!-- END TR-->
						    </tbody>
						  </table>
					  </div>
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
    				</div>
    				<p ><a href="checkout.html" class="btn btn-primary py-3 px-4">결제 하기</a></p>
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
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    
  </body>
</html>