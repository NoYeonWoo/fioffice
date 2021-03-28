<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
								<li class="breadcrumb-item"><a href="index.jsp"><i
										class="feather icon-home"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- [ breadcrumb ] end -->

			<div class="row">
				<div class="col-md-12">
						  <c:if test="${sessionScope.loginUser.jobCode ne 'J10' }">
					<div class="card">
						<div class="card-header">

							<h3 class="m-0 font-weight-bold text-primary">나의 문서함</h3>
							  <c:if test="${sessionScope.loginUser.jobCode ne 'J10' }">
							  
							<a class="btn btn-secondary" style="float: right"
								href="approvalInsertForm.do"> <i
								class="fas fa-file-signature"></i>결재하기
							</a>
			            </c:if>

						</div>
					
						<div class="card-body">
							● 결재 진행 > 진행 문서 <br>
							<br>

							<table class="table table-bordered" id="boardList"
								style="text-align: center; width: 80%;">
							<thead>	
								<tr>

									<th style="width: 10%;">품의 번호</th>
									<th style="width: 10%;">기안일</th>
									<!--  <th style="width:10%;">결재양식</th>		-->
									<th style="width: 10%;">긴급</th>
									<th>제목</th>

								</tr>
                           </thead>	
								<tbody>
									<c:forEach items="${ alist }" var="al">
										<c:if test="${al.status eq 'Y'}">

											<tr>
												<td>${al.approvalNo }</td>
												<td>${al.approvalDate }</td>
												<!--   <td >${yl.formName }</td> -->
												<td>${al.urgent }</td>
												<td>${al.approvalTitle }</td>

											</tr>

										</c:if>
									</c:forEach>


								</tbody>

							</table>

							<caption>● 결재 진행 > 반려 문서</caption>
							<br>
							<br>
							<table class="table table-bordered" id="boardList"
								style="text-align: center; width: 80%;">
			                 <thead>					
								<tr>
									<th style="width: 10%;">품의 번호</th>
									<th style="width: 10%;">기안일</th>

									<th style="width: 10%;">긴급</th>
									<th>제목</th>

								</tr>
                              </thead>
									<tbody>
									<c:forEach items="${ alist }" var="al">
										<c:if test="${al.status eq 'R'}">

											<tr>
												<td>${al.approvalNo }</td>
												<td>${al.approvalDate }</td>

												<td>${al.urgent }</td>
												<td>${al.approvalTitle }</td>

											</tr>

										</c:if>
									</c:forEach>


								</tbody>
							</table>


							<caption>● 결재 진행 > 완료 문서</caption>
							<br>
							<br>
							<table class="table table-bordered" id="boardList"
								style="text-align: center; width: 80%;">
							<thead>	
								<tr>
									<th style="width: 10%;">품의 번호</th>
									<th style="width: 10%;">기안일</th>
									<!--  <th style="width:10%;">결재양식</th>		-->
									<th style="width: 10%;">긴급</th>
									<th>제목</th>

								</tr>
							</thead>		
			                <tbody>
			                     <c:if test="${ fn:length(todolist)>0 && fn:length(todolist)<7}">
									<c:forEach items="${ alist }" var="al">
										<c:if test="${al.status eq 'C' }">

											<tr>
												<td>${al.approvalNo }</td>
												<td>${al.approvalDate }</td>
												<!--   <td >${yl.formName }</td> -->
												<td>${al.urgent }</td>
												<td>${al.approvalTitle }</td>

											</tr>

										</c:if>
									</c:forEach>
                               </c:if>

								</tbody>
							</table>
						</div>
					
					</div>
						</c:if>
				</div>


				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="m-0 font-weight-bold text-primary"
								style="display: inline-block;">나의 결재</h3>
						</div>
						<div class="card-body">
							<caption>● 결재 진행 > 미결재 문서</caption>
							<br>
							<br>
							<table id="boardList" class="table table-bordered" style="text-align: center;">
							<thead>
								<tr>
									<th style="width: 10%;"> 품의 번호</th>
									<th style="width: 10%;">기안일</th>
									<th style="width: 10%;">기안자</th>
									<th>제목</th>
									<th style="width: 10%;">상태</th>

								</tr>
                            </thead>
								<tbody>
									<c:forEach items="${ falist }" var="fa">
										<c:if test="${fa.status eq 'Y' && fa.firstApprEmp eq loginUser.empNo}">
										<tr>
											<td>${fa.approvalNo}</td>
											<td>${fa.approvalDate}</td>
											<td>${fa.empName}</td>
											<td>${fa.approvalTitle}</td>
											<td></td>




										</tr>
										</c:if>
							       </c:forEach>
								</tbody>
								<tbody>
										
									
										<c:forEach items="${ clist }" var="cl">
										<c:if test="${ (cl.lastAppEmp eq loginUser.empNo)  && (cl.status eq 'A') }">
										<tr>
											<td>${cl.approvalNo}</td>
											<td>${cl.approvalDate}</td>
											<td>${cl.empName}</td>
											<td>${cl.approvalTitle}</td>
										
											<td></td>




										</tr>
										</c:if>
									</c:forEach>
									</tbody>
							</table>

							<caption>● 결재 진행 > 결재 문서</caption>
							<br>
							<br>
							<table id="boardList" class="table table-bordered" style="text-align: center;">
							<thead>
								<tr>
									<th style="width: 10%;">품의 번호</th>
									<th style="width: 10%;">기안일</th>
									<th style="width: 10%;">기안자</th>
									<th>제목</th>
									<th style="width: 10%;" >상태</th>

								</tr>
							<thead>	
							<tbody>
									<c:forEach items="${ falist }" var="fa">
										<c:if test="${fa.status eq 'A' && fa.firstApprEmp eq loginUser.empNo}">
										<tr>
											<td>${fa.approvalNo}</td>
											<td>${fa.approvalDate}</td>
											<td>${fa.empName}</td>
											<td>${fa.approvalTitle}</td>
											<td></td>




										</tr>
										</c:if>
							       </c:forEach>
								</tbody>
								
								
								<tbody>
										
									
										<c:forEach items="${ clist }" var="cl">
										<c:if test="${ (cl.lastAppEmp eq loginUser.empNo)  && (cl.status eq 'C') }">
										<tr>
											<td>${cl.approvalNo}</td>
											<td>${cl.approvalDate}</td>
											<td>${cl.empName}</td>
											<td>${cl.approvalTitle}</td>
										
											<td></td>




										</tr>
										</c:if>
									</c:forEach>
									</tbody>
							</table>


						</div>
					</div>
				</div>

				<script>
					$(function() {
						$("#boardList tbody tr")
								.click(
										function() {
											location.href = "approvalDetailView.do?ano="
													+ $(this).children().eq(0)
															.text();
										});
					});
				</script>




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