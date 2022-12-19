<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [게시판 : 고객센터] 공지사항 상세페이지 : 이지은 -->
<title>공지사항</title>
<style type="text/css">
#cs{
	position: relative;
    width: 980px;
    margin: 0 auto;
}
#ntc2{
    float: left;
    width: 800px;
    height: 600px;
    padding-top: 15px;
    margin: -5px 0px 0px -5px;

}
#ntc2 #list li a {
    padding: 24px 20px 25px 17px; 
    display: block;
    width: 94px;
    height: 32px;
    color: #222;
    line-height: 150%;
    font-weight: 500;
   	background-color: #fff;
}
#ntc2 #list li {
    margin: 5px 0px 0px 5px;
    float: left;
}
#list{
	list-style: none;
}
#ntc1{
	position: relative;
    left: 200px;
    bottom: 300px;
    color: #fff;
}
h2.tit {
    padding: 0 0 26px 0;
    font-size: 1.8666em;
    font-weight: 400;
    letter-spacing: -1px;
    line-height: 1.1;
    color: #fff;
}
.board-list-util {
    margin: 30px 0 15px 0;
    text-align: right;
}
.board-list-util .result-count {
    position: relative;
    float: left;
    margin: 0;
    padding-top: 15px;
    line-height: 1.1;
    vertical-align: top;
}
.board-list-util select {
    display: inline-block;
    vertical-align: middle;
    width: 150px;
    height: 33px;
    border: 1px solid #d8d9db;
/*     border-radius: 3px; */
    padding: 0 5px;
    margin-right: 7px;
    margin-bottom: 3px;
}
.bootstrap-select.open>.dropdown-toggle {
    border-bottom: 0;
    border-radius: 4px 4px 0 0;
}
.board-search {
    position: relative;
    display: inline-block;
    vertical-align: middle;
    width: 230px;
    height: 36px;
    margin: 0;
    padding: 0 31px 0 0;
/*     border: 1px solid #d8d9db; */
    border-radius: 3px;
}
.board-search .input-text {
    display: block;
    width: 100%;
    height: 31.6px;
    border: 0;
}
.board-search .btn-search-input {
    position: absolute;
    right: 1px;
   	bottom: 5px;
}
.btn-search-input {
    overflow: hidden;
    width: 30px;
    height: 31px;
    margin: 0;
    padding: 0;
    font-size: 0;
    line-height: 0;
    border: none;
    text-indent: -9999px;
    background: #fff url(https://img.megabox.co.kr/static/pc/images/common/btn/btn-search-input.png) no-repeat center;
}
#uploadBtn {
    border: 1px solid #555;
    background-color: #555;
    line-height: 36px;
    height: 36px;
    border-radius: 4px;
    color: #fff;
    padding: 0 20px;
    margin-left: 10px;
}
.table-wrap {
    position: relative;
    border-top: 1px solid #fff;
}
.board-form tbody td, .board-form tbody th {
    position: relative;
    height: 50px;
    padding: 7px 15px;
    text-align: left;
    border-bottom: 1px solid #d1d5dd;
}
.input-text {
    display: inline-block;
    width: 100%;
    height: 32px;
    padding: 0 10px;
    line-height: 30px;
    color: #444;
    border: 1px solid #d8d9db;
    vertical-align: middle;
}
.board-form tbody th {
  	border-right: 1px solid #d1d5dd;
}
.input-textarea {
    display: inline-block;
    width: 100%;
    height: 200px;
    padding: 10px;
    line-height: 16px;
    color: #333;
    border-radius: 0!important;
    border: 1px solid #d8d9db;
    vertical-align: middle;
}
.tit {
    font-size: 15px;
    font-family: "Mulish", sans-serif;
    color: #fff;
    font-weight: 400;
    line-height: 25px;
    margin: 0 0 15px 0;
}
.txt{
	font-size: 15px;
    font-family: "Mulish", sans-serif;
    color: #d1d5dd;
    font-weight: 400;
    line-height: 25px;
    margin: 0 0 15px 0;
}
.board-view .tit-area {
    display: table;
    width: 100%;
    padding: 15px 0;
}
.board-view .info {
    padding-bottom: 20px;
    font-size: .9333em;
}
.board-view .info p:first-child {
    margin-left: 0;
    padding-left: 0;
}
.board-view .info p {
    position: relative;
    display: inline-block;
    vertical-align: top;
    margin: 0 0 0 8px;
    padding: 0 0 0 11px;
}
.board-view .cont {
    overflow: hidden;
    width: 100%;
    padding: 20px 0;
    border-top: 1px solid #eaeaea;
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
     		 <div class="row">
		 		  <!-- 사이드바 시작 -->
		          <div class="col-lg-4 col-md-6 col-sm-8">
		              <div class="product__sidebar">
		    			<div class="product__sidebar__comment">
					        <div class="section-title">
					            <h5><a href="csMainForm.bo" style="color:#fff;">고객센터</a></h5>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="noticeListForm.bo" style="color:#e53637;">공지사항</a></h5>
					            </div>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="faqListForm.bo">자주하는 질문</a></h5>
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
				
				<!-- 리스트 영역 시작 -->
				<div id="ntc1">
					<div id="contents">
				<h2 class="tit">공지사항</h2>

				<div class="table-wrap" id="ntc2">
					<div class="board-view">
						<div class="tit-area">
							<p class="tit">[지점] [남양주 현대아울렛 스페이스원] 12월 14일(수) Dolby Cinema관 상영재개 안내</p>
						</div>

						<div class="info">
							
								
									<p>
										<span class="tit">영화관</span>
										<span class="txt">남양주현대아울렛 스페이스원</span>
									</p>
									<p>
										<span class="tit">구분</span>
										<span class="txt">공지</span>
									</p>
								
								
							
							<p>
								<span class="tit">등록일</span>
								<span class="txt">2022.12.14</span>
							</p>
						</div>

						<div class="cont">안녕하세요.<br>
메가박스 남양주 현대아울렛 스페이스원입니다.&nbsp;<br>
<br>
금일 발생되었던 Dolby Cinema관 장비오류로인한 상영불가에 대해 복구 작업이 완료되어,&nbsp;<br>
Dolby Cinema관 (4K HDR HFR) 아바타: 물의 길<br>
12월 14일(수) 5회차 23:55부터 상영재개 일정이 확정되어 안내드립니다.<br>
<br>
극장 이용에 불편을 드리게 된 점 다시 한 번 진심으로 사과드립니다.<br>
더 나은 서비스로 보답해 드리는 남양주 현대아울렛 스페이스원지점이 되겠습니다.<br>
감사합니다.</div>
					</div>
				</div>

				<div class="blog__details__btns">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="blog__details__btns__item">
                                        <h5><a href="#"><span class="arrow_left"></span> Building a Better LiA...</a>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="blog__details__btns__item next__btn">
                                        <h5><a href="#">Mugen no Juunin: Immortal – 21 <span class="arrow_right"></span></a></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<c:choose>
								<c:when test="${not empty loginUser and loginUser.memberId eq 'admin'}">
									<div class="anime__details__btn"  style="text-align:center;">
		                                <a href="noticeList.bo" class="follow-btn">목록</a>
		                                <a href="noticeList.bo" class="follow-btn">수정</a>
		                                <a href="noticeList.bo" class="follow-btn">삭제</a>
		                            </div>
	                            </c:when>
	                            <c:otherwise>
	                            	<div class="anime__details__btn"  style="text-align:center;">
		                                <a href="noticeList.bo" class="follow-btn">목록</a>
		                            </div>
	                            </c:otherwise>
                            </c:choose>
			</div>
					
					<!-- 리스트 영역 끝 -->
 				 </div>
			</div>
		</section>
	</div>
</div>
</body>
</html>