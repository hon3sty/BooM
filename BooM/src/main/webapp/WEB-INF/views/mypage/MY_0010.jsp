<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [마이페이지] 마이페이지 메인 : 이지윤 -->
<title>Insert title here</title>
<style>
 #outer_0010 {
 	display: flex; 
	justify-content: center;
}
.sidebar__comment__1 {
	margin-bottom: 10px;
	overflow: hidden;
	margin-left: 20px;
}
.sidebar__comment__1-1, .sidebar__comment__2-1 {
	float: left;
	margin-right: 15px;
}
.sidebar__comment__2 {
	margin-bottom: 10px;
	margin-left: 20px;
}
.sidebar__comment__1-2 {
	overflow: hidden;
	font-size: 5px;
}
.sidebar__comment__1-2-3 h5 {
	margin-bottom: 0px;
}
.sidebar__comment__1-2-3 h5 a {
	color: #ffffff;
	font-weight: 700;
	line-height: 26px;
}
.sidebar__comment__1-2 h5 a {
	color: #ffffff;
	font-weight: 700;
	line-height: 26px;
}
.sidebar__comment__2-2 {
	overflow: hidden !important;
	font-size: 5px !important;
}
.sidebar__comment__2-2 h5 {
	margin-bottom: 5px;
}
.sidebar__comment__2-2 h5 a {
	color: #ffffff;
	font-weight: 700;
	font-size: 5px;
	line-height: 26px;
}
.sidebar__comment__2-2-3 h5 {
	margin-bottom: 0px;
}
.sidebar__comment__2-2-3 h5 a {
	color: #ffffff;
	font-weight: 700;
	font-size: 14px;
	line-height: 16px;
}
.sidebar__comment__2-2-3 h5 a:hover {
	color: #e53637;
	font-weight: 700;
	font-size: 14px;
	line-height: 16px;
}
.sidebar__comment__1-2-3 h5 a:hover {
	color: #ffffff;
	font-weight: 700;
	line-height: 26px;
	color: #e53637;
}
.sidebar__comment__1-2 h5 a:hover {
	color: #e53637;
	font-weight: 700 !important;
	line-height: 26px;
}
/* #menubar {
	padding-right: 10px;
	padding-top: 80px;
} */
#my_1 {
	width: 1020px;
	display: flex;
	margin-top: 50px;
	padding-left: 100px;
}	
#my_12 {
	height : 20px;
	display: flex;
}
#11{
    margin-top: 20px;
    margin-left: 230px;
    margin-top: 350px;
}
.box-polaroid{
	display: flex;
	justify-content: center;
	  border-radius: 10px;
}
.sect-mycgv-reserve .box-polaroid {
    overflow: hidden;
    background-color: #0b0c2a;
    border: 1px solid white;
}
.sect-mycgv-reserve.movielog.col3 .box-inner.preegg {
    background: url(../images/common/ico/mycgv/icon_preegg.png) no-repeat 50% 16px;
}
.sect-mycgv-reserve.movielog.col3 .box-inner a {
    display: inline-block;
    padding: 20px 0 23px;
}
a {
    color: inherit;
    text-decoration: none;
}
a{
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
.sect-mycgv-reserve.movielog.col3 .box-inner {
    width: 265px;
    padding: 0;
    text-align: center;
    line-height: 16px;
}
#rr{
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-size:12px;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
    color: white;
} 
.sect-mycgv-reserve.movielog.col3 h3 {/*추천영화*/
    background: none;
    color: white;
    font-size: 18px;
    margin: 0 auto 2px;
    line-height: 20px;
    height: auto;
    font-weight: bolder; 
}
 h3 {
    height: 41px;
    margin: 30px 0 15px;
    background: url(https://img.cgv.co.kr/r2014/images/common/bg/bg_h3_line.jpg) repeat-x 0 50%;
    line-height: 41px;
    text-align: center;
    font-weight: 500;
    font-weight: 500;
} 
a {
    color: inherit;
    text-decoration: none;
}
 #header__logo33 {
    width: 20px;
    height: 20px;
    margin-right: 0px;
    margin-bottom: 15px;
}
.sect-mycgv-reserve .box-inner {
    float: left;
    width: 308px;
    padding: 32px 0 32px 90px;
    border-left: 1px dashed  #ebe3e382;
    /*#e8212182 */
}
#22{
	background-color: #0b0c2a;
	border: 1px solid white;
}
#menubar {
    padding-right: 0px !important;
}
.my-magabox-info .top .photo {
    float: left;
    width: 200px;
    padding: 20px 0 0 60px;
}
.my-magabox-info .top .photo .wrap {
    position: relative;
    width: 93px;
    margin: 0;
    padding: 0 0 7px 0;
    background: url(https://img.megabox.co.kr/static/pc/images/mypage/bg-photo-back.png) no-repeat center bottom;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
.my-magabox-info .top .photo {
    float: left;
    width: 200px;
    padding: 20px 0 0 60px;
}
.my-magabox-info .top .photo .wrap {
    position: relative;
    width: 93px;
    margin: 0;
    padding: 0 0 7px 0;
    background: url(https://img.megabox.co.kr/static/pc/images/mypage/bg-photo-back.png) no-repeat center bottom;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
.my-magabox-info .top {
    position: relative;
    height: 198px;
    padding: 30px 30px 0 0;
}
* {
    box-sizing: border-box;
}
div {
    display: block;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
.my-magabox-info .top .photo {
    float: left;
    width: 200px;
    padding: 20px 0 0 60px;
}
.my-magabox-info .top .photo .wrap {
    position: relative;
    width: 93px;
    margin: 0;
    padding: 0 0 7px 0;
    background: url(https://img.megabox.co.kr/static/pc/images/mypage/bg-photo-back.png) no-repeat center bottom;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
form {
    display: block;
    margin-top: 0em;
}
input{
    margin: 0;
    font-family: inherit;
    font-size: 1em;
    line-height: 1.15;
}
button, input {
    overflow: visible;
}
.info-wrap{
	    display: flex;
    /* justify-content: center; */
    margin-left: 100px;
    background-color: #4e4d4d87;
/*     border: 1px solid white; */
	padding: 20px;
    width: 800px;
    border-radius: 15px;
}
.my-magabox-info .top .grade .name {
    font-size: 1.8666em;
    line-height: 1.3;
    color: #222;
}
.my-megabox-main p {
    margin: 0;
    padding: 0;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.my-magabox-info .top .grade .link {
    padding: 15px 0 0 0;
}
.my-magabox-info .top .grade .link a {
    margin-right: 10px;
    color: #666;
}
a:visited {
    color: #666;
    text-decoration: none;
    outline: 1px dotted #000;
}
a {
    background-color: transparent;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
.person-info>sapn{
    color: white;
    font-size: 25px;
    font-weight: bold;
}
.person-info>div{
    color: white;
    font-size: 15px;
    margin-top : 9px;
    margin-left : 15px;
}   
.person-info{
 	display: flex;
 	margin-top : 15px;
 	margin-left : 30px;
}
#mm{
 	display: flex;
}
#go_edit_page:hover{
	margin-left: 380px; 
    border-radius: 5px;
    background-color: #0b0c2a;
    border: 1px solid white;
	padding: 2px;
    width: 120px;
    color:white;
    font-size : 12px;
    padding: 9px;
}
#go_edit_page {
    margin-left: 380px; 
    float: right;
    border-radius: 5px;
    background-color: #d53a3a;
    border: 1px solid #5a1d1d;
    width: 120px;
    color: white;
    font-size: 12px;
    padding: 9px;
}
#p_1{
	 width: 60px;
	 margin-top : 5px;
}
</style>
</head>
<!-- Header Section Begin -->
<jsp:include page="../common/header.jsp" />
<body class="">
	<!-- 전체 영역-->
	<div id="outer_0010">
	
	<jsp:include page="../common/menu.jsp"/>
	<div id="hi">
		<div id="22">
	<div class="info-wrap">
      <div class="sect-person-info">
		<div id="mm">
        	<div class="box-image">
				<span class="thumb-image">
					<img src="resources/img/common/bg-photo.png" alt="프로필 사진" onerror="errorImage(this, {'type':'profile'})" id="p_1">
					<span class="profile-mask"></span>
				</span>
        	</div>
        	<div class="box-contents newtype">
        		<div class="person-info">
        			<sapn>${loginUser.memberName}님</sapn>
        			<div>${loginUser.memberId}</div>
						<c:if test="${loginUser.memberId eq 'admin'}">
							<a href="MemberA.me"><button id="go_edit_page" type="button" >회원 정보 관리</button></a>
						</c:if>
      		  		</div>
				  </div>   
        		</div>
        			<div class="grade-info">
        				</div>
		        </div>
	    	  </div>
			</div>
		<div id="my_1">
     	  <div id="11">
			<div class="sect-mycgv-reserve movielog col3">
			    <div class="box-polaroid">
			        <div class="box-inner preegg">
			           <a href="review.my" title="내가 쓴 리뷰">
			              <img src="resources/img/common/b_2.png" id="header__logo33">
			                <h3>내가 쓴 리뷰</h3>
			                <span id="rr">관람 후 내 감상평을 적어 <br>추억하고 싶다면?</span>
			            </a>
			        </div>
			        <div class="box-inner watched">
			            <a href="movieRecommend.mv" title="추천 영화">
							<img src="resources/img/common/p_2.png" id="header__logo33">              
			                <h3>추천 영화</h3>
			                <span id="rr">추천 영화들을 한번에 <br>모아 보고 싶다면?</span>
			            </a>
			        </div>
			        <div class="box-inner mvdiary">
			            <a href="myLikeMovieList.mv" title="보고싶은 영화">
			                <img src="resources/img/common/h_2.png" id="header__logo33">
			                <h3>보고싶은 영화</h3>
			               <span id="rr">보고 싶은 영화들을 미리 <br>담아두고 싶다면?</span>
			            </a>
			        </div>
			     </div>
			  </div>
			</div>
    	  </div>
    	</div>
      </div>
      <script>
		  	function logout() {
		  		location.href = "logout";
		  	}
		  	function memberList(){
		  		location.href="memberList";
		  	}
	  </script>
      
      </script>
   <jsp:include page="../common/footer.jsp" />
</body>
</html>