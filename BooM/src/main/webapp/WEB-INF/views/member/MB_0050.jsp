<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [회원] 회원 탈퇴 : 이지윤 -->
<title>Insert title here</title> <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네이버 회원가입 폼</title>
    <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="./quiz07.css">  
<style>
/* Google web font CDN*/
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');

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
    width: 38%;
    margin-bottom: 5px;
    height: 50px;
    border-radius: 5px;
    margin-left: 145px;
}
.member_0010 input[type=button],
.member_0010 input[type=submit]{
	background-color: #e53637;
	color:#fff;
}
.member_0010 input:focus, .member_0010 select:focus{
    border: 1px solid #2db400;
}
#button_0010{
    border: 1px solid #e53637;
    padding: 15px;
    margin-top:20px;
    width: 38%;
    margin-bottom: 5px;
    font-weight: bolder;
}
.member_0010 input[type=submit]:hover{
	background-color: #b42728;
	color:#fff;
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
#outer_0010{ 
   display: flex; 
   justify-content: center; 
}
#menubar{
    padding-right: 120px !important;
}
.member_0010 {
    width: 850px;
    margin-left: 0px;
    padding: 0px 20px;
    margin-right: 50px;
}
#button_0010{
    border: 1px solid #e53637;
    padding: 15px;
    width: 38%;
    margin-bottom: 5px;
    height: 50px;
    border-radius: 5px;
    margin-left: 145px;
}
#button_0010:hover{
    border: 1px solid #e53637;
    padding: 15px;
    width: 38%;
    margin-bottom: 5px;
    height: 50px;
    border-radius: 5px;
    margin-left: 145px;
}
#mm{
	color:white;
	font-size:13px;
}       
div h5{
	color:white;
	font-weight: bolder;

}
li,.reason{
	color:white;
	font-size:13px;
}
</style>
</head>

<body>
<jsp:include page="../common/header.jsp"/>
<body>
	<!-- 전체 영역-->
	<div id="outer_0010">
	<jsp:include page="../common/menu.jsp"/>	
	   <div class="member_0010">
    
        <!-- 1. 로고 -->
	   <div class="section-title">
	   <h4>회원 탈퇴</h4></div>
	  
	 <p id="mm">
	   회원 탈퇴를 하면 서비스를 더 이상 이용하실 수 없습니다.회원 탈퇴를 진행하시겠습니까?<br>
	[주의] 회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
	<br>
	<h5>1. 30일간 회원 재가입이 불가능합니다.</h5>
    <pre id="mm"> <br> 회원 탈퇴 후, 30일 경과 후 재가입할 수 있습니다.</pre>
    <br>
	<h5>2. 탈퇴 후 삭제 내역</h5>
   	<p>
        <li>(회원 탈퇴하시면 회원정보와 개인 보유 포인트 등 정보가 삭제되며 데이터는 복구되지 않습니다.)</li>
        <li>부귀영화 멤버십 포인트 및 적립/차감 내역</li>
        <li>관람권 및 쿠폰</li>
        <li>영화 관람 내역</li>
        <li>간편 로그인 연동 정보</li>
    </p>
		<br>
			<br>
	
	<div id="pass">
	<form action="delete.me" method="post" onSubmit="return checkPwd();">
		<!-- 아이디 가져가기 -->
		<input type="hidden" name="memberId" value='${loginUser.memberId}'>
		
		<div>
			<input type="password" id="password" placeholder="현재 비밀번호 입력" required/>
		</div>
		<div>
			<input type="submit" value="탈퇴하기" id="button_0010">
		</div>	
	</form>
	</div>
	    </div>
	<script>
		function checkPwd(){
			if($("#password").val() == ${loginUser.memberPwd}){
				return true;
			}else{
				alert("비밀번호가 다릅니다.");
				return false;
			}
		}
	</script>

<!--pd영역 끝-->
</div>
</div>
</div>
<!--전체영역 끝--> 
<jsp:include page="../common/footer.jsp"/>
</body>
</html>