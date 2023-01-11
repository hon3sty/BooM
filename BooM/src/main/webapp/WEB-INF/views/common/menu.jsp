<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- [공통] menu : 이지윤 -->
    <title>Document</title>
<style>

/*메뉴바 */
#outer_0010{ 
   display: flex; 
   justify-content: center; 
   padding-top: 80px;
}
.product_spad{
	padding-right: 0px;
}
#cs_MY0010{
	position: relative;
    width: 0 auto;
    margin: 0 auto;
}
.sidebar__comment__1{
	margin-bottom: 10px;
	overflow: hidden;
	margin-left:20px;
}
.sidebar__comment__1-1,.sidebar__comment__2-1{
	float: left;
	margin-right: 15px;	
}
.sidebar__comment__2{
	margin-bottom: 10px;
	margin-left:20px;
}
.sidebar__comment__1-2{
	overflow: hidden;
	font-size: 5px;	
}
.sidebar__comment__1-2-3 h5{
	margin-bottom: 0px;	
}
.sidebar__comment__1-2-3 h5 a{
	color: #ffffff;
	font-weight: 700;
	line-height: 26px;	
}
.sidebar__comment__1-2 h5{
	margin-bottom: 10px;
}
.sidebar__comment__1-2 h5 a{
	color: #ffffff;
	font-weight: 700;
	line-height: 26px;	
}	
.sidebar__comment__2-2{
	overflow: hidden;
	font-size: 5px;
}
.sidebar__comment__2-2 h5{
	margin-bottom: 5px;
}
.sidebar__comment__2-2 h5 a{
	color: #ffffff;
	font-weight: 700;
	font-size: 5px;
	line-height: 26px;
} 
.sidebar__comment__2-2-3 h5{
	margin-bottom: 0px;
}
.sidebar__comment__2-2-3 h5 a{
	color: #ffffff;
	font-weight: 700;
	font-size: 14px;
	line-height: 16px;
}
.sidebar__comment__2-2-3 h5 a:hover{
	color: #e53637;
	font-weight: 700;
	font-size: 14px;
	line-height: 16px;
}
 .sidebar__comment__1-2-3 h5 a:hover{
 	color: #ffffff; 
	font-weight: 700; 
	line-height: 26px; 
 	color:#e53637;
}
.sidebar__comment__1-2 h5 a:hover{
    color:#e53637;
	font-weight: 700;
	line-height: 26px;
}

#menubar{
	padding-right: 30px;
}

.product__sidebar__comment {
	margin-bottom: 35px;
    padding-top:0px !important;
}

/*메뉴바 끝*/   
</style>    
  </head>	

<!--메뉴바 시작 -->
<div id="menubar">
<!-- 메뉴바 영역 시작 -->
<section class="product_spad">
   <div class="container_MY_0010">
       <div class="row_3">
          <div class="col-lg-42 col-md-62 col-sm-822">
              <div class="product__sidebar">
    			<div class="product__sidebar__comment">
			        <div class="section-title">
			            <a href="mypage.me"><h5 style="color:#e53637;">마이페이지</h5>
			        </div>
			        <div class="sidebar__comment__1">
			            <div class="sidebar__comment__1-1">
			            </div>
			            <div class="sidebar__comment__1-2">
			                <h5><a href="myTicketList.mv">예매내역</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__1">
			            <div class="sidebar__comment__1-1">
			            </div>
			            <div class="sidebar__comment__1-2">
			                <h5><a href="review.my">무비스토리</a></h5>
			                <h5><a href="myLikeMovieList.mv">영화좋아요리스트</a></h5>	
			                <h5><a href="movieRecommend.mv">추천영화리스트</a></h5>			                
			            </div>
			        </div>
			        <div class="sidebar__comment__1">
			            <div class="sidebar__comment__1-1">
			            </div>
			            <div class="sidebar__comment__1-2-3">
			                <h5><a href="#">나의 스토어</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__2">
			            <div class="sidebar__comment__2-1">
			            </div>
			            <div class="sidebar__comment__2-2-3">
			                <h5><a href="wishList.me"> - 장바구니</a></h5>
			            </div>
			        </div>
		            <div class="sidebar__comment__2">
			            <div class="sidebar__comment__2-1">
			            </div>
			            <div class="sidebar__comment__2-2-3">
			                <h5><a href="purchaseList.me"> - 구매목록</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__1">
			            <div class="sidebar__comment__1">
			            </div>
			            <div class="sidebar__comment__1-2-3">
			                <h5><a href="#">회원정보</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__2">
			            <div class="sidebar__comment__2-1">
			            </div>
			            <div class="sidebar__comment__2-2-3">
			                <h5><a href="update.me"> - 회원정보변경</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__2">
			            <div class="sidebar__comment__2-1">
			            </div>
			            <div class="sidebar__comment__2-2-3">
			                <h5><a href="#"> - 회원탈퇴</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__1">
			            <div class="sidebar__comment__1">
			            </div>
			            <div class="sidebar__comment__1-2-3">
			                <h5><a href="#">나의 문의내역</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__2">
			            <div class="sidebar__comment__2-1">
			            </div>
			            <div class="sidebar__comment__2-2-3">
			                <h5><a href="#"> - 1:1문의</a></h5>
			            </div>
			        </div>
			        <div class="sidebar__comment__2">
			            <div class="sidebar__comment__2-1">
			            </div>
			            <div class="sidebar__comment__2-2-3" >
			                <h5><a href="#"> - 분실물 문의</a></h5>
			            </div>
			        </div>
			        
			    </div>
			</div>
		</div>
</div>
</div>
</section>
</div>	
<!--메뉴바 끝-->	

</body>
</html>