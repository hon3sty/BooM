<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- [영화] 영화예매페이지4(결제완료페이지) : 박연-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
    <title>예매 완료</title>

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
  
  <!-- 메뉴바 -->
  <jsp:include page="../common/header.jsp"/>
 
  <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="blog__details__title">
                        <h3 style="color:white">예매가 완료되었습니다.</h3><br>
                        <div class="col-lg-12">
                    		<div class="blog__details__pic">
                       
								<!-- 영화 예매정보 테이블 영역 -->
		                        <div class="detailTable-area">
									<table align="center" style="color:white;">
                            			<tbody>
                                			<tr>
                                    			<th rowspan="8">
                                      			<img src="${selectValue.mvImg}" alt="" style="width:250px;"></th>
		                                    	<th>&nbsp; 예매번호 : </th>
        		                            	<td>${selectValue.tsuccessNo}</td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp;영화 : </th>
                                    			<td>${selectValue.title}</td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 극장 : </th>
                                    			<td>${selectValue.multiplex} / ${selectValue.theaterNo}</td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 일시 : </th>
                                    			<td id="dayArea"><!-- 메소드로 넣음 --></td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 인원 : </th>
                                    			<td>성인 : ${selectValue.adultNum}명 아이 : ${selectValue.childNum} </td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 좌석 : </th>
                                    			<td>${selectValue.selectedSeats}</td>

                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 결제금액 : </th>
                                    			<td>${selectValue.priceText}원</td>
			                                </tr>
            			                    <tr>
			                                    <th>&nbsp; 결제수단 : </th>
            			                        <td>${selectValue.payment}</td>
			                                </tr>
            			                </tbody>
                        			</table>
								</div>
                       		</div>
                    	</div>
                	</div>
						<!-- 예매내역, 홈으로 버튼 영역 -->
        		        <div class="blog__details__social" align="center">
                            <a href="myTicketList.mv" type="button" class="btn btn-danger">예매내역 보기</a>
							<a href="index.jsp" type="button" class="btn btn-primary"> Home</a>
                        </div>
                    </div>
                </div>
			</div>
		</section>
        <!-- Blog Details Section End -->
        
        <!-- 푸터바 -->
        <jsp:include page="../common/footer.jsp"/>
       
		<script>
			$(function(){
				//일시 subSting으로 바꿔주기	
  				$("#dayArea").html('${selectValue.selectDay}'.substr(0,4)+"-"+'${selectValue.selectDay}'.substr(4,2)+"-"+'${selectValue.selectDay}'.substr(6,2));
          	})
		</script>
       
       
		<!-- Js Plugins -->
        <script src="resources/js/jquery-3.3.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/player.js"></script>
        <script src="resources/js/jquery.nice-select.min.js"></script>
        <script src="resources/js/mixitup.min.js"></script>
        <script src="resources/js/jquery.slicknav.js"></script>
        <script src="resources/js/owl.carousel.min.js"></script>
        <script src="resources/js/main.js"></script>

</body>
</html>