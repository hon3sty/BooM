<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [회원] 아이디,비밀번호 찾기 : 이지윤 -->
<title>Insert title here</title>
<style>
.member-wrap {
    width: 710px;
    min-height: 100%;
    margin: 0 auto;
    padding: 80px 100px;
    background-color: #0b0c2a;
}
.member-wrap .col-wrap {
    overflow: hidden;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.member-wrap .tit-member {
    margin: 0;
    padding: 0 0 30px 0;
    font-size: 1.8666em;
    color: white;
    text-align: center;
}
.tab-list {
    position: static;
    width: 100%;
    background-color: #0b0c2a;
}
.tab-list>ul {
    position: relative;
    width: 100%;
    height: 42px;
}
ol, ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.tab-list>ul>li.on {
     border: 1px solid #e53637;
    border-bottom: 0;
}
.tab-list>ul>li {
    float: left;
    height: 42px;
    margin: 0;
   /*   border: 1px solid #e53637; */
    border-width: 1px 0 1px 1px;
}
.tab-list>ul>li.on>a {
    z-index: 3;
    color: white; 
    background-color: #0b0c2a;
}
.tab-list>ul>li>a {
    position: relative;
    display: block;
    width: 100%;
    height: 41px;
    line-height: 40px;
    padding: 0;
    text-align: center;
    color: #222;
    font-size: 1.0667em;
    text-decoration: none;
}
.tab-list>ul>li:first-child:nth-last-child(2), .tab-list>ul>li:first-child:nth-last-child(2)~li {
    width: 50%;
}
.tab-list>ul>li.on+li {
    border-left: 0;
}
.tab-list>ul>li:last-child {
    border-right: 1px solid #e53637;
}
.tab-list>ul>li {
    float: left;
    height: 42px;
    margin: 0;
    border: 1px solid #555;
    border-width: 1px 0 1px 1px;
}
.tab-list>ul>li>a {
    position: relative;
    display: block;
    width: 100%;
    height: 41px;
    line-height: 40px;
    padding: 0;
    text-align: center;
    color: white;
    font-size: 1.0667em;
    text-decoration: none;
}
.table-wrap {
    position: relative;
   /*  border-top: 1px solid #555; */
}
table {
    width: 100%;
    margin: 0;
    border: 0;
    table-layout: fixed;
    border-collapse: collapse;
    empty-cells: show;
}
table caption {
    overflow: hidden;
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
    opacity: 0;
}
table {
   /* border-collapse: separate;*/
    text-indent: initial;
    border-spacing: 2px;
}
.board-form tbody th {
    background: #0b0c2a;
    color:white;
}
.board-form tbody td, .board-form tbody th {
    position: relative;
    height: 50px;
    padding: 7px 15px;
    text-align: left;
    border-bottom: 1px solid #555;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
label {
    display: inline-block;
    vertical-align: middle;
    cursor: pointer;
}
.member-wrap .table-wrap .board-form tr td:last-child {
    padding-right: 0;
}
.board-form tbody td, .board-form tbody th {
    position: relative;
    height: 50px;
    padding: 7px 15px;
    text-align: left;
    border-bottom: 1px solid #d1d5dd;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
.w230px {
    width: 230px!important;
}
.input-text {
    display: inline-block;
    width: 100%;
    height: 32px;
    padding: 0 10px;
    line-height: 30px;
    font-size:12px;
    color: black;
    border: 1px solid #555;
    vertical-align: middle;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
    border-radius: 5px;
}
button, input {
    overflow: visible;
}
.member-wrap .btn-member-bottom.v1 {
    margin: 0 0 40px 0;
    padding: 40px 0;
    border-bottom: 1px solid #eaeaea;
}
.member-wrap .btn-member-bottom {
    text-align: center;
}
.member-wrap .btn-member-bottom .button {
    width: 200px;
    padding: 0;
    font-size: 15px;
    font-weight: bold;
}
.button.purple.large {
    line-height: 46px;
}
.button.purple {
    color: #fff;
    line-height: 36px;
    border: 0;
    background: #e53637;
}
.button[disabled] {
   color: white!important;
    cursor: default!important;
    background-color: #e0e0e0!important;
    border-color: #e0e0e0!important;
}
.button {
    display: inline-block;
    height: 36px;
    margin: 0;
    padding: 0 15px;
    text-align: center;
    line-height: 34px;
    color: white;
    font-weight: 400;
    border-radius: 4px;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
    text-decoration: none;
    border: 1px solid #555;
    vertical-align: middle;
    background-color: #fff;
    cursor: pointer;
}
.mt20{
	color:white;
	font-size:12px;
}
.member_0010 input[type=button]{
	background-color: #e53637;
	color:#fff;
}
.member_0010 input[type=button]:hover{
	background-color: #b42728;
	color:#fff;
}
#button_0010 {
    border: 1px solid #e53637;
    padding: 10px;
    margin-top: 20px;
    width: 39%;
    margin-bottom: 5px;
    font-weight: bolder;
    border-radius: 5px;
    margin-left: 140px;
}
#button_0010:hover{
    border: 1px solid #b42728;
    padding: 10px;
    margin-top:20px;
    width: 39%;
    margin-bottom: 5px;
    font-weight: bolder;
     border-radius: 5px;
     margin-left: 140px;
}
 #outer_0010 {
    display: flex;
    justify-content: center;
    padding-top: 120px;
/*     margin-left: -110px; */
}
 #membercheck{
    padding-left: 9%;
} 
.section-title_0030 {
    margin-bottom: 30px;
    padding-left: 100px !important;
}
.section-title_0030 h4{
	color: #ffffff;
	font-weight: 600;
	line-height: 21px;
	text-transform: uppercase;
	padding-left: 20px;
	position: relative;
	font-family: "Oswald", sans-serif;
}
.section-title_0030 h4:after{
	position: absolute;
	left: 0;
	top: -6px;
	height: 32px;
	width: 4px;
	background: #e53637;
	content: "";
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<!-- 전체 영역-->
	<div id="outer_0010">
	   <div class="member_0010">

  		<div class="section-title_0030">
		   <h4>아이디/비밀번호 찾기</h4>
		 </div>
	<div class="member-wrap">
		<div class="col-wrap">
			<!-- col -->
			<div class="col">
				<div class="tab-list">
					<ul>
						<li><a href="userFind.me" title="아이디 찾기 선택">아이디 찾기</a></li>
						<li class="on"><a href="javaScript:void(0);" title="비밀번호 찾기 선택">비밀번호 찾기<!--비밀번호 찾기--></a></li>
					</ul>
				</div>
				<div class="table-wrap">
					<table class="board-form">
						<colgroup><col style="width:130px;"><col></colgroup>
						<br>
						<tbody>
							<tr>
								<th scope="row"><label for="memberId">아이디</label></th>
								<td>
									<input id="memberId" maxlength="20" type="text" placeholder="아이디" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="memberName">이름</label></th>
								<td>
									<input id="memberName" maxlength="20" type="text" placeholder="이름" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="email">이메일</label></th>
								<td>
									<input type="text" id="email" maxlength="40" placeholder="ex) name@example.com" class="input-text w230px">
								<!-- 	<button id="btnSchPwdMbCertNoSend" type="button" class="button gray w75px ml08 disabled" disabled="disabled">인증요청인증요청</button> -->
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<input type=button value="비밀번호 찾기" id="button_0010" onclick="pwdCheck();"> 
			 </div>
			</div>
			  </div>
				</div>
				</div>
	
			</div>
		</div>
		<script>
		function pwdCheck(){
			$.ajax({
				url:"passFind.me",
				type :"post",
				data:{
					memberId : $("#memberId").val(),
					memberName  : $("#memberName").val() ,
					email : $("#email").val()
				},
				success : function(result){
					if(result != ""){
						alert("비밀번호 : "+result +"입니다.");	
					}else{
						alert("입력정보를 정확하게 작성해주세요.");
					}
				},
				error : function(){
					console.log("실패");
				}
			})
		}
		</script>
		
	<jsp:include page="../common/footer.jsp" />
</body>
</html>