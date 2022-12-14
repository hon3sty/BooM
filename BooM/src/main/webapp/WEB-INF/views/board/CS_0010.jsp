<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [게시판 : 고객센터] 메인 : 이지은 -->
<title>고객센터 메인</title>
<style type="text/css">
#cs{
	position: relative;
    width: 980px;
    margin: 0 auto;
}
#search_box{
    overflow: hidden;
    display: inline-block;
    width: 500px;
    height: 30px;
    margin: 12px 0px 9px;
    text-align: left;
    background-color: #fff;

}
#searchtext {
    float: left;
    width: 450px;
    height: 12px;
    padding: 16px 5px;
    font-size: 12px;
    line-height: 12px;
    text-indent: 7px;
    vertical-align: middle;
    border: none;
    background-color: #fff;
}
#btn_search{
    float: right;
    display: block;
    width: 50px;
    height: 30px;
    font-weight: 500;
    font-size: 0;
    line-height: 30px;
	background: transparent url(resources/img/bth_search.png) center scroll no-repeat;
    background-size: 16px;
    background-color: #fff;
    border: none;
}

#service_area{
    float: left;
    width: 500px;
    height: 400px;
    padding-top: 15px;
    margin: -5px 0px 0px -5px;

}
#service_area #list li a {
    padding: 24px 20px 25px 17px;
    display: block;
    width: 94px;
    height: 32px;
    color: #222;
    line-height: 150%;
    font-weight: 500;
   	background-color: #fff;
}
#service_area #list li {
    margin: 5px 0px 0px 5px;
    float: left;
}
#list{
	list-style: none;
}
#customer_notice_area{
	position: relative;
    left: 330px;
    bottom: 200px;
}
</style>
</head>

<body>
<!-- 헤더  include 영역 시작-->
<jsp:include page="../common/header.jsp"/>
<!-- 헤더  include 영역 끝-->

<div id="cs">
	<div id="cols-content">
		<section class="product spad">
		   <div class="container">
		      	 <div class="row">
					  <!-- 사이드바 시작 -->
			          <div class="col-lg-4 col-md-6 col-sm-8">
			              <div class="product__sidebar">
			    			<div class="product__sidebar__comment">
						        <div class="section-title">
						            <h5 style="color:#e53637;">고객센터 메인</h5>
						        </div>
						        <div class="product__sidebar__comment__item">
						            <div class="product__sidebar__comment__item__pic">
						            </div>
						            <div class="product__sidebar__comment__item__text">
						                <h5><a href="noticeListForm.bo">공지사항</a></h5>
						            </div>
						        </div>
						        <div class="product__sidebar__comment__item">
						            <div class="product__sidebar__comment__item__pic">
						            </div>
						            <div class="product__sidebar__comment__item__text">
						                <h5><a href="#">자주하는 질문</a></h5>
						            </div>
						        </div>
						        <div class="product__sidebar__comment__item">
						            <div class="product__sidebar__comment__item__pic">
						            </div>
						            <div class="product__sidebar__comment__item__text">
						                <h5><a href="#">1:1 문의</a></h5>
						            </div>
						        </div>
						        <div class="product__sidebar__comment__item">
						            <div class="product__sidebar__comment__item__pic">
						            </div>
						            <div class="product__sidebar__comment__item__text">
						                <h5><a href="#">분실물 문의</a></h5>
						            </div>
						        </div>
						    </div>
						</div>
					</div>
					<!-- 사이드바 끝 -->
				
					<!-- 검색창 시작 -->
				    <div class="search_box" id="search_box">
						<input id="searchtext" type="text" title="검색어 입력" placeholder="검색어를 입력해 주세요.">
						<button type="button" class="btn_search" title="검색하기" id="btn_search"></button>
				   	</div>
				   	<!-- 검색창 끝 -->
			   	
				   	<!-- 페이지 이동 버튼 시작 -->
					<div id="customer_notice_area">
						<div id="service_area">
							<ul id="list">
								<li style="width: 245px; height: 200px; text-align: center;"><h4>
									<a href="noticeListForm.bo"  title="새창열기" 
									style="width: 245px; height: 200px; text-align: center; padding-top: 80px;">공지사항</a></h4></li>
								<li style="width: 245px; height: 200px; text-align: center;"><h4>
									<a href="/user/login/find-account.aspx" target="_blank" title="새창열기" 
									style="width: 245px; height: 200px; text-align: center; padding-top: 80px;">자주하는 질문</a></h4></li>
								<li style="width: 245px; height: 200px; text-align: center;"><h4>
									<a href="/user/mycgv/reserve/?g=1#contaniner" target="_blank" title="새창열기" 
									style="width: 245px; height: 200px; text-align: center; padding-top: 80px;">1:1 문의</a></h4></li>
								<li style="width: 245px; height: 200px; text-align: center;"><h4>
									<a href="/user/guest/default.aspx" target="_blank" title="새창열기" 
									style="width: 245px; height: 200px; text-align: center; padding-top: 80px;">분실물 문의</a></h4></li>
							</ul>
						</div>
					</div>
					<!-- 페이지 이동 버튼 끝 -->
	  			</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>