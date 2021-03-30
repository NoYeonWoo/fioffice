<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/sidebar.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/topbar.jsp"></jsp:include>
	
	<br>
	<div align="center">	
		<img src="https://cdn4.iconfinder.com/data/icons/flat-business-3/512/Flat_business-15-512.png" width="300">
		<br><br>
		<h1 style="font-weight:bold">${ msg }</h1>
		<h5 style="color: red;">${ requestScope['javax.servlet.error.message'] }</h2>
		
	</div>
	<br>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>