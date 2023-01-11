<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [게시판 : 고객센터] FAQ : 이지은 -->
<title>자주하는 질문</title>
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
}
.board-list-util .result-count {
    position: relative;
    float: left;
    margin: 0;
    line-height: 1.1;
    vertical-align: top;
}
.board-list-util select {
    display: inline-block;
    vertical-align: middle;
    width: 150px;
    height: 33px;
    border: 1px solid #d8d9db;
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
/*아코디언 css 시작*/
.card{
	background-color:rgba(255, 255, 255, 0.2);
}
.card-body{
	background-color:#fff;
}
/*아코디언 css 끝*/
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
					                <h5><a href="noticeList.bo">공지사항</a></h5>
					            </div>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="faqListForm.bo" style="color:#e53637;">자주하는 질문</a></h5>
					            </div>
					        </div>
<!-- 					        <div class="product__sidebar__comment__item"> -->
<!-- 					            <div class="product__sidebar__comment__item__pic"> -->
<!-- 					            </div> -->
<!-- 					            <div class="product__sidebar__comment__item__text"> -->
<!-- 					                <h5><a href="#">1:1 문의</a></h5> -->
<!-- 					            </div> -->
<!-- 					        </div> -->
<!-- 					        <div class="product__sidebar__comment__item"> -->
<!-- 					            <div class="product__sidebar__comment__item__pic"> -->
<!-- 					            </div> -->
<!-- 					            <div class="product__sidebar__comment__item__text"> -->
<!-- 					                <h5><a href="#">분실물 문의</a></h5> -->
<!-- 					            </div> -->
<!-- 					        </div> -->
					    </div>
					</div>
				</div>
				<!-- 사이드바 끝 -->
				
				<!-- 리스트 영역 시작 -->
				<div id="ntc1">
					<h2 class="tit">자주하는 질문</h2>
						<div id="ntc2">
						<!-- 검색창 시작 -->
<!-- 					    <div class="search_box" id="search_box"> -->
<!-- 							<input id="searchtext" type="text" title="검색어 입력" placeholder="검색어를 입력해 주세요."> -->
<!-- 							<button type="button" class="btn_search" title="검색하기" id="btn_search"></button> -->
<!-- 					   	</div> -->
				   		<!-- 검색창 끝 -->
							<div class="board-list-util">
							<div class="anime__details__episodes">
	                        <a href="faqList.bo?bCategoryNo=0">전체</a>
	                        <a href="faqList.bo?bCategoryNo=10">영화예매</a>
	                        <a href="faqList.bo?bCategoryNo=20">결제/환불</a>
	                        <a href="faqList.bo?bCategoryNo=30">극장</a>
	                        <a href="faqList.bo?bCategoryNo=40">스토어</a><br>
	                        <a href="faqList.bo?bCategoryNo=50">특별관</a>
	                        <a href="faqList.bo?bCategoryNo=60">VIP</a>
	                        <a href="faqList.bo?bCategoryNo=70">멤버십</a>
	                        <a href="faqList.bo?bCategoryNo=80">관람권</a>
	                    </div>
<%-- 								<p class="result-count" style="color:#fff"><strong>전체 <em class="font-gblue">${pi.listCount }</em>건</strong></p> --%>
<!-- 									&nbsp;&nbsp;&nbsp; -->
<%-- 								<c:if test="${not empty loginUser and loginUser.memberId eq 'admin'}"> --%>
<!-- 									<input type="checkbox" id="selectall" name="selectall" onclick="selectAll(this)"> -->
<%-- 								</c:if> --%>
							</div>
							<br>
							<div class="table-wrap">
							 	<div class="container" style="padding-top:20px; padding-left:0px;">
								<br>
							  <div id="accordion"> 
							    <div class="card" style="background-color:rgba(255, 255, 255, 0.2);">
							    <form id="form" method="post">
						        <input type="hidden" id="arrayParam" name="arrayParam"/>
							    <c:forEach var="b" items="${list }">
							      <div class="card-header">
							      <c:if test="${not empty loginUser and loginUser.memberId eq 'admin'}">
							      <div>
							      	<input type="checkbox" class="del" id="ckbox" name="RowCheck" value="${b.boardNo }" onclick="checkSelectAll()">
							      </div>
							      </c:if>
							        <a class="card-link" data-toggle="collapse">
							          ${b.boardTitle}
							        </a>
							      </div>
							      <div id="collapseOne" class="collapse" data-parent="#accordion">
							        <div class="card-body" style="color:black;">
							         ${b.boardContent }
							        </div>
							      </div>
							      </c:forEach>
							      </form>
							    </div>
							  </div>
							</div>
							</div>
							<br>
							
							<!-- 페이징 영역 시작 -->
<!-- 							<div class="product__pagination" style="padding-top:20px; padding-left:160px;"> -->
<%-- 								<a href="noticeList.bo?currentPage=${pi.startPage}"><i class="fa fa-angle-double-left"></i></a> --%>
<!-- 									currentPage가 1이면 숨기기 -->
<%-- 									<c:if test="${pi.currentPage ne 1}"> --%>
<%-- 										<a href="noticeList.bo?currentPage=${pi.currentPage-1}">&lt</a> --%>
<%-- 									</c:if> --%>
<%-- 									<c:forEach begin="${pi.startPage}" end="${pi.endPage}" var="p"> --%>
<%-- 										<c:choose> --%>
<%-- 			              					<c:when test="${pi.currentPage eq p }"> --%>
<%-- 			                        			<a href="noticeList.bo?currentPage=${p}" class="current-page">${p}</a> --%>
<%-- 			                        		</c:when> --%>
<%-- 			                        		<c:otherwise> --%>
<%-- 			                        			<a href="noticeList.bo?currentPage=${p}">${p}</a> --%>
<%-- 			                        		</c:otherwise> --%>
<%-- 			                        	</c:choose> --%>
<%-- 									</c:forEach> --%>
<!-- 		                        	currentPage가 maxPage와 일치하면 숨기기 -->
<%-- 		                        	<c:if test="${pi.currentPage ne pi.maxPage}"> --%>
<%-- 		                        		<a href="noticeList.bo?currentPage=${pi.currentPage+1}">&gt</a> --%>
<%-- 		                        	</c:if> --%>
<%-- 	                        	<a href="noticeList.bo?currentPage=${pi.endPage }"><i class="fa fa-angle-double-right"></i></a> --%>
<!--                     		</div> -->
                    		<!-- 페이징 영역 끝 -->
                    		<!-- 관리자 로그인 시 등록,수정,삭제 버튼 보이게 함 -->
                    		<c:if test="${not empty loginUser and loginUser.memberId eq 'admin'}">
                    			<div class="anime__details__btn"  style="text-align:center; cursor:pointer;">
	                               <a href="faqInsert.bo" class="follow-btn">등록</a>
	                               <a href="javascript:void(0);" id="updateBtn" class="follow-btn" onclick="return updateClick()">수정</a>
	                               <a href="" id="deleteBtn" class="follow-btn" onclick="deleteClick()">삭제</a>
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

<!-- 푸터  include 영역 시작-->
<jsp:include page="../common/footer.jsp"/>
<!-- 푸터  include 영역 끝-->

	<script>
	
	   //아코디언
       $(function(){
           $(".card-header").click(function(){

               var $answer = $(this).next();

               if($answer.css("display")=="none"){//p태그의 display가 none일때
                  
               	$answer.slideDown();
               }else{
               	
                   $answer.slideUp();
               }
           })
       })
        
		

		//체크박스 하나라도 선택해제 될 경우 전체 선택 해제 + 하나씩 전체 선택하면 자동 전체 체크박스 선택
		function checkSelectAll()  {
		  // 전체 체크박스
		  const checkboxes = document.querySelectorAll('input[name="RowCheck"]');
		  // 선택된 체크박스
		  const checked = document.querySelectorAll('input[name="RowCheck"]:checked');
		  // select all 체크박스
		  const selectAll = document.querySelector('input[name="selectall"]');
		  
		  if(checkboxes.length === checked.length)  {
		    selectAll.checked = true;
		  }else {
		    selectAll.checked = false;
		  }
		  
		}

		//체크박스 전체 선택
		function selectAll(selectAll)  {
			  const checkboxes = document.getElementsByName('RowCheck');
			  
			  checkboxes.forEach((checkbox) => {
			    checkbox.checked = selectAll.checked
			  })
			}
        

		//수정
		function updateClick(){
     		//체크된 게시글의 숫자
        let count=$("input:checkbox[name='RowCheck']:checked").length;
     		
     	var bno=$("input:checkbox[name='RowCheck']:checked").val();
     	
     	if(count==0){ //체크박스 선택하지 않으면 수정버튼작동x 수정폼으로 넘어가지 않게함
     	    alert("수정할 게시글을 선택해주세요.");
     		return false;
     	}else{
      	   if(count>=2){ //체크박스 2개를 선택했을시에 1개만 선택하도록 알람
      		  $(this).prop("checked",false);
      		  alert("수정은 게시글 1개까지만 선택할 수 있습니다.");
      	   }else{ // 체크박스 하나만 선택했을시에 업데이트 폼으로 보냄 (정상작동)
      		   console.log(count);
      		   console.log(bno);
      		location.href="faqUpdateForm.bo?bno="+bno;
      	   }
     	}
      	   
        }
       
        //버튼 누르면 선택삭제 스크립트 (여러개의 게시글 번호를 가지고 간다.) 
         function deleteClick(){
        	  
        	 var checkBoxArr=[]; //선택한 체크박스값 넣어줄 배열
        	 
        	 //console.log($("input:checkbox[name='ckbox']:checked")); //Object
        	 
        	 $("input:checkbox[name='RowCheck']:checked").each(function(){
        		 checkBoxArr.push($(this).val());
        		 //var bno=$("input[name=ckbox]:checked").val();
        		 console.log("asd"+checkBoxArr); 
              	});
        	 
        	 
        	 $.ajax({
           		
               	url:"faqDelete.bo",
               	type:"post",
               	traditional:true,
               	data:{
               		"bno":checkBoxArr
               	},
               	dataType:"json",
               	success:function(result){
               		console.log("통신성공");
               	},
               	error:function(){
               	console.log("통신실패");
               	}
         	 })
        	
          }
        

    </script>
</body>
</html>