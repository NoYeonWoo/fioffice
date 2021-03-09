<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
	#buttons button{
		margin: 5em;
		display: inline-block;
		margin-left: auto;
		margin-right: auto;
	}
	#buttons{
		display: inline-block;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
	}
</style>

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
	
	<div class="col-xl-10">
				<div class="row">
				
			<div class="card user-card2">
				<div class="card-body text-center">
                    <div class="table-responsive">
                        <div class="card-body">
						<button type="button" class="btn  btn-primary btn-lg"><i class="fas fa-plus"></i>&nbsp;설문등록  </button>
						</div>
                      </div>
                  </div>
			</div>

				  <div class="col-lg-9 col-md-12">
            <div class="card table-card">
                   
                <div class="pd-20 card-box mb-30">
            
            <form id="surveyForm" role="form" action="sinsert.so" method="post" autocomplete="off">
           		
           	<!-- 컨텐츠 영역 -->
				
				<br>
				<table align="center">
					<tr>
						<td><label>설문 제목</label></td>
						<td><input type="text" name="sTitle"></td>
					</tr>
					<tr>
						<td><label>설문 내용</label></td>
						<td><input type="text" name="sSubTitle"></td>
					</tr>
					<tr>
						<td><label>설문 내용</label></td>
						<td><input type="text" name="sSubTitle"></td>
					</tr>
				</table>
				
			</form>
			 <br>
			 
			 <div class="card-body" align="right">
				<button type="button" class="btn  btn-primary btn-lg">다음</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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