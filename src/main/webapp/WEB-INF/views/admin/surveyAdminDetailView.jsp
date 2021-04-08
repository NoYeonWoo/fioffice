<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
   	
<!-- CSS -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/assets/css/style.css" />
<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/board/assets/js/boardjs.css"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://cdn.jsdelivr.net/gh/emn178/chartjs-plugin-labels/src/chartjs-plugin-labels.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/google-palette@1.1.0/palette.min.js"></script>
	<style>
	canvas{
    margin: 0 auto;
    padding-top:5rem;
    }
		:root {
		--aside-width: 17.625rem;
		}
		
		a.app-pc-only.app-article-meta-item {
		
			color: #868E96;
		
		}
		
		div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    	}
    
    	div.right {
        
        float: right;
        box-sizing: border-box;
        
   		}

	</style>
</head>

<!-- BODY START -->
<body>
   
   <jsp:include page="/WEB-INF/views/common/adminSidebar.jsp"/>
   <jsp:include page="/WEB-INF/views/common/topbar.jsp"/>
  
   
<!--메인 화면 전체시작 -->
   <div class="pcoded-main-container">
     <div class="pcoded-content">
      
        
          
   <!-- [ breadcrumb start 부트스트랩에서 사이트 이동하는기능 -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10"></h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="adminMain.jsp"><i class="feather icon-home"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  <!-- [ breadcrumb ] end -->
  
  
  
	<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
	
		 
	<!-- 메인레버 -->
<div id="wrapper">
	<!-- 컨텐츠 영역 -->
	<div class="container-fluid">
		<!-- 타이틀 영역 -->
        <div class="card shadow mb-4">
			<!-- 게시글 제목 영역 -->
			<div class="app-board-article-head">
				<div class="app-board-container">
				<!-- <img src="" alt=""> -->
					<h1 class="tw-font-bold tw-text-3xl md:tw-text-xl">${sur.surTitle }</h1>
					<div class="tw-flex tw-items-end">
						<div class="app-board-article-profile tw-flex tw-items-center">
							<div class="app-profile-image app-avatar">
								<img src="${pageContext.request.contextPath}/resources/upload_files/${ sur.profile }" alt="Profile" /> </div>
							<div class="tw-flex-1 app-profile-body">
								<a class="tw-flex tw-items-center tw-font-bold tw-text-sm link member_4 author">${sur.empName }</a>
								<div class="app-article-meta">
									<div class="app-article-meta-item">${sur.surDate}</div>
									<div class="app-article-meta-divider"> ・ </div>
									<a href="#comment" class="app-pc-only app-article-meta-item">댓글 0</a>
								</div>
							</div>
						</div> 
						<div class="tw-flex-1" >
						<c:if test="${sur.status eq 'S'}">
							<a href="sdelete.so?sNo=${sur.surNo}" class="app-button app-button-rounded button-secondary" style="float:right">
							<span class="text">설문 종료</span></a></c:if>
						<c:if test="${sur.status eq 'E'}"><span style="border:2px solid #F00;float:right;color: #FF0000;font:20px Bold; padding:0.5rem 1rem">종료된 설문</span></c:if></div>
					</div>
				</div>
			</div>
			<div class="app-board-container tw-flex tw-items-center tw-pt-5">
				<div class="tw-flex-1"></div>
			</div>
	
	<!-- 본문 영역 -->
	<div class="app-board-container app-article-container">
		<div class="app-article-content app-clearfix">
			<div class="document_138_4 rhymix_content xe_content">
				<span>${sur.surContent }</span>
				<br>
				<div class="survey_box border col-sm-10 mx-auto" style="margin-top:5rem; padding:2rem">
					<span style="font:30px Bold;" >Q.${sur.surqContent }</span>
					<c:if test="${sur.surqType eq 'Y'}">
						&nbsp;&nbsp; <span>*중복가능*</span>
					</c:if>
					<span style="float:right">설문 기간 : ${sur.surDate } ~ ${sur.surEnd }</span>
					<br>
					<span style="float:right">총 투표인원 : ${sur.count }명</span>
					<br>
					<c:choose>
						<c:when test="${sur.surqStatus eq 'E'}">
						<table style="width:70%">
							<c:forEach items="${aList}" var="a" varStatus="status">
								<tr><td>${a.suraContent }</td></tr>
							</c:forEach>
						</table>
						</c:when>
						<c:otherwise>
							<div class="card-body">
                        	<canvas id="myChart" width="400px" height="400px"></canvas>
                    		</div>
							<br>
							<script>
								var label = new Array();
								var serie = new Array();
							</script>	
							<c:forEach items="${aList}" var="a" varStatus="status">
								<script>
									label[<c:out value='${status.index}'/>]='${a.option }';
									serie[<c:out value='${status.index}'/>]='${a.optionCount }';	
								</script>
							</c:forEach>				
							<script>
								console.log(label);
								console.log(serie);
								var ctx = document.getElementById('myChart').getContext('2d');
								var myChart = new Chart(ctx, {
								    type: 'pie',
								    data: {
								        labels: label,
								        datasets: [{
								        	label: '# of Votes',
								            data: serie,
								            backgroundColor: palette('mpn65', 20).map(function(hex) {
								                return '#' + hex;
								            }),
								            borderWidth: 1
								        }]
								    },
								    options: {
								    	responsive: false,
								    
								        plugins: {
								            legend: {
								              position: 'right',
								            } 
								    	}
								  	}
								});
								
							</script>
						</c:otherwise>
					</c:choose>
						
				</div>
			</div>
		</div>
	</div>
</div>
	
 <!-- div class="container-fluid" -->
	</div> <!-- div class="wrapper" -->
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	

	
	</body>
	</html>
