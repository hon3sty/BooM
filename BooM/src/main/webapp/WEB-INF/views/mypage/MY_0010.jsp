<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [마이페이지] 마이페이지 메인 : 이지윤 -->
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../common/header.jsp"/>
  
  
<div class="my_0010">
		<nav id="lnb">
			<p class="tit on"><a href="/mypage">영화관 이름</a></p>

			<ul>
				<li><a href="" title="예매내역">예매내역</a></li>
				<li><a href="" titel="나의 무비스토리">무비스토리</a></li>
                   <li>
                   	<a href="" title="스토어">스토어</a>
					<ul class="depth3">
						<li><a href="purchaseList.me" title="구매목록">구매목록</a></li>
						<li><a href="wishList.me" title="장바구니">장바구니</a></li>
						<li><a href="productPurchase.pd" title="결제하기">결제하기</a></li>
					</ul>
				   </li>
				<li><a href="" title=""></a></li>
				<li><a href="" title="나의 문의내역">문의내역</a></li>
				<li>
					<a href="" title="회원정보">회원정보</a>
					<ul class="depth3">
						<li><a href="" title="개인정보 수정">개인정보 수정</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>

<jsp:include page="../common/footer.jsp"/>

</body>
</html>