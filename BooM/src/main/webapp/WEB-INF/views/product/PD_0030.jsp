<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
	<!-- 구매하기 페이지 [하늘]ㅇ -->
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
    	.wrap {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

.button {
  width: 130px;
  height: 20px;
  font-family: 'Roboto', sans-serif;
  font-size: 9px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  }

.button:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}
    </style>
  </head>
  <!-- Header Section Begin -->
	<jsp:include page="../common/header.jsp"/>
  <body class="goto-here">
    <div class="hero-wrap hero-bread" style="background-image:url('resources/img/movie.jpg'); background-size:contain;">
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
    				<h3 style="color:white">결제 하기</h3>
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						          <th><input type="checkbox" id="checkAll"></th>
						        <th>&nbsp;</th>
						        <th>상품명</th>
						        <th>판매 금액</th>
						        <th>수량</th>
						        <th>총 금액</th>
						        <th>&nbsp;</th>
						      </tr>
						    </thead>
						    <tbody id="body">
							    <form action="purchase.pd" method="post">
							    <input type="hidden" id="chkCount" name="chkCount" value="">
							    
							    <c:forEach var="c" items="${plist}">
							      <tr class="text-center">
							      		<input type="hidden" id="cartNo" value="${c.cartNo }"> 
							      		<input type="hidden" id="productNo" name="productNo" value="${c.product.productNo }"> 
							      		<input type="hidden" id="productPrice" name="productPrice" value="${c.product.productPrice * c.cartCount}"> 
								        <td><input id="chk" name="chk" type="checkbox" value=${c.product.productPrice * c.cartCount}></td>
								        <td class="image-prod"><div class="img" style="background-image: url('${c.product.productImg}')" ></div></td>
								        
								        <td class="product-name">
								        	<p style="color:white">${c.product.productName}</p>
								        </td>
								        
								        <td style="color:white" class="price">${c.product.productPrice}</td>
								        
								        <td class="quantity">
								        	<div class="input-group mb-3">
									        	<button type="button" class="quantity-left-minus" style="background-color:white">&lt;</button>
								             	<input type="text" id="quantity" name="productCount" class="quantity form-control input-number" value="${c.cartCount}" min="1" max="100">
								             	<button type="button" class="quantity-right-plus" style="background-color:white">&gt;</button>&nbsp;
								             	<button type="button" id="btn_change" style="background-color:white">변경</button>
							          		</div>
							            </td>
								        <td style="color:white" class="total">${c.product.productPrice * c.cartCount}</td>
								        <td><a href="cartDelete.pd?cno=${c.cartNo }" class="btn btn-primary py-3 px-4" id="delOne" onclick="return del()" >삭제</a></td>
							      </tr> 
							    </c:forEach>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		
    			 <div class="col-md-12 ftco-animate"><button type="button" class="button" id="btn_delSel">선택 항목 삭제</button></div>
    		
    		<div class="row justify-content-end">
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3 style="color:white">구매자 정보 입력</h3>
    					<p style="color:white">수령자의 전화번호를 입력해주세요.</p>
  						  <div class="form-group">
			              	<label style="color:white" for="">이름</label>
			                <input type="text" class="form-control text-left px-3" name="orderName" required>
			              </div>
			              <div class="form-group">
			              	<label style="color:white" for="">전화번호('-'를 포함해서 입력해주세요)</label>
			                <input type="text" class="form-control text-left px-3" name="memberPhone" placeholder="'-'를 포함해서 입력해주세요" required>
			              </div>
			              <p style="color:white">●구매하신 부귀영화 기프트콘은 주문자 정보에 입력된 휴대전화 번호로 MMS로 발송됩니다.입력된 휴대전화 번호가 맞는지 꼭 확인하세요.</p>
    				</div>
    				
    			</div>
    			<div class="col-lg-4 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3 style="color:white">총 상품 구매금액</h3>
    					<p  class="d-flex total-price">
    						<span id="sum"style="color:red"></span>
    					</p>
    				</div>
	    				<p><button  class="btn btn-primary py-3 px-4" onclick="return pur()">결제 하기</button></p>
    				</form>
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
  			$(function(){
  				
  			})
		

			var quantitiy=0;
	  		//수량 +
			$(document).on("click",".quantity-right-plus",function(e){
				// Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($(this).siblings().eq(1).val());
		        // If is not undefined
		            
		             $(this).siblings().eq(1).val(quantity + 1)
					
		            // Increment
				
			})
			
			//수량 -
			$(document).on("click",".quantity-left-minus",function(e){
				// Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($(this).siblings().eq(0).val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>1){
		           		 $(this).siblings().eq(0).val(quantity - 1)
		            }else{
		            	window.alert("1개 미만으로는 지정할 수 없습니다.")
		            }
		        
			})
		     
			//전부 체크/해제
		     $("#checkAll").click(function(){
		    	 var check=$(this).is(':checked');
		    	 
		    	 if(check){
		    		 //전체 체크
		    		 $('tbody input:checkbox').prop('checked',true)
		    	 }else{
		    		 //전체 체크 해제
		    		 $('tbody input:checkbox').prop('checked',false)
		    	 }
		    	 var arr=[];
			   		var sum=0;
			   		$('input[id="chk"]:checked').each(function(){
			   			arr.push($(this).val())
			   		})
			   		
			   		for(var i=0;i<arr.length;i++){
			   			sum+=parseInt(arr[i])
			   		}
			   		$("#sum").html(sum)
			   		
			   		
		    	 
		     })
		     
	  		//수량 변경 버튼
		     $(document).on("click","#btn_change",function(){
				location.href="countUpdate.pd?cno="+$(this).parents().eq(2).children().eq(0).val()+"&count="+$(this).siblings().eq(1).val();
				     
		     })
		     
		     //선택항목 삭제
		     $("#btn_delSel").click(function(){
		    	 var arr=[];
		    	 $('input[id="chk"]:checked').each(function(){
			   			arr.push($(this).parents().eq(1).children().eq(0).val())
			   	  })
			   	  
			   	  for(var i=0;i<arr.length;i++){
			   		  location.href="cartDelete.pd?cno="+arr[i]
			   	  } 
		    	 
		     })
		     
		    //선택항목 가격 합 
		   	$(document).on("click","#chk",function(){
		   		//선택된 항목 값 담을 배열
		   		var arrP=[];
		   		var sum=0;
		   		$('input[id="chk"]:checked').each(function(){
		   			arrP.push($(this).val())
		   		})
		   		
		   		for(var i=0;i<arrP.length;i++){
		   			sum+=parseInt(arrP[i])
		   		}
		   		$("#sum").html(sum+'원')
		   		
		   	})
		
		
	  	function pur(){
    		var arrS=[];
		   		$('input[id="chk"]:checked').each(function(){
		   			arrS.push($(this).parents().eq(0).siblings().eq(0).val())
		   			
		   		})
		   		if(arrS.length==0){
		   			alert('구매할 항목을 선택해 주세요')
		   			return false;
		   		}else{
			   		var count=$('input[id="chk"]:checked').length;
			   		$("#chkCount").val(count)
		   			$('input[id="chk"]:checked').each(function(i,el){
		   						$(this).parents().eq(1).children().eq(1).attr("name","list["+i+"].productNo")
					   			$(this).parents().eq(1).children().eq(2).attr("name","list["+i+"].productPrice")
					   			$(this).parents().eq(1).children().eq(7).children().eq(0).children().eq(1).attr("name","list["+i+"].productCount")
		   			})
 		   			return true
		   		}
	  		}
		
	  	 //한개 삭제 버튼 
	    function del(){
			var result=confirm("삭제하시겠습니까?")
			return result;
		}
	</script>
    
  </body>
</html>