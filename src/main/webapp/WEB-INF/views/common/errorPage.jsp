<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FIOFFICE</title>

<!-- Favicon icon -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
   
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body>
	<div class="error-page d-flex align-items-center flex-wrap justify-content-center pd-20">
		<div class="pd-10">
			<div class="error-page-wrap text-center">
				<h1>ERROR</h1>
				<h3>Error: ${ requestScope['javax.servlet.error.message'] }</h3>
				<p>You Seem To Be Trying To Find His Way Home</p>
				<div class="pt-20 mx-auto max-width-200">
					<a href="index.html" class="btn btn-primary btn-block btn-lg">Back To Home</a>
				</div>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>
</body>
</html>