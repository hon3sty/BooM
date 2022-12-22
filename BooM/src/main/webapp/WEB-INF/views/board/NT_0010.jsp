<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [게시판 : 고객센터] 공지사항 : 이지은 -->
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
.table-wrap td, .table-wrap th {
    padding: 0.75rem;
}
.table-wrap tbody>tr:hover {
	text-decoration: underline;
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
					            <h5><a href="csMainForm.bo" style="color:#fff;">고객센터</a></h5>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="noticeList.bo" style="color:#e53637;">공지사항</a></h5>
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
					<h2 class="tit">공지사항</h2>
						<div id="ntc2">
							<div class="board-list-util">
								<p class="result-count" style="color:#fff"><strong>전체 <em class="font-gblue">${pi.listCount }</em>건</strong></p>
								<select name="selsearchfield" id="selsearchfield" class="c_select" style="width:100px;" selected="selected">
									<option selected="selected" value="0">제목</option>
									<option value="1">내용</option>
								</select>
								<div class="board-search">
									<input type="text" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" value="" maxlength="15">
									<button type="button" id="searchBtn" class="btn-search-input">검색</button>
								</div>
							</div>
							<br>
							<div class="table-wrap">
								<table class="board-list" id="noticeList" style="text-align: center; cursor: pointer">
									<colgroup>
										<col style="width:72px;">
										<col style="width:300px;">
										<col style="width:153px;">
										<col style="width:145px;">
										<col style="width:96px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">제목</th>
											<th scope="col">글쓴이</th>
											<th scope="col">등록일</th>
											<th scope="col">조회수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="b" items="${list}">
										<tr>
											<td>${b.boardNo}</td>
											<td>${b.boardTitle}</td>
											<td>${b.boardWriter}</td>
											<td>${b.boardDate}</td>
											<td>${b.boardCount}</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<br>
							<script>
								$(function(){
									$("#noticeList>tbody tr").click(function(){
										location.href="noticeDetail.bo?bno="+$(this).children().eq(0).text();
									})
								})
							</script>
							<!-- 페이징 영역 시작 -->
							<div class="product__pagination" style="padding-top:20px; padding-left:160px;">
								<a href="noticeList.bo?currentPage=${pi.startPage}"><i class="fa fa-angle-double-left"></i></a>
									<!-- currentPage가 1이면 숨기기 -->
									<c:if test="${pi.currentPage ne 1}">
										<a href="noticeList.bo?currentPage=${pi.currentPage-1}">&lt</a>
									</c:if>
									<c:forEach begin="${pi.startPage}" end="${pi.endPage}" var="p">
										<c:choose>
			              					<c:when test="${pi.currentPage eq p }">
			                        			<a href="noticeList.bo?currentPage=${p}" class="current-page">${p}</a>
			                        		</c:when>
			                        		<c:otherwise>
			                        			<a href="noticeList.bo?currentPage=${p}">${p}</a>
			                        		</c:otherwise>
			                        	</c:choose>
									</c:forEach>
		                        	<!-- currentPage가 maxPage와 일치하면 숨기기 -->
		                        	<c:if test="${pi.currentPage ne pi.maxPage}">
		                        		<a href="noticeList.bo?currentPage=${pi.currentPage+1}">&gt</a>
		                        	</c:if>
	                        	<a href="noticeList.bo?currentPage=${pi.endPage }"><i class="fa fa-angle-double-right"></i></a>
                    		</div>
                    		<!-- 페이징 영역 끝 -->
                    		<!-- 관리자 로그인 시 공지사항 관리 페이지로 이동하는 버튼 보이게 함 -->
                    		<c:if test="${not empty loginUser and loginUser.memberId eq 'admin'}">
                    			<div class="anime__details__btn">
                                	<a href="noticeAdmin.bo" class="follow-btn" style="float:right;">관리자</a>
                           		 </div>
                           	</c:if>
						</div>
					</div>
					<!-- 리스트 영역 끝 -->
 				 </div>
			</div>
		</section>
	</div>
</div>
</body>
</html>