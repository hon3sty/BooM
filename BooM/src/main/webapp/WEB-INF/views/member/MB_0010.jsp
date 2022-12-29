<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [회원] 회원가입 : 이지윤 -->
<title>Insert title here</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네이버 회원가입 폼</title>
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

/* .member_0010 input:not(input[type=radio]), .member_0010 select {
    border: 1px solid #e53637;
    padding: 15px;
    width: 100%;
    margin-bottom: 5px;
} */
#button_0010{
    border: 1px solid #e53637;
    padding: 15px;
    margin-top:20px;
    width: 100%;
    margin-bottom: 5px;
    font-weight: bolder;
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
	color: white;
	text-align: center;
	font-size: 11px;
	padding: 16px;
	width: 118px;
	cursor: pointer;
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
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>  
    <div class="member_0010">
    <form action="insert.me" method="post" id="membercheck">
        <!-- 1. 로고 -->
        <img class="logo" src="resources/img/logo.png">
        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디 </b>
            <span class="placehold-text"><input type="text" id="memberId" name="memberId" placeholder="소문자와 숫자 4~12자리"></span>
            <div class="eheck_font" id="id_check"></div>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password" id="memberPwd" name="memberPwd"  maxlength="20" placeholder="4~12자리의  문자, 숫자">
            <div class="eheck_font" id="pw_check"></div>
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password" id="memberPwd2" name="memberPwd2" maxlength="20"  placeholder="비밀번호 재입력">
            <div class="eheck_font" id="pw2_check"></div>
        </div>
        <div class="field">
          	<b>이름</b>
            <input type="text" id="memberName" name="memberName" placeholder="한글 2~7자 이내 ">
            <div class="eheck_font" id="name_check"></div>
        </div>
  		<div class="field">
            <b>생년월일</b>
            <input type="text" id="memberBirth" name="memberBirth" placeholder="ex) 19990101">
            <div class="eheck_font" id="birth_check"></div>
        </div>
        <!-- 5. 이메일 -->
        <div class="field">
            <b>본인 확인 이메일<small>(선택)</small></b>
            <input type="email" placeholder="ex) me@example.com" id="email" name="email">
            <div class="eheck_font" id="email_check"></div>
        </div>
       <!--  <!-- 6. 휴대전화 -->
        <div class="field">
            <b>휴대전화</b>
            <input type="phone" placeholder="(-)없이 번호만 입력" id="phone" name="phone">
            <div class="eheck_font" id="phone_check"></div>
        </div> 
        <div class="field">
            <b>성별</b>
			<div class="ps_box gender_code">
                 <select id="gender" name="gender" class="sel" aria-label="성별">
                       <option value="" selected="">성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                            <option value="U">선택 안함</option>
                 </select>
            </div>
        </div> 
   		  <div class="field">
        	 <b>주소</b>
       			<div class="form-group">                   
				<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="mem_oaddress" id="mem_oaddress" type="text" readonly="readonly" >
    	 	 <button type="button" class="btn-r" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
		  </div>
		  <div class="form-group">
   				<input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="mem_address" id="mem_address" type="text" readonly="readonly" />
		  </div>
		 	    <div class="form-group">
    	 		<input class="form-control" placeholder="상세주소" name="mem_detailaddress" id="mem_detailaddress" type="text"  />
    	 		<input type="hidden" name="address" id="addressText">
		  </div>
		  </div>
        <!-- 6. 가입하기 버튼 -->
       		 <input type="submit" value="가입하기" id="button_0010">
        </form>
 		<script type="text/javascript">
			//모든 공백 체크 정규식
			var empJ = /\s/g;
			//아이디 정규식
			var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
			// 비밀번호 정규식
			var pwJ = /^[A-Za-z0-9]{4,12}$/;
			// 이름 정규식
			var nameJ = /^[가-힣]{2,7}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
			// 이메일 검사 정규식
			var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			// 휴대폰 번호 정규식
			var phoneJ = /^\d{3}-\d{3,4}-\d{4}$/;
				/* /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/; */
			
			/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/

			var birthJ = false;

			var address = $('#mem_detailaddress');

			$(document).ready(function() {
			   var address = $('#mem_detailaddress');
			
			   //아이디 중복확인
			      $("#memberId").blur(function() {
			          if($('#memberId').val()==''){
			             $('#id_check').text('아이디를 입력하세요.');
			             $('#id_check').css('color', '#e53637');                     
			      
			             } else if(idJ.test($('#memberId').val())!=true){
			                $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
			                $('#id_check').css('color', '#e53637');
			             } else if($('#memberId').val()!=''){
			                
			               var memberId=$('#memberId').val();
			                 $.ajax({
			                     async : true,
			                       type : 'POST',
			                      data : memberId,//memberId라는 이름으로 memberId라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다
			                      url : 'idCheck.me',
			                        dateType: 'json',
			                        contentType: "application/json; charset=UTF-8",
			                        success : function(result) {
			
			                        	if(result=="NNNN"){
			                $('#id_check').text('중복된 아이디 입니다.');
			                      $('#id_check').css('color', '#e53637');
			                      $("#membercheck").attr("disabled", true);
			             }else{
			                if(idJ.test(memberId)){
			                   $('#id_check').text('사용가능한 아이디 입니다.');
			                   $('#id_check').css('color', '#219619');
			                   $("#membercheck").attr("disabled", false);
			                }
			                else if(memberId==''){
			                $('#id_check').text('아이디를 입력해주세요.');
			                      $('#id_check').css('color', '#e53637');
			                      $("#membercheck").attr("disabled", true);
			                }
			                else{
			                   $('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
			                   $('#id_check').css('color', '#e53637');
			                   $("#membercheck").attr("disabled", true);
			                }
			             }
			
			           }
			                });//ajax/// 
			             }//else if
			    });//blur
			     $('form').on('submit',function(){
			         var inval_Arr = new Array(8).fill(false);
			         if (idJ.test($('#memberId').val())) {
			            inval_Arr[0] = true;   
			         } else {
			            inval_Arr[0] = false;
			            alert('아이디를 확인하세요.');
			            return false;
			         }
			         // 비밀번호가 같은 경우 && 비밀번호 정규식
			         if (($('#memberPwd').val() == ($('#memberPwd2').val()))
			               && pwJ.test($('#memberPwd').val())) {
			            inval_Arr[1] = true;
			         } else {
			            inval_Arr[1] = false;
			            alert('비밀번호를 확인하세요.');
			            return false;
			         }
			         // 이름 정규식
			         if (nameJ.test($('#memberName').val())) {
			            inval_Arr[2] = true;   
			         } else {
			            inval_Arr[2] = false;
			            alert('이름을 확인하세요.');
			            return false;
			         }
			         // 생년월일 정규식
			          if (birthJ) {
			            console.log(birthJ);
			            inval_Arr[3] = true; 
			         } else {
			            inval_Arr[3] = false;
			            alert('생년월일을 확인하세요.');
			            return false;
			         } 
			         // 이메일 정규식
			         if (mailJ.test($('#email').val())){
			            console.log(phoneJ.test($('#email').val()));
			            inval_Arr[4] = true;
			         } else {
			            inval_Arr[4] = false;
			            alert('이메일을 확인하세요.');
			            return false;
			         }
			         // 휴대폰번호 정규식
			         if (phoneJ.test($('#phone').val())) {
			            console.log(phoneJ.test($('#phone').val()));
			            inval_Arr[5] = true;
			         } else {
			            inval_Arr[5] = false;
			            alert('휴대폰 번호를 확인하세요.');
			            return false;
			         }
			         //성별 확인
			          if(member.gender[0].checked==false&&member.gender[1].checked==false){
			                 inval_Arr[6] = false;
			               alert('성별을 확인하세요.');
			               return false;
			             
			         } else{
			            inval_Arr[6] = true;
			         } 
			   
			         //주소확인
			         if(address.val() == ''){
			            inval_Arr[7] = false;
			            alert('주소를 확인하세요.');
			            return false;
			         }else
			            inval_Arr[7] = true;
			      
			         //전체 유효성 검사
			         var validAll = true;
			         for(var i = 0; i < inval_Arr.length; i++){
			            if(inval_Arr[i] == false){
			               validAll = false;
			            }
			         }
			         if(validAll == true){ // 유효성 모두 통과
			            alert('부귀영화 가입을 축하드립니다!');      
			         } else{
			            alert('입력정보를 다시 확인하세요.')
			         }
			       });
			
			   $('#memberId').blur(function() {
			      if (idJ.test($('#memberId').val())) {
			         console.log('true');
			         $('#id_check').text('');
			      } else {
			         console.log('false');
			         $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
			         $('#id_check').css('color', '#e53637');
			      }
			   });
			   $('#memberPwd').blur(function() {
			      if (pwJ.test($('#memberPwd').val())) {
			         console.log('true');
			         $('#pw_check').text('');
			      } else {
			         console.log('false');
			         $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
			         $('#pw_check').css('color', '#e53637');
			      }
			   });
			
			   //1~2 패스워드 일치 확인
			   $('#memberPwd2').blur(function() {
			      if ($('#memberPwd').val() != $(this).val()) {
			         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
			         $('#pw2_check').css('color', '#e53637');
			      } else {
			         $('#pw2_check').text('');
			      }
			   });
			
			   //이름에 특수문자 들어가지 않도록 설정
			   $("#memberName").blur(function() {
			      if (nameJ.test($(this).val())) {
			         console.log(nameJ.test($(this).val()));
			         $("#name_check").text('');
			      } else {
			         $('#name_check').text('한글 2~4자 이내로 입력하세요.(특수기호,공백 사용 불가)');
			         $('#name_check').css('color', '#e53637');
			      }
			   });
			   $("#email").blur(function() {
			      if (mailJ.test($(this).val())) {
			         $("#email_check").text('');
			      } else {
			         $('#email_check').text('이메일 양식을 확인해주세요.');
			         $('#email_check').css('color', '#e53637');
			      }
			   });
			         // 생일 유효성 검사
			           var birthJ = false;
			           // 생년월일   birthJ 유효성 검사
			           $('#memberBirth').blur(function(){
			              var dateStr = $(this).val();      
			               var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
			               var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
			               var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
			               var today = new Date(); // 날짜 변수 선언
			               var yearNow = today.getFullYear(); // 올해 연도 가져옴
			              
			               if (dateStr.length <=8) {
			                 // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
			                  if (year > yearNow || year < 1900 ){
			                     
			                     $('#birth_check').text('생년월일을 확인해주세요');
			                    $('#birth_check').css('color', '#e53637');
			                  }  
			                  else if (month < 1 || month > 12) {
			                        
			                     $('#birth_check').text('생년월일을 확인해주세요 ');
			                    $('#birth_check').css('color', '#e53637'); 
			                  
			                  }else if (day < 1 || day > 31) {
			                     
			                     $('#birth_check').text('생년월일을 확인해주세요 ');
			                    $('#birth_check').css('color', '#e53637'); 
			                     
			                  }else if ((month==4 || month==6 || month==9 || month==11) && day==31) { 
			                     $('#birth_check').text('생년월일을 확인해주세요 ');
			                    $('#birth_check').css('color', '#e53637'); 
			                  }else if (month == 2) {
			                        var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
			                        
			                      if (day>29 || (day==29 && !isleap)) {
			                         
			                         $('#birth_check').text('생년월일을 확인해주세요 ');
			                       $('#birth_check').css('color', '#e53637'); 
			                     
			                    }else{
			                       $('#birth_check').text('');
			                       birthJ = true;
			                    }
			                  }else{
			                     $('#birth_check').text(''); 
			                    birthJ = true;
			                 }//end of if
			                 }else{
			                    //1.입력된 생년월일이 8자 초과할때 :  auth:false
			                    $('#birth_check').text('생년월일을 확인해주세요 ');
			                    $('#birth_check').css('color', '#e53637');  
			                 }
			              }); //End of method /*
			 
			              // 휴대전화
			              $('#phone').blur(function(){
			                 if(phoneJ.test($(this).val())){
			                    console.log(nameJ.test($(this).val()));
			                    $("#phone_check").text('');
			                 } else {
			                    $('#phone_check').text('휴대폰번호를 확인해주세요 ');
			                    $('#phone_check').css('color', '#e53637');
			                 }
			              });
					});
			//우편번호 찾기 버튼 클릭시 발생 이벤트
			var themeObj = {
			            		   bgColor: "#E53637", //바탕 배경색
			            		   searchBgColor: "#E53637", //검색창 배경색
			            		   //contentBgColor: "", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
			            		   //pageBgColor: "", //페이지 배경색
			            		   //textColor: "", //기본 글자색
			            		   queryTextColor: "#FFFFFF", //검색창 글자색
			            		   //postcodeTextColor: "", //우편번호 글자색
			            		   //emphTextColor: "", //강조 글자색
			            		   outlineColor: "#E53637" //테두리
			            		};
			function execPostCode() {
			     new daum.Postcode({
			         oncomplete: function(data) {
			            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
			            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
			            
			            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                extraRoadAddr += data.bname;
			            }
			            // 건물명이 있고, 공동주택일 경우 추가한다.
			            if(data.buildingName !== '' && data.apartment === 'Y'){
			               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			            }
			            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			            if(extraRoadAddr !== ''){
			                extraRoadAddr = ' (' + extraRoadAddr + ')';
			            }
			            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			            if(fullRoadAddr !== ''){
			                fullRoadAddr += extraRoadAddr;
			            }
			
			            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			            console.log(data.zonecode);
			            console.log(fullRoadAddr);
			         /* var a = console.log(data.zonecode);
			            var b = console.log(fullRoadAddr);
			            
			            if(a == null || b = null){
			               alert("주소를 확인하세요.");
			               return false;
			            }   */
    
			            $("[name=mem_oaddress]").val(data.zonecode);
			            $("[name=mem_address]").val(fullRoadAddr);
			            
			            document.getElementById('mem_oaddress').value = data.zonecode; //5자리 새우편번호 사용
			            document.getElementById('mem_address').value = fullRoadAddr;
						$("#addressText").val(data.zonecode + fullRoadAddr);
			          //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
			        },
			     	theme : themeObj
			     }).open();
			 }
		</script>      
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>