<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>

<body class="">
 
   <jsp:include page="/WEB-INF/views/common/sidebar.jsp"/>
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
                            <li class="breadcrumb-item"><a href="index.jsp"><i class="feather icon-home"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  <!-- [ breadcrumb ] end -->
  
  
	<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
	<div class="col-xl-12">
				<div class="row">
				
			<div class="card user-card2">
				<div class="card-body text-center">
                        <div class="table-responsive">
                          <div class="card-body">
						<button type="button" class="btn  btn-primary btn-lg"> + 일정등록 </button>
					</div>
                        </div>
                    </div>
				</div>
			
				
		  <div class="col-lg-8 col-md-12">
            <div class="card table-card">
                   
                    
                 <div class="pd-20 card-box mb-30">
               <div class="calendar-wrap">
                  <div id='calendar'></div>
               </div>
               
                 <jsp:include page="/WEB-INF/views/common/calendar.jsp"/>
                 
               </div>
            </div>
        </div>
        </div>
		
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->


    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
</body>
</html>