<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- [ Header ] start -->
	<header class="navbar pcoded-header navbar-expand-lg navbar-light header-blue">
		

				<div class="m-header">
					<a class="mobile-menu" id="mobile-collapse" href="#!"><span></span></a>
					<a href="index.jsp" class="b-brand">
						<!-- ========   change your logo hear   ============ -->
						<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/logo.png" alt="" class="logo">
						<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/logo-icon.png" alt="" class="logo-thumb">
					</a>
					<a href="#!" class="mob-toggler">
						<i class="feather icon-more-vertical"></i>
					</a>
				</div>
				<div class="collapse navbar-collapse">
					
					<ul class="navbar-nav ml-auto">
						
						<li>
	
							<div class="dropdown drp-user">
							
								<!-- 메일 외부로
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="feather icon-mail"></i>
								</a>
								-->
								
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="feather icon-user"></i>
								</a>
								
								<div class="dropdown-menu dropdown-menu-right profile-notification">
									<div class="pro-head">
										<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png" class="img-radius" alt="User-Profile-Image">
										<span>사원명</span>
										<a href="auth-signin.html" class="dud-logout" title="Logout">
											<i class="feather icon-log-out"></i>
										</a>
									</div>
									<ul class="pro-body">
									
										<li><a href="mypage.do" class="dropdown-item"><i class="feather icon-user"></i> 마이 페이지</a></li>
										<li><a href="email_inbox.html" class="dropdown-item"><i class="feather icon-message-circle"></i> 메신저</a></li>
										<li><a href="" class="dropdown-item"><i class="feather icon-mail"></i> 이메일</a></li>
										<li><a href="" class="dropdown-item"><i class="feather icon-settings"></i> 관리자</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				
			
	</header>
	<!-- [ Header ] end -->
</body>
</html>