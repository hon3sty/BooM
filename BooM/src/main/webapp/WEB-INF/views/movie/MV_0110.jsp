<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 수정 페이지(관리자) / 우도균 -->
<title>영화 수정페이지</title>

<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
   
    <!--jquery 사용해야해서 넣음-->
    <script src="https://code.jquery.com/jquery-3.6.2.js" integrity="sha256-pkn2CUZmheSeyssYw3vMp1+xyub4m+e+QK4sQskvuo4=" crossorigin="anonymous"></script>
    <!--jquery 나중에 삭제-->

	<style>
		input{
			width: 400px;
		}

		#rating{
			width : 400px !important;
			height : 36px !important;
			border-radius : 0px !important;
		}
    </style>
</head>
<body>

	<!-- 메뉴바 -->
	<jsp:include page="../common/header.jsp"/>
	<!-- ========== 카테고리링크 영역 ========== -->
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="./index.html"><i class="fa fa-home"></i> Home</a>
						<a href="./categories.html">Categories</a>
						<span>Romance</span>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- Anime Section Begin -->
	<section class="anime-details spad">
		<div class="container">
			<div class="anime__details__content">
				<div class="section-title">
				<!-- ============== 수정 페이지 타이틀 영역 ============= -->
					<h4>영화 수정 페이지</h4>
				</div>
				<form action="movieInsert.mv" method="post" enctype="multipart/form-data">
					<!-- 히든타입들 -->
					<input type="hidden" name="closeDate">
					<input type="hidden" name="openDate">
					<div class="row">
						<div class="col-lg-3">
							<p style="color: #b7b7b7;">이미지</p>
							<div class="anime__details__pic set-bg" id="" data-setbg=""><img id="imgview" src=""></div>
							<input type="file" id="file" name="upfile" onchange="readURL(this);" required>
		             	</div>
<!--==================================================== 영화 상세정보 영역 ========================================================== -->
		             	<div class="col-lg-9">
                  			<div class="anime__details__text">
                     			<!--========== 타이틀 영역 ==========-->
								<div class="anime__details__title">
                        			<p>제목</p>
                        			<h3><input type="text" name="mvTitle" value="${m.mvTitle}" required></h3> 
                     			</div>
                     <!--======== 줄거리 영역 시작=========-->
								<p>줄거리</p>
			                    <p><textarea cols="70" rows="8" name="mvContent" required>${m.mvContent}</textarea></p>
                     <!--======== 줄거리 영역 끝=========-->
			                    <div class="anime__details__widget">
			                    	<div class="row">
			                        	<div class="col-lg-6 col-md-6">
			         <!--======== 기타 내용들의 영역 시작=========-->
											<ul>
												<li><span>키워드 : </span><input type="text" name="mvKeyword" required></li>
                                    			<li><span>상영시간 : <input type="number" name="playTime" required></li>
			                                    <li><span>개봉일 : </span>
				                                    <input id="openDate" type="date" required>
			                                    </li>
			                                    <li><span>종영일 : </span>
				                                    <input id="closeDate" type="date" required>
			                                    </li>
                                 			</ul>
                           				</div>
                           				<div class="col-lg-6 col-md-6">
			                            	<ul>
												<li><span>부제 : </span><input type="text" name="mvSubtitle" required></li>
			                                 	<li><span>감독 : </span><input type="text" name="director" required></li>
			                                 	<li><span>출연 : </span><input type="text" name="actor" required></li>
			                                 	<li><span>등급 : </span>
													<div>
														<select id="rating" name="rating" required>
															<option value="전체관람가">전체관람가</option>
														  	<option value="12세관람가">12세관람가</option>
														  	<option value="15세관람가">15세관람가</option>
														  	<option value="청소년관람불가">청소년관람불가</option>
														</select>
													</div>
			                                 	</li>
			                              	</ul>
			                            </div>
                        			</div>
                     			</div>
                     			
                   	<!-- ================== 등록, 취소하기 버튼 영역 ================= -->
                     			<div class="anime__details__btn">
                        			<input class="follow-btn" type="submit" value="등록하기">
                        			<a href="javascript:history.go(-1);" class="follow-btn"><span>취소하기</span></a>
                     			</div>
                  			</div>
               			</div>
            		</div>
            	</form>
         	</div>
      	</div>
   </section> 
        
	<!-- 푸터바 -->
	<jsp:include page="../common/footer.jsp"/>

	<script>
		
		//이미지 변경
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#imgview").attr('src',e.target.result);
	         	};
	         	reader.readAsDataURL(input.files[0]);
	      	} else {
				document.getElementById('data-setbg').src = "";
	      	}
		}
		
		//개봉일 값을 변경해줌
		$('#openDate').change(function(){
			let openDate = new Date($('#openDate').val());
			
			$('input[name=openDate]').val(openDate);
			
			//개봉일 종영일 비교해주는 조건문
			if($('#openDate').val() > $('#closeDate').val()){
				$('#closeDate').val("");
				$('input[name=closeDate]').val("");
			}
			$('#closeDate').attr("min",$('#openDate').val());
		})
		
		//종영일 클릭시
		$('#closeDate').change(function(){
			let closeDate = new Date($('#closeDate').val());
			$('input[name=closeDate]').val(closeDate);
		})
		
	</script>
	
 
</body>
</html>