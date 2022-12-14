<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					            <h5>고객센터 메인</h5>
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
				
				<!-- 리스트 영역 시작 -->
				<div id="ntc1">
					<h2 class="tit">공지사항</h2>
						<div id="ntc2">
							<div class="board-list-util">
								<p class="result-count"><strong>전체 <em class="font-gblue">5,825</em>건</strong></p>
								<select name="selsearchfield" id="selsearchfield" class="c_select" style="width:100px;" selected="selected">
									<option selected="selected" value="0">제목</option>
									<option value="1">내용</option>
								</select>
								<div class="board-search">
									<input type="text" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" value="" maxlength="15">
									<button type="button" id="searchBtn" class="btn-search-input">검색</button>
								</div>
							</div>
							<div class="table-wrap">
								<table class="board-list">
									<caption>번호, 극장, 구분, 제목, 등록일이 들어간 공지사항 전체 리스트</caption>
									<colgroup>
										<col style="width:72px;">
										<col style="width:133px;">
										<col style="width:95px;">
										<col>
										<col style="width:116px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">극장</th>
											<th scope="col">구분</th>
											<th scope="col">제목</th>
											<th scope="col">등록일</th>
										</tr>
									</thead>
									<tbody><tr><td>1</td><td>남양주현대아울렛 스페이스원</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10733" title="공지사항 상세보기"><span class="font-green"></span>[<span class="font-green"></span>남<span class="font-green"></span>양<span class="font-green"></span>주<span class="font-green"></span> <span class="font-green"></span>현<span class="font-green"></span>대<span class="font-green"></span>아<span class="font-green"></span>울<span class="font-green"></span>렛<span class="font-green"></span> <span class="font-green"></span>스<span class="font-green"></span>페<span class="font-green"></span>이<span class="font-green"></span>스<span class="font-green"></span>원<span class="font-green"></span>]<span class="font-green"></span> <span class="font-green"></span>1<span class="font-green"></span>2<span class="font-green"></span>월<span class="font-green"></span> <span class="font-green"></span>1<span class="font-green"></span>4<span class="font-green"></span>일<span class="font-green"></span>(<span class="font-green"></span>수<span class="font-green"></span>)<span class="font-green"></span> <span class="font-green"></span>D<span class="font-green"></span>o<span class="font-green"></span>l<span class="font-green"></span>b<span class="font-green"></span>y<span class="font-green"></span> <span class="font-green"></span>C<span class="font-green"></span>i<span class="font-green"></span>n<span class="font-green"></span>e<span class="font-green"></span>m<span class="font-green"></span>a<span class="font-green"></span>관<span class="font-green"></span> <span class="font-green"></span>상<span class="font-green"></span>영<span class="font-green"></span>재<span class="font-green"></span>개<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.12.14</td></tr><tr><td>2</td><td>영통</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10731" title="공지사항 상세보기"><span class="font-green"></span>[<span class="font-green"></span>영<span class="font-green"></span>통<span class="font-green"></span>]<span class="font-green"></span> <span class="font-green"></span>1<span class="font-green"></span>2<span class="font-green"></span>월<span class="font-green"></span> <span class="font-green"></span>1<span class="font-green"></span>4<span class="font-green"></span>일<span class="font-green"></span> <span class="font-green"></span>장<span class="font-green"></span>비<span class="font-green"></span> <span class="font-green"></span>오<span class="font-green"></span>류<span class="font-green"></span>로<span class="font-green"></span> <span class="font-green"></span>인<span class="font-green"></span>한<span class="font-green"></span> <span class="font-green"></span>M<span class="font-green"></span>X<span class="font-green"></span>관<span class="font-green"></span> <span class="font-green"></span>상<span class="font-green"></span>영<span class="font-green"></span> <span class="font-green"></span>취<span class="font-green"></span>소<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.12.14</td></tr><tr><td>3</td><td>남양주현대아울렛 스페이스원</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10730" title="공지사항 상세보기"><span class="font-green"></span>[<span class="font-green"></span>남<span class="font-green"></span>양<span class="font-green"></span>주<span class="font-green"></span> <span class="font-green"></span>현<span class="font-green"></span>대<span class="font-green"></span>아<span class="font-green"></span>울<span class="font-green"></span>렛<span class="font-green"></span> <span class="font-green"></span>스<span class="font-green"></span>페<span class="font-green"></span>이<span class="font-green"></span>스<span class="font-green"></span>원<span class="font-green"></span>]<span class="font-green"></span> <span class="font-green"></span>1<span class="font-green"></span>2<span class="font-green"></span>월<span class="font-green"></span> <span class="font-green"></span>1<span class="font-green"></span>4<span class="font-green"></span>일<span class="font-green"></span> <span class="font-green"></span>장<span class="font-green"></span>비<span class="font-green"></span> <span class="font-green"></span>오<span class="font-green"></span>작<span class="font-green"></span>동<span class="font-green"></span>으<span class="font-green"></span>로<span class="font-green"></span> <span class="font-green"></span>인<span class="font-green"></span>한<span class="font-green"></span> <span class="font-green"></span>D<span class="font-green"></span>o<span class="font-green"></span>l<span class="font-green"></span>b<span class="font-green"></span>y<span class="font-green"></span> <span class="font-green"></span>C<span class="font-green"></span>i<span class="font-green"></span>n<span class="font-green"></span>e<span class="font-green"></span>m<span class="font-green"></span>a<span class="font-green"></span>관<span class="font-green"></span> <span class="font-green"></span>상<span class="font-green"></span>영<span class="font-green"></span>중<span class="font-green"></span>단<span class="font-green"></span> <span class="font-green"></span>및<span class="font-green"></span> <span class="font-green"></span>취<span class="font-green"></span>소<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.12.14</td></tr><tr><td>4</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10728" title="공지사항 상세보기"><span class="font-green"></span>&lt;<span class="font-green"></span>워<span class="font-green"></span>너<span class="font-green"></span> <span class="font-green"></span>필<span class="font-green"></span>름<span class="font-green"></span> <span class="font-green"></span>소<span class="font-green"></span>사<span class="font-green"></span>이<span class="font-green"></span>어<span class="font-green"></span>티<span class="font-green"></span> <span class="font-green"></span>기<span class="font-green"></span>획<span class="font-green"></span> <span class="font-green"></span>상<span class="font-green"></span>영<span class="font-green"></span>전<span class="font-green"></span>&gt;<span class="font-green"></span> <span class="font-green"></span>스<span class="font-green"></span>탬<span class="font-green"></span>프<span class="font-green"></span> <span class="font-green"></span>이<span class="font-green"></span>벤<span class="font-green"></span>트<span class="font-green"></span> <span class="font-green"></span>굿<span class="font-green"></span>즈<span class="font-green"></span> <span class="font-green"></span>지<span class="font-green"></span>급<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.12.08</td></tr><tr><td>5</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10723" title="공지사항 상세보기"><span class="font-green"></span>[<span class="font-green"></span>G<span class="font-green"></span>S<span class="font-green"></span>&amp;<span class="font-green"></span>P<span class="font-green"></span>O<span class="font-green"></span>I<span class="font-green"></span>N<span class="font-green"></span>T<span class="font-green"></span>]<span class="font-green"></span> <span class="font-green"></span>시<span class="font-green"></span>스<span class="font-green"></span>템<span class="font-green"></span> <span class="font-green"></span>정<span class="font-green"></span>기<span class="font-green"></span> <span class="font-green"></span>점<span class="font-green"></span>검<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span> <span class="font-green"></span>(<span class="font-green"></span>1<span class="font-green"></span>2<span class="font-green"></span>/<span class="font-green"></span>8<span class="font-green"></span>)<span class="font-green"></span></a></th><td>2022.12.01</td></tr><tr><td>6</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10722" title="공지사항 상세보기"><span class="font-green"></span>2<span class="font-green"></span>0<span class="font-green"></span>2<span class="font-green"></span>3<span class="font-green"></span>년<span class="font-green"></span> <span class="font-green"></span>우<span class="font-green"></span>수<span class="font-green"></span>회<span class="font-green"></span>원<span class="font-green"></span> <span class="font-green"></span>선<span class="font-green"></span>정<span class="font-green"></span> <span class="font-green"></span>및<span class="font-green"></span> <span class="font-green"></span>승<span class="font-green"></span>급<span class="font-green"></span> <span class="font-green"></span>제<span class="font-green"></span>도<span class="font-green"></span> <span class="font-green"></span>변<span class="font-green"></span>경<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.11.30</td></tr><tr><td>7</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10720" title="공지사항 상세보기"><span class="font-green"></span>메<span class="font-green"></span>가<span class="font-green"></span>박<span class="font-green"></span>스<span class="font-green"></span> <span class="font-green"></span>개<span class="font-green"></span>인<span class="font-green"></span>정<span class="font-green"></span>보<span class="font-green"></span> <span class="font-green"></span>처<span class="font-green"></span>리<span class="font-green"></span>방<span class="font-green"></span>침<span class="font-green"></span> <span class="font-green"></span>변<span class="font-green"></span>경<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.11.23</td></tr><tr><td>8</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10716" title="공지사항 상세보기"><span class="font-green"></span>메<span class="font-green"></span>가<span class="font-green"></span>박<span class="font-green"></span>스<span class="font-green"></span> <span class="font-green"></span>시<span class="font-green"></span>스<span class="font-green"></span>템<span class="font-green"></span> <span class="font-green"></span>점<span class="font-green"></span>검<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span> <span class="font-green"></span>(<span class="font-green"></span>1<span class="font-green"></span>1<span class="font-green"></span>/<span class="font-green"></span>2<span class="font-green"></span>2<span class="font-green"></span>)<span class="font-green"></span></a></th><td>2022.11.15</td></tr><tr><td>9</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10707" title="공지사항 상세보기"><span class="font-green"></span>[<span class="font-green"></span>북<span class="font-green"></span>앤<span class="font-green"></span>라<span class="font-green"></span>이<span class="font-green"></span>프<span class="font-green"></span>(<span class="font-green"></span>도<span class="font-green"></span>서<span class="font-green"></span>문<span class="font-green"></span>화<span class="font-green"></span>상<span class="font-green"></span>품<span class="font-green"></span>권<span class="font-green"></span>)<span class="font-green"></span>]<span class="font-green"></span> <span class="font-green"></span>시<span class="font-green"></span>스<span class="font-green"></span>템<span class="font-green"></span> <span class="font-green"></span>점<span class="font-green"></span>검<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span> <span class="font-green"></span>(<span class="font-green"></span>1<span class="font-green"></span>1<span class="font-green"></span>/<span class="font-green"></span>1<span class="font-green"></span>5<span class="font-green"></span>)<span class="font-green"></span></a></th><td>2022.11.01</td></tr><tr><td>10</td><td>메가박스</td><td>공지</td><th><a href="#" class="moveBtn" data-no="10706" title="공지사항 상세보기"><span class="font-green"></span>[<span class="font-green"></span>메<span class="font-green"></span>가<span class="font-green"></span>박<span class="font-green"></span>스<span class="font-green"></span>X<span class="font-green"></span>스<span class="font-green"></span>타<span class="font-green"></span>필<span class="font-green"></span>드<span class="font-green"></span>]<span class="font-green"></span> <span class="font-green"></span>영<span class="font-green"></span>화<span class="font-green"></span>로<span class="font-green"></span> <span class="font-green"></span>하<span class="font-green"></span>나<span class="font-green"></span>되<span class="font-green"></span>다<span class="font-green"></span>!<span class="font-green"></span> <span class="font-green"></span>M<span class="font-green"></span>G<span class="font-green"></span>B<span class="font-green"></span>X<span class="font-green"></span> <span class="font-green"></span>F<span class="font-green"></span>A<span class="font-green"></span>M<span class="font-green"></span>I<span class="font-green"></span>L<span class="font-green"></span>Y<span class="font-green"></span> <span class="font-green"></span>잠<span class="font-green"></span>정<span class="font-green"></span> <span class="font-green"></span>연<span class="font-green"></span>기<span class="font-green"></span> <span class="font-green"></span>안<span class="font-green"></span>내<span class="font-green"></span></a></th><td>2022.10.31</td></tr></tbody>
								</table>
							</div>
							<!-- pagination -->
							<nav class="pagination"><strong class="active">1</strong> <a title="2페이지보기" href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기" href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기" href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기" href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기" href="javascript:void(0)" pagenum="6">6</a> <a title="7페이지보기" href="javascript:void(0)" pagenum="7">7</a> <a title="8페이지보기" href="javascript:void(0)" pagenum="8">8</a> <a title="9페이지보기" href="javascript:void(0)" pagenum="9">9</a> <a title="10페이지보기" href="javascript:void(0)" pagenum="10">10</a> <a title="이후 10페이지 보기" href="javascript:void(0)" class="control next" pagenum="11">next</a> <a title="마지막 페이지 보기" href="javascript:void(0)" class="control last" pagenum="583">last</a> </nav>
							<!--// pagination -->
						</div>
					</div>
 				 </div>
			</div>
		</section>
	</div>
</div>
</body>
</html>