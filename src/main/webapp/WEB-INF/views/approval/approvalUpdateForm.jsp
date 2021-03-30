<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>



<link rel="stylesheet "
	href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">

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
								<li class="breadcrumb-item"><a href="index.jsp"><i
										class="feather icon-home"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- [ breadcrumb ] end -->


			<div class="row">


				<div class="col-md-10">
					<div class="card">
						<div class="card-header">
							<h3>결재서류 수정하기</h3>
						</div>
						<div class="card-body">
					  <form id="updateForm" method="post" action="updateApproval.do" enctype="multipart/form-data" >
                              <input type="hidden" name="approvalNo" value="${ap.approvalNo }">
                            
								<div class="form-group">
									<strong>기안자 : </strong><input type="text" class="form-control"
										value="${ap.empName} ( ${ap.deptName} ${ap.empPosition}) "
										name="empNo" readonly>
								</div>
								<div class="row">
									<div class="form-group col-lg-6">
										<strong>결재자 : </strong><input type="text" class="form-control"
											value="${firstApprEmp.empName} ${firstApprEmp.deptName} ${firstApprEmp.empPosition}"
											name="firstApprEmp" disabled>
									</div>
									<div class="form-group col-lg-6">
										<strong>최종결재자 : </strong><input type="text"
											class="form-control" value="${lastAppEmp.empName} 대표이사"
											name="lastAppEmp" readonly>
									</div>

								</div>
								<div class="form-group">
									<strong>제목 : </strong><input type="text" class="form-control" name="approvalTitle" value="${ap.approvalTitle }" autocomplete="off">
								</div>
								      <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1" name="urgent" value="긴급">
                       <label class="form-check-label" for="exampleCheck1" style="color:red; " >긴급</label>
                       </div>
								<div>
									<strong>내용 : </strong>
							 <textarea class="form-control" id="summernote" name="approvalContent" maxlength="140" rows="7" autocomplete="off">${ap.approvalContent } </textarea></div>
        	
        
                   <div class="form-group">
                         <strong>첨부파일 : </strong>
                         <input type="file" id="upfile" class="form-control-file border" name="reUploadFile">
                            <c:if test="${ !empty ap.originalName }">
	                                                               현재 업로드된 파일 : ${ ap.originalName } <br>
	                            <input type="hidden" name="changeName" value="${ ap.changeName }">
	                            <input type="hidden" name="originalName" value="${ ap.originalName }">
                            </c:if>
   	                   </div>
						
							<div >
							  	 <button type="button" 	onclick="javascript:history.go(-1);"  class="btn btn-primary" >목록으로</button>
							  	
					<div id="buttons" class="row">
					
					 <button type="submit" class="btn btn-success" style="margin-left: 80%;" id="update">수정하기</button>&nbsp;
					 
					     <form name="delete" action="deleteApproval.do" method="post">
							<input type="hidden" name="approvalNo" id="approvalNo">
						
							<button type="submit" class="btn btn-danger" id="delete">삭제하기</button>
	    					</form>
        
                    </div>
					</div>		
			   </form>				
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
									<div id="buttons" style="margin-left: 80%;">
						   	  <c:if test="${(sessionScope.loginUser.empNo eq ap.firstApprEmp) && (ap.status ne 'A')  }">
										<button type="button"
											onclick="postFormSubmit(1)"
											class="btn btn-success">승인1</button>
											
											<button type="button"
											onclick="postFormSubmit(2)"
											class="btn btn-danger">반려</button>	
											
											</c:if>	
     					   	  <c:if test="${ (sessionScope.loginUser.jobCode eq 'J10') && (ap.status ne 'C')   }">
											
										<button type="button"
											onclick="postFormSubmit(3)"
											class="btn btn-success">승인</button>		
											
												<button type="button"
											onclick="postFormSubmit(2)"
											class="btn btn-danger">반려</button>
                            </c:if>
									</div> <!--  버튼그룹 끝  -->
							<form id="postForm"  method="post">
								<input type="hidden" name="ano" value="${ap.approvalNo}">
					       
							
							
							</form>		
									
							<script type="text/javascript">
							function postFormSubmit(num) {
								var postForm =$("#postForm");
								if(num==1){
									postForm.attr("action","updateStatus.do");
								}if(num==2) {
									postForm.attr("action","updateRStatus.do");
								}if(num==3){
									postForm.attr("action","updateCStatus.do");
									
								}
								postForm.submit();
							}
							
							
							</script>
								
								</div>
						
						

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


	<script type="text/javascript">
		$(document).ready(function() {
			//여기 아래 부분
			$('#summernote').summernote({
				height : 300, // 에디터 높이
				minHeight : null, // 최소 높이
				maxHeight : null, // 최대 높이
				focus : true, // 에디터 로딩후 포커스를 맞출지 여부
				lang : "ko-KR", // 한글 설정
				placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정

			});
		});
		
		
		$(document).on('click','#delete',function(){
			if(confirm("정말로 삭제하시겠습니까?\n삭제 후엔 복구가 불가능합니다.")){
				$("#updateForm").submit();
			}					
		});
		
		$(document).on('click','#update',function(){
			if(confirm("정말로 제출하시겠습니까?\n기안 후엔 수정이 불가능합니다.")){
				$("#delete").submit();
			}					
		});
	</script>


	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/summernote/summernote-ko-KR.js"></script>


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>