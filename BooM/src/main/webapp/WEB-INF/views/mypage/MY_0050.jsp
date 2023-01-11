<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<!-- 내가쓴 리뷰 [오하늘] -->
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

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

<!-- Icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>
<style>
	#review:hover{
		cursor:pointer;
	}
	#outer_0010 {
	display: flex;
	justify-content: center;
}

h6 > a {

   cursor:pointer;
   text-decoration: none;
   color:white;

}

h6 > a:hover{

   cursor:pointer;
   text-decoration: none;
   color:red;

}

.anime-details {
	padding-top: 60px;
	width: 1000px;
}
.row{
    justify-content: center;
}

.review-area{
   color:white;
 }
 .review-star{
  float: right; 
 }
 .starAll {
    position: relative;
    font-size: 1.5rem;
    color: #ddd;
  }
  
  .starAll input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
  .starAll span {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
  
  .editBtn-area{
    float:right;
    
  }
  
  .editBtn-area > a{
    padding: 3px;
    text-decoration: none;
    opacity: 0.7;
    background-color: white; 
    border : solid 1px white; 
    border-radius: 12px;
  }
  
  .hide-area{
    display: none;
  }
  
  
  
</style>

<body class="goto-here">
<jsp:include page="../common/header.jsp"/> 
<!-- 전체 영역-->	
<div id="outer_0010">
<!--메뉴바 -->
<jsp:include page="../common/menu.jsp"/>

<!--영역 시작  -->
<div id="pd">	
<!--영역 시작  -->	
    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review">
                            <div class="section-title">
                                <h5>내가 쓴 리뷰</h5>
                            </div>
                            <c:forEach var="r" items="${myReviewList }" varStatus="status">
	                            <div class="anime__review__item">
	                                <div class="anime__review__item__pic">
	                                    <img src="${r.movie.mvImg }" alt="">
	                                </div>
	                                <div id="review" class="anime__review__item__text review-area">
	                                 <div class="review-star" id="star${status.index}">
                                
                               
                                 </div>
	                                	<input type="hidden" id="mno" value="${r.mvNo }">
	                                    <%-- <a href="movieDetail.mv?mno=${r.mvNo}"><h6>${r.movie.mvTitle }</h6></a>
	                                    <span style="color:white; float:right">${r.reCreateDate }</span>
	                                    <p>${r.reContent }</p>
	                                     --%>
	                                    <h6><a href="movieDetail.mv?mno=${r.mvNo}">${r.movie.mvTitle }</a> - <span>${r.reCreateDate }</span></h6>
                                   
                                    <p> ${r.reContent }</p>
                                    <div class="editBtn-area">
                                    <a type="button" id="updateBtn${status.index}"><img src="resources/img/anime/editIcon.png" style="width:25px; height:25px;"></a>
	                                <a type="button" id="deleteReviewBtn${status.index}" href=""><img src="resources/img/anime/deleteIcon.png" style="width:25px; height:25px;"></a>   
	                                 </div> 
	                                </div>
	                            </div>
	                            
	                            <div class="anime__details__form hide-area hide${status.index}">
                            
                            <form>
                            
                              <span class="starAll starIn${status.index}">
                                                                                      ★★★★★
                               <span>★★★★★</span>
                               <input type="range" id="reStar${status.index}" step="0.5" min="0" max="5">
                              </span><span id="starScore${status.index}" style="color:white;"></span>
                                <button type="button" id="closeDiv${status.index}" style="float:right; margin:3px;">닫기</button>
                                <button type="button" id="updateReviewBtn${status.index}" style="float:right; margin:3px;">수정</button>
                                <textarea id="reContent${status.index}">${r.reContent }</textarea>
                                
                           
                           </form>
                           
                        </div>
	                            
	                 <script>
	                 //수정 버튼 누르면 div 영역 보이기
	                 $("#updateBtn${status.index}").on("click",function(){
	                	console.log("열려라");
	                	 $(".hide${status.index}").show();
	                	
	                 })
	                 
	                 $("#closeDiv${status.index}").on("click",function(){
	                	 console.log("닫혀라");
	                	 $(".hide${status.index}").hide();
	                	 
	                 })
	                 
	                 //리뷰수정 별점 입력
	                 $("#reStar${status.index}").on("click",function(){
                     	console.log($('#reStar${status.index}').val() * 20+"%");
                     	$('.starIn${status.index} span').css("width", $('#reStar${status.index}').val() * 20+"%");
                     	
                     	$("#starScore${status.index}").empty();
                     	$("#starScore${status.index}").append($("#reStar${status.index}").val());
                    })
                    
                    //리뷰 수정 에이젝스
                    function refreshMvDetail(){
	                     	location.reload();
	                   }
                    
                    $("#updateReviewBtn${status.index}").click(function(){
                 	   $.ajax({
                 		   
                 		   url:"mvUpdateReview.mv",
                 		   data:{memberNo : ${loginUser.memberNo},
                 			     mvNo : ${r.mvNo }, 
                 			     reNo : ${r.reNo},
                 			     reContent: $("#reContent${status.index}").val(),
                 			     reStar: $("#reStar${status.index}").val()
                 			     },
                 		   success : function(result){
                 			   console.log("통신성공");
                 			   console.log("결과 : "+result);
                 			   if(result==1){
                 				   alert("댓글이 수정 되었습니다.");
                 	           refreshMvDetail();
                 			   }else{
                 				   alert("댓글이 수정 실패되었습니다.");
                 	          
                 			   }
                 	           
                 		   },
                 		   error: function(){
                 			   console.log("통신실패");
                 		   }
                 		   
                 	   })
                    })
	                 
                    
                    //리뷰 삭제 에이젝스
	                   $("#deleteReviewBtn${status.index}").click(function(){
	                	  var confirmDel = confirm("댓글을 삭제하시겠습니까?");
	                	   
	                	   confirmDel;
	                	   
	                	   if(confirmDel==true){
	              	   
                 	   $.ajax({
                 		   
                 		   url:"mvDeleteReview.mv",
                 		   data:{memberNo : ${loginUser.memberNo},
                 			     mvNo : ${r.mvNo }, 
                 			     reNo : ${r.reNo},
                 			     reContent: $("#reContent${status.index}").val(),
                 			     reStar: $("#reStar${status.index}").val()
                 			     },
                 		   success : function(result){
                 			   console.log("통신성공");
                 			  console.log("결과 : "+result);
                 			  
                 			  if(result==1){
                				   alert("댓글이 삭제 되었습니다.");
                	           refreshMvDetail();
                			   }else{
                				   alert("댓글이 삭제 실패되었습니다.");
                	          
                			   }
                 	           
                 		   },
                 		   error: function(){
                 			   console.log("통신실패");
                 		   }
                 		   
                 	   })
                 	   
                 	   
	                	   }
                 	   
	                   })
                    
                    
	                //리뷰 별점 표시            
	                       	 $(function(){
	                          	  var star = "";
	                          	
	                          	  switch(${r.reStar}){
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
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Anime Section End -->
        <div id="aa">aa</div>
<!--pd영역 끝-->
</div>
</div>
<!--전체영역 끝-->   
	<jsp:include page="../common/footer.jsp" />
	

    </body>
    

    
    

    </html>