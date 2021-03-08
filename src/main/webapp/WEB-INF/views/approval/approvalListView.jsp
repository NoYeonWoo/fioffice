<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>

<body class="">

	<jsp:include page="/WEB-INF/views/common/sidebar.jsp"></jsp:include>
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
  
			<div class="row">
				<div class="col-sm-10">
					<div class="card">
						<div class="card-header">
							
						  <h3 class="m-0 font-weight-bold text-primary">나의 문서함</h3> <a class="btn btn-secondary" style="float:right" href="approvalInsertForm.do"> <i class="fas fa-file-signature"></i>글쓰기</a>
						 	
					  
							</div>
						<div class="card-body">
						    <caption>● 결재 진행 > 진행 문서</caption> <br><br>
							<table class="table table-bordered" style="text-align: center; width:80%;" >
								<tr>
									<th style="width:10%;">품의 번호</th>
					             	<th style="width:10%;">기안일</th>
									<th>결재양식</th>						
									<th>긴급</th>
									<th>제목</th>
									
								</tr>

								<tbody>

								<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
									</tr>

								</tbody>
							</table>
							
							     <caption>● 결재 진행 > 반려 문서</caption> <br><br>
								<table class="table table-bordered" style="text-align: center; width:80%;" >
								<tr>
									<th style="width:10%;">품의 번호</th>
					             	<th style="width:10%;">기안일</th>
									<th>결재양식</th>						
									<th>긴급</th>
									<th>제목</th>
									
								</tr>

								<tbody>

								<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
									</tr>

								</tbody>
							</table>
							
							
							 <caption>● 결재 진행 > 완료 문서</caption> <br><br>
							<table class="table table-bordered" style="text-align: center; width:80%;" >
								<tr>
									<th style="width:10%;">품의 번호</th>
					             	<th style="width:10%;">기안일</th>
									<th>결재양식</th>						
									<th>긴급</th>
									<th>제목</th>
									
								</tr>

								<tbody>

								<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
									</tr>

								</tbody>
							</table>			
						</div>
					</div>
				</div>


               <div class="col-sm-10">
					<div class="card">
						<div class="card-header">
							<h3 class="m-0 font-weight-bold text-primary"
								style="display: inline-block;">나의 결재</h3>
						</div>
						<div class="card-body">
						  <caption>● 결재 진행 > 미결재 문서</caption> <br><br>
							<table class="table table-bordered" style="text-align: center;">
							<tr>
									<th>품의 번호</th>
									<th>기안일</th>
									<th>기안자</th>
									<th>제목</th>
									<th>상태</th>
									<th></th>
								</tr>

								<tbody>

									<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
						          	   <td ><i class="fas fa-clipboard-list"/><a  href=""  data-toggle="modal" data-target=".bd-example-modal-lg">상세보기</a></td>
						          	   
						          	   
						   <!-- 결재하기 모달시작  -->       	   
									  <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
							    <div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title h4" id="myLargeModalLabel">Large Modal</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<div class="modal-body">
										
									</div>
									
									<div class="modal-footer">
									<button type="button" class="btn-sm  btn-primary">결재하기</button>								
									<button type="button" class="btn-sm  btn-danger">반려</button>
									</div>
								</div>
							</div>
						</div>
										   <!-- 결재하기 모달끝  -->   
									</tr>
								</tbody>
							</table>
							
							
						</div>
					</div>
				</div>






			</div>
			<!--지우지 마세요    div class="row"  -->
		</div>
		<!--지우지 마세요   div class="pcoded-content"  -->
	</div>
	<!--지우지 마세요    div class="pcoded-main-container"  -->
	<!-- [ Main Content ] 메인화면 끝 -->




	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>