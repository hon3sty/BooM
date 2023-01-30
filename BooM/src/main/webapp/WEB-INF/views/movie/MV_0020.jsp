<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [영화] 영화 상세페이지 : 박연 -->
<title>영화 상세페이지</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<style>
/* .anime-details{
 	width : 1537px; !important
} */





 .user_img{
   background-color : #b7b7b7;
   border-radius: 50%;
 }
 .review-area{
   color:white;
 }
 .review-star{
  float: right; 
 }
 .star {
    position: relative;
    font-size: 2rem;
    color: #ddd;
  }
  
  .star input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
  .star span {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
  
 .follow-btn{
  cursor:pointer;
 }
 
 
 
</style>
</head>
<body>

  <!-- 메뉴바 -->
  <jsp:include page="../common/header.jsp"/>
 <%--  <jsp:include page=""/> --%>
 
 <!-- ========== 카테고리링크 영역 ========== -->
 
  <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                
                    <%-- <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./categories.html">Categories</a>
                        <span>${m.mvKeyword }</span>
                    </div> --%>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

   <!-- Anime Section Begin -->
    <section class="anime-details_1 spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg titleImg" style="background-image : url(${m.mvImg}); background-size : contain;">
                            <div class="comment"></div> <!-- 별점 노출 부분 -->
                           <div class="view"><i class="fa fa-eye"></i> ${m.mvCount} </div> <!-- 조회수 노출 부분 -->
                        </div>
                    </div>
                    
                    <script>
                    
                      $(".titleImg").click(function(){
                    	
                    	  var OpenWindow=window.open("", "_blank","width=1415px,height=800px");
                    	  OpenWindow.document.write("<img src='${m.mvImg}'>");
                    	  
                      })
                      
                    
                    </script>
                    
                    <div class="col-lg-9">
                      
               <!--==================================================== 영화 상세정보 영역 ========================================================== -->
                        <div class="anime__details__text">
                            
                        <!--========== 타이틀 영역 ==========-->
                            <div class="anime__details__title">
                                <h3>${m.mvTitle }</h3> <!-- 영화제목 -->
                                <span>${m.mvSubtitle}</span> <!-- 부제(영문제목) -->
                            </div>
                           
                        <!--==== 별점 영역 ====-->
                            <div class="anime__details__rating">
                                <div class="rating" id="starAvg-area"> <!-- 별점이미지 -->
                                    
                                </div>
                                <span>${starAvg }</span>
                                
                            </div>
                            
                            <script>
                                $(function(){
                              	  var star="";
                              	
                              	  
                              	  if(${starAvg}==0){
                              		 star = 
                                 		  "<i class='fa fa-star-o'></i>"+
                                 		  "<i class='fa fa-star-o'></i>"+
                                 		  "<i class='fa fa-star-o'></i>"+
                                 		  "<i class='fa fa-star-o'></i>"+
                                 		  "<i class='fa fa-star-o'></i>";
                             		 
                             	 }else if(${starAvg > 0 and starAvg < 1}){
                              	  star = 
                              		  "<i class='fa fa-star-half-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              	 
                              	 }else if(${starAvg} == 1){
                              		 star =
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              	 }else if(${starAvg > 1 and starAvg < 2}){
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-half-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              		 
                              	 }else if(${starAvg}==2){
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              		 
                              	 }else if(${starAvg > 2 and starAvg < 3}){
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-half-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              	 }else if(${starAvg}==3){
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              		 
                              	 }else if(${starAvg > 3 and starAvg < 4}){
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-half-o'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              		 
                              	 }else if(${starAvg} == 4){
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-o'></i>";
                              		 
                              	 }else if(${starAvg > 4 and starAvg < 5}){
                              		  star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star-half-o'></i>";
                              		 
                              	 }else if(${starAvg} == 5){
                              		 
                              		 star = 
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>"+
                              		  "<i class='fa fa-star'></i>";
                              	 }
                              	
                              	  $("#starAvg-area").html(star);
                                })
                                
                                </script>
                        <!--======== 줄거리 영역 =========-->
                            <p> ${m.mvContent } </p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>키워드 : </span>${m.mvKeyword} </li>
                                            <li><span>개봉일 : </span><fmt:formatDate type="date" value="${m.openDate}" pattern="yyyy-MM-dd"/></li>
                                            <li><span>상영시간 : </span>${m.playTime }</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>감독 : </span>${m.director }</li>
                                            <li><span>출연 : </span>${m.actor }</li>
                                            <li><span>등급 : </span>${m.rating }</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        
                        <!-- ================== 좋아요, 예매하기 버튼 영역 ================= -->
                            <div class="anime__details__btn">
                               <c:choose>
                                 <c:when test="${not empty loginUser}">
                                 
                                 <a class="follow-btn" id="likeBtn"><i class="fa fa-heart-o"></i> 좋아요</a>
                                 <input type="hidden" id="mno" value="${loginUser.memberNo}">
                                 </c:when>
                                 
                                 <c:otherwise>
                                 
                                 <a class="follow-btn" id="likeBtn-1"><i class="fa fa-heart-o"></i> 좋아요</a>
                                 
                                 </c:otherwise>
                               </c:choose> 
                                
                                
                                <a href="ticketing1.mv" class="watch-btn"><span>예매하기</span> <i
                                    class="fa fa-angle-right"></i></a>
                                </div>
                                
                                <script>
                                
                                $("#likeBtn-1").click(function(){
                                	alert("로그인을 해주세요.");
                                })
                                
                                /* 로그인한 회원의 좋아요 디비에 해당 영화가 있으면 좋아요 버튼의 색을 채워주는 에이젝스*/
                                if(${mlikeHeart ==1}){
                                	
                                	changeLikeFullBtn();
                                }else{
                                	changeLikeEmptyBtn();
                                	
                                }
                                
                                /* 좋아요 버튼 바꾸는 함수 */
                                function changeLikeFullBtn(){
                                	
                                	$("#likeBtn > i").attr("class","fa fa-heart");
                                }
                                
                                /* 좋아요 버튼 바꾸는 함수 */
                                function changeLikeEmptyBtn(){
                                	
                                	$("#likeBtn > i").attr("class","fa fa-heart-o");
                                }
                                
                                
                                /* 좋아요 인서트하는 에이젝스 */
                          
                                $("#likeBtn").click(function(){
                                	
                                	$.ajax({
                                		url:"MLike.mv",
                                	    data:{
                                	    	   memberNo : $("#mno").val(),
                                	    	   mvNo : ${m.mvNo}
                                	    	
                                	    },
                                	    success:function(result){
                                	    	console.log("결과 : "+result);
                                	    	console.log("통신성공");
                                	    	if(result==1){
                                	    		alert("좋아요 추가 성공");
                                	    		changeLikeFullBtn();
                                	    	}else if(result == 3){
                                	    		alert("좋아요 취소 성공");
                                	    		changeLikeEmptyBtn();
                                	    	}else{
                                	    		alert("둘다 실패");
                                	    	}
                                	    	
                                	    },
                                	    error: function(){
                                	    	console.log("통신실패");
                                	    }
                                		
                                		
                                	})
                                	
                                  })
                                  
                                
                                
                                </script>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        
                  <!--============================================ 리뷰리스트와 리뷰작성 영역 ============================================ -->
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>별점 리뷰</h5>
                            </div>
                          
                          <c:forEach var="mr" items="${mrList }" varStatus="status">
                          <!-- 리뷰 한 개체 시작 -->
                            <div class="anime__review__item">
                                <div class="anime__review__item__pic user_img">
                                    <img src="resources/img/anime/user_img.png" alt="유저이미지" width="50px" height="50px">
                                </div>
                                <div class="anime__review__item__text review-area">
                                <div class="review-star" id="star${status.index}">
                                
                               
                                 </div>
                                    <h6>${mr.memberId } - <span>${mr.reCreateDate }</span></h6>
                                    <p> ${mr.reContent }</p>
                                </div>
                            </div>
                            <!-- //리뷰 한 개체 끝 -->
                          <script>
                          
                          $(function(){
                        	  var star = "";
                        	
                        	  switch(${mr.reStar}){
                        	  case 0: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  break; 
                        	  case 0.5: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star-half-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  break; 
                        	  case 1: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  break; 
                        	  case 1.5: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-half-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  break; 
                        	
                        	  case 2.0: 
                        		 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  break; 
                        	  case 2.5: 
                        		   star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-half-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  break; 	  
                        	  case 3.0: 
                        		    star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  break; 
                        	  
                        	  case 3.5: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-half-o'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  
                        		  break; 	  
                        		  
                        	  case 4.0: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-o'></i>"+
                        		  "</div>";
                        		  
                        		  break; 
                        	  case 4.5: 
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star-half-o'></i>"+
                        		  "</div>";
                        		  
                        		  break;	  
                        		
                        	  case 5.0: 
                        		
                        		  star = "<div class='rating'>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "<i class='fa fa-star'></i>"+
                        		  "</div>";
                        		  
                        		  break;
                        		 
                        	  
                        	  }
                        	  
                        	  $("#star${status.index}").empty();
                        	  $("#star${status.index}").append(star);
                          })
                          
                          
                          </script>  
                          
                          </c:forEach>  
                            
                          
                            
                       
                        </div>
                        
                        <!-- 리뷰작성부분(로그인 했을때만 보이게) -->
                       <c:if test="${not empty loginUser}">
                        <div class="anime__details__form">
                            <div class="section-title">
                                <h5>리뷰 작성</h5>
                            </div>
                            <form>
                              <span class="star">
                                                                                      ★★★★★
                               <span>★★★★★</span>
                               <input type="range" id="reStar" step="0.5" min="0" max="5">
                              </span><span id="starScore" style="color:white;"></span>
                                
                                <textarea id="reContent" placeholder="Your Comment"></textarea>
                                <button type="button" id="reviewBtn"><i class="fa fa-location-arrow"></i> 리뷰등록</button>
                           </form>
                        </div>
                       </c:if>
                        <script>
                        $('#reStar').click(function(){
                        	/* console.log($('#reStar').val() * 20+"%"); */
                        	$('.star span').css("width", $('#reStar').val() * 20+"%");
                        	
                        	$("#starScore").empty();
                        	$("#starScore").append($("#reStar").val());
                       })
                       
                       
                       function refreshMvDetail(){
	                     	location.reload();
	                   }
                       
                       $("#reviewBtn").click(function(){
                    	   $.ajax({
                    		   
                    		   url:"mvReviewInsert.mv",
                    		   data:{memberNo : ${loginUser.memberNo},
                    			     mvNo : ${m.mvNo}, 
                    			     reContent: $("#reContent").val(),
                    			     reStar: $("#reStar").val()
                    			     },
                    		   success : function(result){
                    			   console.log("통신성공");
                    	           alert("댓글이 등록 되었습니다.");
                    	           refreshMvDetail();
                    	           
                    		   },
                    		   error: function(){
                    			   console.log("통신실패");
                    		   }
                    		   
                    	   })
                       })
                       
                        
                        </script>
                    </div>
                    
                  <!--============================================ 추천 영화리스트 영역 ============================================ -->
                    <div class="col-lg-4 col-md-4">
             
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>추천 영화 목록</h5>
                            </div>
                         <!-- 추천영화 반복문  --> 
                        <c:choose>
                          
                          <c:when test="${fn:length(mList) < 4 }">
                            
                             <c:forEach var="ml" items="${mList }" varStatus="status">
                          <!-- 추천영화 1개체 시작 -->
                            <div class="product__sidebar__view__item set-bg" style="background-image : url(${ml.mvImg}); background-size : cover;">
                                <div class="ep">${status.count}위</div>
                                <div class="view"><i class="fa fa-eye"></i> ${ml.mvCount }</div>
                                <h5><a href="movieDetail.mv?mno=${ml.mvNo}"> ${ml.mvTitle} </a></h5>
                            </div>
                           <!--// 추천영화 1개체 끝 -->
                           </c:forEach>  
                            
                          </c:when>
                          
                          <c:otherwise>
                            <c:forEach var="ml" items="${mList }" end="3" varStatus="status">
                          <!-- 추천영화 1개체 시작 -->
                            <div class="product__sidebar__view__item set-bg" style="background-image : url(${ml.mvImg}); background-size : cover;">
                                <div class="ep"> ${status.count}위</div>
                                <div class="view"><i class="fa fa-eye"></i> ${ml.mvCount }</div>
                                <h5><a href="movieDetail.mv?mno=${ml.mvNo}"> ${ml.mvTitle} </a></h5>
                            </div>
                           <!--// 추천영화 1개체 끝 -->
                           </c:forEach>  
                          </c:otherwise>
                        
                        </c:choose> 
                       
                           
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <!-- 푸터바 -->
	     <jsp:include page="../common/footer.jsp"/>

 
</body>
</html>