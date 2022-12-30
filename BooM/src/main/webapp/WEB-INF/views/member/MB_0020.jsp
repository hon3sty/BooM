<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [회원] 로그인 : 이지윤 -->
<title>Insert title here</title>
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
#login__social {
	padding-top: 52px;
}
#login__social__links {
	text-align: center;
}
#login__social__links h4{
	margin-bottom: 30px;
	margin-right : 280px;
	color : white;
	font-weight: 700;
}
#login__social__links span {
	color: #ffffff;
	display: block;
	font-size: 13px;
	font-weight: 700;
	letter-spacing: 2px;
	text-transform: uppercase;
	margin-bottom: 30px;
}
#login__social__links ul li {
	list-style: none;
	margin-bottom: 15px;
}
#login__social__links ul li:last-child {
	margin-bottom: 0;
}
#login__social__links ul li a {
	color: #ffffff;
	display: block;
	font-size: 13px;
	font-weight: 700;
	letter-spacing: 2px;
	text-transform: uppercase;
	width: 400px;
	padding: 14px 0;
	position: relative;
	margin: 0 auto;
}
#login__social__links ul li a.facebook {
	background: #4267b2;
}
#login__social__links ul li a.google {
	background: #ff4343;
}
#login__social__links ul li a.twitter {
	background: #1da1f2;
}
#login__social__links ul li a i {
	font-size: 18px;
	position: absolute;
	left: 32px;
	top: 14px;
}
.login {
	padding-top: 30px;
	padding-bottom: 65px;
}
.login__form {
	position: relative;
	padding-left: 65px !important; 
}
.login__form:after {
	position: absolute;
    right: -14px;
	top: -40px;
	height: 330px;
	width: 1px;
	background: rgba(255, 255, 255, 0.2);
	content: "";
}
.login__form h3 {
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
}
.login__form form .input__item {
	position: relative;
	width: 400px !important;
	margin-bottom: 20px;
}
.login__form form .input__item:before {
	position: absolute;
	left: 50px;
	top: 10px;
	height: 30px;
	width: 1px;
	background: #b7b7b7;
	content: "";
}
.login__form form .input__item input {
	height: 50px;
	width: 400px;
	font-size: 15px;
	color: #b7b7b7;
	background: #ffffff;
	border: none;
	padding-left: 76px;
}
.login__form form .input__item input::-webkit-input-placeholder {
	color: #b7b7b7;
}
.login__form form .input__item input::-moz-placeholder {
	color: #b7b7b7;
}
.login__form form .input__item input:-ms-input-placeholder {
	color: #b7b7b7;
}
.login__form form .input__item input::-ms-input-placeholder {
	color: #b7b7b7;
}
.login__form form .input__item input::placeholder {
	color: #b7b7b7;
}
.login__form form .input__item span {
	color: #b7b7b7;
	font-size: 20px;
	position: absolute;
	left: 15px;
	top: 13px;
}
.login__form form button {
	border-radius: 0;
	margin-top: 10px;
}
.login__form .forget_pass {
	font-size: 15px;
	color: #ffffff;
	display: inline-block;
/* 	position: absolute; */
	right: 80px;
	bottom: 12px;
}
.forget_pass {
    margin-right: 30px !important;
}
.forget_pass1 {
    margin-left: 10px !important;
}
.login__register {
	padding-right: 30px;
}
.login__register h3 {
	color: #ffffff;
	font-weight: 700;
	font-family: "Oswald", sans-serif;
	margin-bottom: 30px;
}
.login__register .primary-btn {
	background: #e53637;
	padding: 12px 42px;
}
.login__form .forget_pass1 {
	font-size: 15px;
	color: #ffffff;
	display: inline-block;
/* 	position: absolute; */
	right: 80px;
	bottom: 12px;
}
.slide1{
	padding-top: 220px;
}
.spad{
    padding-top: 220px !important;
    padding-bottom: 0px !important;
}
div.input__item i{
    position: absolute;
    left: 90%;
    top: 18px;
    color: #d84040d1 !important;
}
div.input__item{
    position: relative;
}
div.input__item input{
    width: 300px;
    height: 30px;
    background-color: black;
    border: 0;
    color: white;
    text-indent: 10px;
}
.fa-eye:before {
    content: "\f06e";
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
   <!-- Normal Breadcrumb Begin -->
      <section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">  
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
						<img class="slide1" src="resources/img/common/SW_1.jpg">
						<img class="slide1" src="resources/img/common/boo.jpg" >
						<img class="slide1" src="resources/img/common/AA.jpg">
						<img class="slide1" src="resources/img/common/AA_1.jpg">
                    </div>
                </div>
            </div>
        </div>
    </section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2></h2>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->
    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>로그인</h3>
                        <form action="login.me" method="post">
                        <div class="input__item">
                                <input type="text" placeholder="아이디를 입력해주세요" id="memberId" name="memberId">
                                <span class="icon_profile"></span>
                        </div>
                        <div class="input__item">
                                <input type="password" placeholder="비밀번호를 입력해주세요" id="memberPwd" name="memberPwd">
                                <i class="fa fa-eye fa-lg"></i>
                                <span class="icon_lock"></span>
                        </div> 
                            <button type="submit" class="site-btn">login</button>
                           <span><a href="#" class="forget_pass1"><img src="resources/img/common/keyy.png" id="header__logo2"> 아이디 | 비밀번호 찾기</a></span> 
                           <span id="login__0010"><a href="insert.me" class="forget_pass"><img src="resources/img/common/user-a.png" id="header__logo2"> 회원가입</a></span>                
                        </form>
                    </div> 
                </div>
                <div class="col-lg-6">
                    <div id="login__social__links">
                        <h4>Login With</h4>
                        <ul>
                            <li><a href="https://www.facebook.com/" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
                            </li>
                            <li><a href="https://www.google.com/" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                            <li><a href="https://twitter.com/" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
 </section>
 <script>
    var index = 0;   //이미지에 접근하는 인덱스
    window.onload = function(){
        slideShow();
    }
    
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("slide1");  //slide1에 대한 dom 참조
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
    }
    index++;
    if (index > x.length) {
        index = 1;  //인덱스가 초과되면 1로 변경
    }   
    x[index-1].style.display = "block";  //해당 인덱스는 block으로
    setTimeout(slideShow, 4000);   //함수를 4초마다 호출
}

    $(document).ready(function(){
        $('.input__item i').on('click',function(){
            $('input').toggleClass('active');
            if($('input').hasClass('active')){
                $(this).attr('class',"fa fa-eye-slash fa-lg")
                .prev('input').attr('type',"text");
            }else{
                $(this).attr('class',"fa fa-eye fa-lg")
                .prev('input').attr('type','password');
            }
        });
    });
</script>
<body>
<div>
</div>
<!-- Login Section End -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>