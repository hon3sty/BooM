<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [회원] 회원정보 변경 : 이지윤 -->
<title>Insert title here</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="./quiz07.css">  
<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>    
<style>
/* Google web font CDN*/
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
*{
    box-sizing: border-box; /*전체에 박스사이징*/
    outline: none; /*focus 했을때 테두리 나오게 */
}
body{
    font-family: 'Noto Sans KR', sans-serif;
    font-size:14px;
    background-color: #f5f6f7;
    line-height: 1.5em;
    color : #222;
    margin: 0;
}
a{
    text-decoration: none;
    color: #222;
}
.member_0010{
    width: 450px;
    margin: auto;
    padding: 0px 20px;
    padding-top:40px;
}
.member_0010 .logo{
    display: block;
    margin :50px auto;
}
 .member_0010 .field{
    margin :10px 0;
} 
.member_0010 b{
    display: block;
    margin-bottom: 5px;
}
.member_0010 input:not(input[type=radio]),.member_0010 select{
    border: 1px solid #dadada;
    padding: 15px;
    width: 100%;
    margin-bottom: 5px;
    height: 50px;
    border-radius: 5px;
}
.member_0010 input[type=button],
.member_0010 input[type=submit]{
background-color: #e53637;
color:#fff;
}
.member_0010 input:focus, .member_0010 select:focus{
    border: 1px solid #2db400;
}
.field.birth div{ 
    display: flex;
    gap:10px;
}
.field.tel-number div {
    display: flex;
}
.field.tel-number div input:nth-child(1){
    flex:2;
}
.field.tel-number div input:nth-child(2){
    flex:1;
}
.field.gender div{
    border: 1px solid #dadada; 
    padding: 15px 5px;
    background-color: #fff;  
}
.placehold-text{
    display: block; 
    position:relative;
}
.placehold-text:before{ 
   /*  content : "@naver.com"; */
    position:absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
    right : 20px;
    top:13px;
    pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}
.userpw{
    background:url(./images/images2/icon-01.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}
.userpw-confirm{
    background:url(./images/images2/icon-02.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}
@media (max-width:768px) {
    .member_0010{
        width: 100%;
    }
}
.field b{
	color :white;
    margin-bottom: 7px;
}
#button_0010{
    border: 1px solid #e53637;
    padding: 15px;
    margin-top:20px;
    width: 49%;
    margin-bottom: 5px;
    font-weight: bolder;
}
#button_0010:hover{
    border: 1px solid #b42728;
    padding: 15px;
    margin-top:20px;
    width: 49%;
    margin-bottom: 5px;
    font-weight: bolder;
}
.member_0010 input[type=reset]{
	background-color: #ffffff;
	color:black;
}
.member_0010 input[type=reset]:hover{
	background-color: #ffffffc4;
	color:black;
}
.member_0010 input[type=submit]:hover{
	background-color: #b42728;
	color:#fff;
}
#gender{
	font-size:12px;
}
#gender label{
	margin-right:20px;
}
.field input{
	font-size:12px;
}
.eheck_font{
	font-size:10px;
}
.field{
	margin-bottom : 20px;
}
.btn-r a {
	text-decoration: none;
	color: black;
}
.btn-r {
	display: inline-block;
	border-radius: 5px;
	background-color: #e53637;
	border: none;
	color: white !important;
	text-align: center;
	font-size: 11px;
	padding: 16px;
	width: 118px;
	cursor: pointer;
	font-weight: bolder;
}
.btn-r span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
	font-size: 14px;
}
.btn-r span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}
.btn-r:hover span {
	padding-right: 25px;
	color: black;
}
.btn-r:hover span:after {
	opacity: 1;
	right: 0;
}
#outer_0010{ 
   display: flex; 
   justify-content: center; 
}
#my_1 {
	width: 1020px;
	display: flex;
	height : auto;
}
.content {
    background-color:rgb(247, 245, 245);
    width:80%;
    margin:auto;
    }
.innerOuter {
    border:1px solid lightgray;
    width:80%;
    margin:auto;
    padding:5% 10%;
    background-color:white;
    }   
#menubar{
    padding-right: 120px !important;
    }
.member_0010 {
    width: 450px;
    margin-left: 100px;
    padding: 0px 20px;
    /*    padding-top: 40px; */
    margin-right: 350px;
}
.btn-rr a {
	text-decoration: none;
	/*밑줄 없애기*/
	color: black;
}
.btn-rr {
	border-radius: 5px;
    background-color: #e53637;
    border: none;
    color: white !important;
    text-align: center;
    font-size: 2px !important;
    padding: 5px;
    width: 100px;
    transition: all 0.5s;
    margin-left: 310px;
    margin-top: -50px;
}

.btn-rr span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
	font-size: 14px;
}
.btn-rr span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}
.btn-rr:hover span {
	padding-right: 25px;
	color: black;
}
.btn-rr:hover span:after {
	opacity: 1;
	right: 0;
}
#btn_40{
	color: white !important;
	font-weight: bolder;
}
	</style>
</head>
<body>
<jsp:include page="../common/header.jsp" />
	<!-- 전체 영역-->
	<div id="outer_0010">
	<jsp:include page="../common/menu.jsp"/>	
	   <div class="member_0010">
	   
    <form action="update.me" method="post" id="membercheck" onSubmit="return pwdCheck();">
        <!-- 1. 로고 -->
	   <div class="section-title">
	   <h4>회원정보 변경</h4>
	<br>  
 	</div>
        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디 </b>
            <span class="placehold-text"><input type="text" id="memberId"  value="${loginUser.memberId}" name="memberId" readonly></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" id="memberPwd" name="memberPwd"  maxlength="20" value="${loginUser.memberPwd}" required>
            <div class="eheck_font" id="pw_check"></div>
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password" id="memberPwd2" name="memberPwd2" maxlength="20"  placeholder="비밀번호 재입력" required>
            <div class="eheck_font" id="pw2_check"></div>
        </div>
        <div class="field">
          	<b>이름</b>
            <input type="text" id="memberName" name="memberName" value="${loginUser.memberName}" required>
            <div class="eheck_font" id="name_check"></div>
        </div>
       <!--  <!-- 6. 휴대전화 -->
        <div class="field">
            <b>휴대전화</b>
            <input type="phone" id="phone" name="phone" value="${loginUser.phone}" required>
            <div class="eheck_font" id="phone_check"></div>
        </div> 
        <!-- 5. 이메일 -->
        <div class="field">
            <b>이메일</b>
            <input type="email" id="email" name="email" value="${loginUser.email}" required>
            <div class="eheck_font" id="email_check"></div>
        </div>
  		<div class="field">
            <b>생년월일</b>
            <input type="text" id="memberBirth" name="memberBirth" value="${loginUser.memberBirth}" required>
            <div class="eheck_font" id="birth_check"></div>
        </div>
        <!-- 6.수정하기 버튼 -->
			<input type=reset value="다시 입력" id="button_0010">
       		<input type=submit value="변경하기" id="button_0010"> 
        </form>
 		<script>
 			
 		//비빔번호 다를경우 막음
 		function pwdCheck(){
 			if($("#memberPwd").val()==$("#memberPwd2").val()){
 				return true;
 			}else{
 				alert("비밀번호를 다시 확인해주세요");
 				return false;
 			}
 		}
		</script>      
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</div>
	</div>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>