<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      

<jsp:useBean id="now" class="java.util.Date" />

<!DOCTYPE html>
<html>
<head>

<!-- [영화] 영화예매상세페이지 : 박연-->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>예매 상세</title>
<style>
.blog-details{
    padding-top : 0px !important; 
}
.row d-flex justify-content-center{
	margin-left:100px;	
}        
.col-lg-8_1{
	width : 800px;
}
#menubar {
    padding-right: 100px !important; 
}
#outer_0010 {
    display: flex;
    justify-content: center;
    padding-top: 80px;
    margin-left: -110px;
}
.blog__details__title{
	border : 2px solid red
}
	table {
            border-collapse: collapse;
         }

         caption {
            display: none;
         }

         a {
            text-decoration: none;
            color: inherit;
         }

         .board_list_wrap {
            padding: 50px;
            width: 1500px;
         }

         .board_list {
            width: 100%;
            border-top: 2px solid red;
         }

         .board_list tr {
            border-bottom: 1px solid #ccc;
         }

         .board_list th,
         .board_list td {
            padding: 10px;
            font-size: 14px;
         }

         .board_list .tit {
            text-align: left;
         }

         .board_list .tit:hover {
            text-decoration: underline;
         }

         /* .board_list_wrap{
            background-color: white;
         } */
         .board_list_wrap .paging {
            margin-top: 20px;
            text-align: center;
            font-size: 0;
         }
         .board_list_wrap .paging a {
            display: inline-block;
            margin-left: 10px;
            padding: 5px 10px;
            border-radius: 100px;
            font-size: 12px;
         }
         .board_list_wrap .paging a:first-child {
            margin-left: 0;
         }

         .board_list_wrap .paging a.bt {
            border: 1px solid #eee;
            background: #eee;
         }

         .board_list_wrap .paging a.num {
            border: 1px solid green;
            font-weight: 600;
            color: green;
         }

         .board_list_wrap .paging a.num.on {
            background: green;
            color: #fff;
         }

         .paging{
            color: black;
         }
         .board_list .num,
         .board_list .check {
		       width: 10%;
		   }
		    
		   .board_list .title {
		      width: 55%;
		      text-align: left;
		      padding-left: 50px;
		   }
         .board_list .date {
		      width: 15%;
		   }
</style>
</head>
  
	<body class="goto-here">
	
	<jsp:include page="../common/header.jsp"/> 
	<!-- 전체 영역-->	
	<div id="outer_0010">
		<!--메뉴바 -->
	<jsp:include page="../common/menu.jsp"/>
 
  <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8_1">
                     <div class="section-title">
                         <h5>예매상세내역</h5>
                     </div>
                    
                    <div class="blog__details__title">
                    <br>
                        <div class="col-lg-12">
                    		<div class="blog__details__pic">
								<!-- 영화 예매정보 테이블 영역 -->
		                        <div class="detailTable-area">
									<table align="center" style="color:white;">
                            			<tbody>
                                			<tr>
                                    			<th rowspan="9">
                                      			<img src="${ts.mvImg }" alt="" style="width:250px;"></th>
		                                    	<th>&nbsp; 예매번호 : </th>
        		                            	<td>${ts.tkNo }</td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp;영화 : </th>
                                    			<td>${ts.mvNo }</td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 극장 : </th>
                                    			<td>${tdList[0].mpName }&nbsp; ${ts.theaterNo }</td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 관람일시: </th>
                                    			<td> ${ts.openDate }</td>
                                    			
                                   			</tr>
                                			<tr>
                                    			<th>&nbsp; 시작시간: </th>
                                    			<td> ${ts.timeNo }</td>
                                			</tr>
                                			
                                			<tr>
                                    			<th>&nbsp; 인원 : </th>
                                    			<td> 총 ${fn:length(tdList) }명 </td>
                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 좌석 : </th>
                                    			<td>
                                    			 <c:forEach var="td" items="${tdList }">
                                    			   ${td.tkSeatNo }&nbsp; 
                                    			 
                                    			 </c:forEach>
                                    			
                                    			</td>

                                			</tr>
                                			<tr>
                                    			<th>&nbsp; 총 결제금액 : </th>
                                    			<td><fmt:formatNumber value="${ts.totalPrice }"/>원</td>
			                                </tr>
            			                    <tr>
			                                    <th>&nbsp; 결제수단 : </th>
            			                        <td>${ts.mvPay }</td>
			                                </tr>
            			                </tbody>
                        			</table>
								</div>
                       		</div>
                    	</div>
                	</div>
                	   
                    <div class="blog__details__title">
                    <br>
                        <div class="col-lg-12">
                    		<div class="blog__details__pic">
								<!-- 영화 예매정보 테이블 영역 -->
							 
		                        <div class="detailTable-area">
									<c:choose>
									 <c:when test="${ts.fieltkCancled eq '예매취소'}">
									   
									 </c:when>
									 <c:when test="${ts.openDate < now or ts.openDate == now}">
									  
									 </c:when>
									 <c:otherwise>
									  <button class="btn btn-danger" id="tkDelBtn" type="submit" style="float:right; margin-bottom:5px;">선택취소</button>
									 </c:otherwise>
									
									</c:choose>
									
									
									<table class="board_list" style="color:white;">
					                  	<thead>
											<tr>
					                         <c:choose>
												 <c:when test="${ts.fieltkCancled eq '예매취소'}">
												   <th class="check"></th>
												 </c:when>
												 <c:when test="${ts.openDate < now or ts.openDate == now}">
									               <th class="check"></th>
									              </c:when>
												 <c:otherwise>
												   <th class="check"><input type="checkbox" onclick="selectAll(this);"></th>
												 </c:otherwise>
									 
									          </c:choose>   
					                           
					                            
					                            <th class="num">좌석등급</th>
					                            <th>좌석번호</th>
					                            <th>가격</th>
												<th>상태</th>
					                        </tr>
					                    </thead>
										<tbody>
											
											<c:forEach var="td" items="${tdList }">
											<!-- 값뿌리는 곳 1개 시작-->
											<tr>
					                        	
					                        <c:choose>
					                          <c:when test="${td.status eq '취소'}">
					                           <td class="check"></td>
					                          </c:when>
					                          <c:when test="${ts.openDate < now or ts.openDate == now}">
									            <td class="check"></td>
									            </c:when>
					                          <c:otherwise>
					                            <td class="check">
					                        	<input type="checkbox" name="mvNo" value="${td.tkDetailNo }"></td>
					                          </c:otherwise>
					                        </c:choose>	
					                        	
					                        	<td class="num">${td.tkCode }</td>
					                        	<td>
					                            	${td.tkSeatNo }
					                        	</td>
					                        	<td>
					                        		<fmt:formatNumber value="${td.tkPrice }"/> 원
					                        	</td>
					                        
					                        	<td>
					                        		${td.status }
					                        	</td>
											</tr>
											<!-- 값뿌리는 곳 1개 끝-->
											</c:forEach>
										</tbody>
									</table>
			                	</div>
			                
                			</div>
                		</div>
                    </div>
					<!-- 예매내역, 홈으로 버튼 영역 -->
       		        <div class="blog__details__social" align="center">
						<a href="myTicketList.mv" type="button" class="btn btn-danger">예매내역 보기</a>
						<a href="index.jsp" type="button" class="btn btn-primary"> Home</a>
					</div>
                </div>
            </div>
		</section>
	</div>
	      <!-- Blog Details Section End -->
	      
	      <!-- 푸터바 -->
	      <jsp:include page="../common/footer.jsp"/>
	     
	<script>
	var obj;
	var mvNoArray1 = new Array();
	
	//체크박스 클릭시 전체 선택
	function selectAll(selectAll)  {
	   const checkboxes 
	   = document.getElementsByName('mvNo');
	   
	   checkboxes.forEach((checkbox) => {
	      checkbox.checked = selectAll.checked;
	   })
	}
	
	//사용하고 싶으시면 사용하세요~
	$(function(){
		//체크박스 클릭시 배열에 mvNo담기
		$("input:checkbox").on('click', function() {
			obj = $("[name=mvNo]");
			mvNoArray = new Array(); // 배열 선언
	 
	        $('input:checkbox[name=mvNo]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	        	mvNoArray.push(this.value);
	        });
	        mvNoArray1  = $('#mvNoArr').val(mvNoArray);
	        console.log("체크된 밸류들 : "+mvNoArray);
	        console.log("체크된 밸류들1 : "+mvNoArray1);
		});
	}) 
	
	console.log("체크된 밸류들 밖 : "+mvNoArray1);
	
	function refreshMvDetail(){
	                     	location.reload();
	                   }
	
	$("#tkDelBtn").click(function(){
		
		
		
		console.log("체크된 밸류들 3 : "+mvNoArray);
		var confirmDel = confirm("티켓을 삭제하시겠습니까?");
		
		
		if(confirmDel==true){
		
		$.ajax({
 		   
 		   url:"myTicketDelete.mv",
 		   data:{
 			  tkNo:${ts.tkNo}, 
 			  mvNoArray : mvNoArray,
 			  allListLength: ${fn:length(tdList)},
 			  chkListLength: mvNoArray.length
 				  },
 		   success : function(result){
 			   console.log("통신성공");
 	           alert("티켓이 취소 되었습니다.");
 	           refreshMvDetail();
 	           
 		   },
 		   error: function(){
 			   console.log("통신실패");
 		   }
 		   
 	   })
 		
		
		}
		
		
	})
	
	</script>
       

</body>
</html>