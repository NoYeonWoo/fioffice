<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 
 <!-- vendor css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/style.css">
</head>

<body class="">
 	<header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">

	          <div class="m-header">
		
						<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/test.png" alt="" class="logo">
				
				</div>
  </header>
  
<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
<div class="row">
 

<!-- [ auth-signup ] start -->
<div class="auth-wrapper">
	<div class="auth-content">
	

		<div class="card" >
			<div class="row align-items-center text-center">
				<div class="col-md-12">
				  <form action="login.me" method="post">
					<div class="card-body">
						<img src="assets/images/logo-dark.png" alt="" class="img-fluid mb-4">
						<h4 class="mb-3 f-w-400">Sign up</h4>
						<div class="form-group mb-3">
							<label class="floating-label" for="Username">Username</label>
							<input type="text" class="form-control" id="empNo" name="empNo" placeholder="사원번호를 입력하세요">
						</div>
					
						<div class="form-group mb-4">
							<label class="floating-label" for="Password">Password</label>
							<input type="password" class="form-control" id="empPwd" name="empPwd" placeholder="비밀번호를 입력하세요">
						</div>
					
						<button type="submit" class="btn btn-primary btn-block mb-4" id="loginbtn" class="logbtn" value="Login" >Sign up</button>
						<p class="mb-2">비밀번호를 잊으셨나요? <a href="auth-signin.html" class="f-w-400">비밀번호찾기</a></p>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- [ auth-signup ] end -->

   <!-- Required Js -->
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/vendor-all.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/ripple.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/pcoded.min.js"></script>

   <!-- Apex Chart -->
   <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/apexcharts.min.js"></script>
   <!-- custom-chart js -->
   <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/pages/dashboard-main.js"></script>   
    
    
    <jsp:include page="footer.jsp"/>
</body>
</html>