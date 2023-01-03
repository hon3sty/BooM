<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 리스트 관리페이지(관리자)/ 우도균 -->
<title>영화리스트 관리페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    <Style>
         * {
            margin: 0;
            padding: 0;
            color:white;
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
		       width: 5%;
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

<body>
   
	<!--해더바 영역 시작-->
	<jsp:include page="../common/header.jsp"/>
	<!--해더바 영역 끝  -->

   
	<!-- Blog Details Section Begin -->
	<section class="blog-details spad">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12">
					<div class="product__page__title" style="margin: 10px;">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="section-title">
								<!-- ============== 예매페이지1 타이틀 영역 ============= -->
								<h4>관리자 페이지(리스트)</h4>
								</div>
                            </div>
                      	</div>
                  	</div>
              	</div>
              
	            <div class="board_list_wrap">
					<!--추가 삭제 버튼 시작-->
	               	<div style="float: right; margin-bottom: 10px;">
						<button style="color: black;" onClick="location.href='movieInsert.mv'">추가</button>
	                  	<button style="color: black;" onClick="movieDelete();">삭제</button>
	                  	
	                  	<input type='hidden' id="mvNoArr" name="mvNoArr">
	                </div>
	                <!--추가 삭제 버튼 끝-->
	                <!--영화 list 시작-->
	                <table class="board_list">
	                	<caption>게시판 목록</caption>
	                  	<thead>
							<tr>
	                            <th class="check"><input type="checkbox" onclick="selectAll(this);"></th>
	                            <th class="num">번호</th>
	                            <th class="title">제목</th>
	                            <th >개봉일</th>
								<th class="date">종영일</th>
	                        </tr>
	                    </thead>
						<tbody>
							<c:forEach var="m" items="${movieList}">
								<tr>
		                        	<td class="check"><input type="checkbox" name="mvNo" value="${m.mvNo}"></td>
		                        	<td class="num">${m.mvNo}</td>
		                        	<td class="tit title">
		                            	<a href="movieUpdate.mv?mvNo=${m.mvNo}">${m.mvTitle}</a>
		                        	</td>
		                        	<td>
		                        		<fmt:formatDate type="date" value="${m.openDate}"/>
		                        	</td>
		                        	<td class="date">
		                        		<fmt:formatDate type="date" value="${m.closeDate}"/>
		                        	</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
	                <!--영화 list 끝-->
	               	
	               	<!-- 페이징 영역 -->
					<div class="product__pagination" align="center">
	               		<c:choose>
                     		<c:when test="${pi.currentPage == 1 }">
                      			<a class="disabled" href="adminMovieList.mv?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     		</c:when>
                     		<c:otherwise>
                      			<a class="" href="adminMovieList.mv?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     		</c:otherwise>
                    	</c:choose>
                    	<%--페이징바 반복문 --%>
                    	<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      		<a href="adminMovieList.mv?currentPage=${p}" class="current-page">${p } </a>
                    	</c:forEach>
                    	<%--다음 버튼 활성화 --%>
                    	<c:choose>
                     		<c:when test="${pi.currentPage ne pi.maxPage}">
                       			<a class="" href="adminMovieList.mv?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     		</c:when>
                     		<c:otherwise>
                       			<a class="" href="adminMovieList.mv?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     		</c:otherwise>
                    	</c:choose>
                    </div>
	            </div>
			</div>
		</div>
	</section>
      
    <!--풋터바 영역 시작-->
    <jsp:include page="../common/footer.jsp"/>
    <!--풋터바 영역 끝  -->
</body>

<script>
	var obj;
	var mvNoArray;
	
	//체크박스 클릭시 전체 선택
	function selectAll(selectAll)  {
	   const checkboxes 
	   = document.getElementsByName('mvNo');
	   
	   checkboxes.forEach((checkbox) => {
	      checkbox.checked = selectAll.checked;
	   })
	}
	
	$(function(){
		//체크박스 클릭시 배열에 mvNo담기
		$("input:checkbox").on('click', function() {
			obj = $("[name=mvNo]");
			mvNoArray = new Array(); // 배열 선언
	 
	        $('input:checkbox[name=mvNo]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	        	mvNoArray.push(this.value);
	        });
	        $('#mvNoArr').val(mvNoArray);
		});
	})
	
	function movieDelete(){
		$.ajax({
			  url : "movieDelete.mv",
			  type : "post",
			  data : {
				  mvNoArr : mvNoArray
			  },
			  success : function(result){
				  console.log("asd");
				  
				  console.log(result);
			    if(result > 0) {
			    	alert("삭제 성공되었습니다.");
			    	location.reload();
			    } else {
			      alert("삭제 실패");
			    }
			  }
			});
	}
</script>

</html>