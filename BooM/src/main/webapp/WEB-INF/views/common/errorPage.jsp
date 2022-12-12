<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<!-- [공통] 에러페이지 -->
    <title>Document</title>
</head>
<body>

    <jsp:include page="header.jsp" />

    <br>
    <div align="center">
        <img src="">
        <br><br>
        <h1 style="font-weight:bold;" onclick="location.href='/'">${errorMsg}</h1>
    </div>
    <br>

    <jsp:include page="footer.jsp" />
    
</body>
</html>