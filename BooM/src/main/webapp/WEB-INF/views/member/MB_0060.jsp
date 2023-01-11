<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [회원] 회원 관리 : 이지윤 -->
<title>Insert title here</title>
<style>
	*{
		color : white;
	}
	 #outer_0010 {
 	display: flex; 
	justify-content: center;
}
.section-title_0030 {
    margin-bottom: 30px;
    padding-top: 80px;  
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
.section-title_0030 h4:after {/*빨간색 ..*/
	position: absolute;
	left: 0;
	top: -6px;
	height: 32px;
	width: 4px;
	background: #e53637;
	content: "";
} 
.pagination {
 	display: flex; 
	justify-content: center;
	padding-top:30px; 
}
.pagination a {
 	color: white;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
}
.:hover {
    background-color: #e53637;
    border-radius: 5px;
}
input.btn{
    color: white;
    background-color: #e53637; 
}
input.btn:hover{
    color: white;
    background-color: #8e8282;
    border: 1px solid gray;
}
.btn-r a {
	text-decoration: none;
	/*밑줄 없애기*/
	color: black;
}
.btn-r {
	display: inline-block;
	border-radius: 5px;
	border: none;
	background-color: #e53637;
	border: none;
	color: black;
	text-align: center;
	font-size: 5px;
	padding: 8px;
	width: 150px;
	transition: all 0.5s;
	cursor: pointer;
	margin-left: 520px;
}
.btn-r:hover {
	display: inline-block;
	border-radius: 5px;
	border: none;
	color: black;
	text-align: center;
	font-size: 5px;
	padding: 8px;
	width: 150px;
	transition: all 0.5s;
	cursor: pointer;
	margin-left: 520px;
	background-color: #8e8282;
}
.btn-r span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
	font-size: 14px;
}
.btn-r span:after {
	
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
#button_0010 {
    border: 1px solid #e53637;
    width: 58%;
    font-weight: bolder;
    background-color: #e53637;
    border-radius: 5px;
    font-size:12px;
}

#button_0010:hover{
    border: 1px solid #8e8282;
    width: 58%;
    font-weight: bolder;
    background-color: #8e8282;
    border-radius: 5px;
    font-size:12px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<!-- 전체 영역-->
	<div id="outer_0010">
	   <div class="member_0010">
  			<div class="section-title_0030">
	 		  <h4>회원 정보 관리  <button class="btn-r" onclick="location.href='mypage.me'" style="vertical-align: middle">
				<span>마이페이지</span></a>
			</button></h4>	 		  
	 		</div>
				<table class="table table-hover">
				  <thead>
				    <tr align="center">
				      <th scope="col">아이디</th>
				      <th scope="col">비밀번호</th>
				      <th scope="col">이름</th>
				      <th scope="col">이메일</th>
				      <th scope="col">회원가입일</th>
				      <th scope="col">회원정보 수정일</th>
				      <th scope="col">회원 삭제</th>
				    </tr>
				  </thead>
				  	<c:forEach items="${memberList}" var="mb"> 
				  <tbody>
				    <tr class="table-active"  align="center">
				      <td>${mb.memberId}</td>
				      <td>${mb.memberPwd}</td>
					  <td>${mb.memberName}</td>
					  <td>${mb.email}</td>
					  <td>${mb.enrollDate}</td>
					  <td>${mb.modifyDate}</td>
					  <td><input type=submit value="삭제" id="button_0010" onclick="memberDelete('${mb.memberNo}');"> </td>
				    </tr>
				    	</c:forEach>
				  </tbody>
				</table>
					<!-- 페이징 영역 -->
					<div class="pagination" align="center">
	               		<c:choose>
                     		<c:when test="${pi.currentPage == 1 }">
                      			<a class="disabled" href="MemberA.me?currentPage=${pi.startPage} "><i class="fa fa-angle-double-left"></i></a>
                     		</c:when>
                     		<c:otherwise>
                      			<a class="disabled" href="MemberA.me?currentPage=${pi.currentPage-1} "><i class="fa fa-angle-double-left"></i></a>
                     		</c:otherwise>
                    	</c:choose>
                    	<%--페이징바 반복문 --%>
                    	<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                      		<a href="MemberA.me?currentPage=${p}" class="current-page" id="${p}">${p} </a>
                    	</c:forEach>
                    	<%--다음 버튼 활성화 --%>
                    	<c:choose>
                     		<c:when test="${pi.currentPage ne pi.maxPage}">
                       			<a class="disabled" href="MemberA.me?currentPage=${pi.currentPage+1}"><i class="fa fa-angle-double-right"></i></a>
                     		</c:when>
                     		<c:otherwise>
                       			<a class="disabled" href="MemberA.me?currentPage=${pi.maxPage}"><i class="fa fa-angle-double-right"></i></a>
                     		</c:otherwise>
                    	</c:choose>
                    </div>
				</div>
			</div>
		<script>
			$(function(){
					$("#${pi.currentPage}").css('background-color', '#e53637').css('border-radius','4px');			
			})
			
			function memberDelete(userNo){
				$.ajax({
					url:"memberDelete.me",
					type :"post",
					data:{
						memberNo : userNo
					},
					success : function(result){
						if(result > 0){
							alert("성공적으로 삭제되었습니다.");
							location.reload();
						}else{
							alert("실패적으로 삭제되었습니다.");
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