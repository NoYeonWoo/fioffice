<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* Styles for wrapping the search box */

.main {
    width: 50%;

    left-margin: 5px ;
}

/* Bootstrap 4 text input with search icon */

.has-search .form-control {
    padding-left: 10px;
}

.has-search .form-control-feedback {
    position: absolute;
    z-index: 2;
    display: block;
    width: 2.375rem;
    height: 2.375rem;
    line-height: 2.375rem;
    padding-left: 20px;
    text-align: center;
    pointer-events: none;
    color: #aaa;
}


</style>


</head>

<body class="">
 
	<jsp:include page="/WEB-INF/views/common/adminSidebar.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/topbar.jsp"></jsp:include>
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
<div class="row">
 

 <!-- 사원관리 테이블  시작 -->
 
            <div class="col-lg-10">
            
                <div class="card">
                    <div class="card-header">
                      <h3>신규 사원 등록</h3>
                       
                    </div>
                    <div class="card-body table-border-style">
                    <div class="main">
  
  <!-- Actual search box -->
  <div class="main">
<div class="input-group">
    <input type="text" class="form-control" placeholder="Search this blog">
    <div class="input-group-append">
      <button class="btn btn-secondary" type="button">
        <i class="fa fa-search"></i>
      </button>
    </div>
  </div>
</div> 

<br><br>

</div>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>이름</th>
                                        <th>사번</th>
                                        <th>부서</th>
                                        <th>직위</th>
                                         <th>상세보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>@mdo</td>
                                        <td><i class="fas fa-clipboard-list"/><a  href=""  data-toggle="modal" data-target=".bd-example-modal-lg">상세보기</a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                        <td>@mdo</td>
                                        <td><i class="fas fa-clipboard-list"/><a  href=""  data-toggle="modal" data-target=".bd-example-modal-lg">상세보기</a></td>
                                        
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                        <td>@mdo</td>
                                        <td><i class="fas fa-clipboard-list"/><a  href=""  data-toggle="modal" data-target=".bd-example-modal-lg">상세보기</a></td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                    </div>
                       <!-- 사원관리 테이블 끝 -->       
                    


    



						          	   
						   <!-- 사원상세보기  모달시작  -->       	   
									  <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
							    <div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title h4" id="myLargeModalLabel">이윤해 상세보기</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<div class="modal-body">
									
											<div class="card-body">
					
					
						<form name="newEmpForm" method="post" autocomplete="off">
						
						                              

							<table class="table table-bordered" >
							
                                <tr>
                                 <td style="width:10%">이름</td>
                                 <td style="width:25%"></td>
                                 <td style="width:10%">주민번호</td>
                                 <td style="width:25%">
									

										
										</td>
                                </tr>
							
                                <tr>
                                 <td style="width:10%">부서코드</td>
                                 <td style="width:25%"></td>
                                 <td style="width:10%">직급</td>
                                 <td style="width:25%"></td>
                                </tr>
															
                                <tr>
                                 <td style="width:10%">입사일</td>
                                 <td style="width:25%"></td>
                                 <td style="width:10%">개인번호</td>
                                 <td style="width:25%"><div class="row">
									</td>
                                </tr>
                                
                                							
                                <tr>
                                 <td style="width:10%">내선번호</td>
                                 <td style="width:25%"><div class="row">
										
										</td>
                                 <td style="width:10%">이메일</td>
								</td>
                                </tr>
                                
                                
                             <tr>
                                 <td style="width:10%">주소</td>
                                 <td colspan="3">       
				             		<div class="form-inline"><!-- 인라인 폼은 가로로 배열된 형태로 폼태그에 form-inling 클래스를 사용합니다.  -->
									<label> &nbsp; 우편번호 :  </label>
									
						
									<label> &nbsp; 도로명주소 : </label>
									
								    <label> &nbsp;상세주소 : </label>
									
				                	</td>
                                
                                </tr>
							 
							 <tr>
							 <td ><button type="button" class="btn-sm  btn-danger" onclick="endFunction()">퇴사처리</button></td>
							 <td colspan="3"><input type="date" id="endate" name="joinDate" class="form-control form-control-user" style="width: 50%;"></td>
							 
							 </tr>
							</table>
						</form>				
					

						<!-- jQuery와 Postcodify를 로딩한다. 주소입력 -->
						<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
						<script>
					
							$(function() {
								$("#postcodify_search_button")
										.postcodifyPopUp();
							});
						</script>
                         
                         	 <script>
								function endFunction() {
								  confirm("퇴사를 진행하시겠습니까?");
								}
							</script>
						     
						      <script>
								function updateEmp() {
								  confirm("수정을 진행하시겠습니까?");
								}
							</script>

     
						
						
									</div>
									</div>
									
									<div class="modal-footer">
									<a class="btn btn-secondary" style="float:right" onclick= "updateEmp()" href="updateEmp.do"> <i class="fas fa-file-signature"></i>수정하기</a>								
							
									</div>
								</div>
							</div>
						</div>
										   <!-- 결재하기 모달끝  -->  


 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->


    
    

	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>