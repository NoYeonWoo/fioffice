<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* Styles for wrapping the search box */
.main {
	width: 50%;
	left-margin: 5px;
}
#employeeList td,th{
	padding:0.75rem !important;
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

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
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
								<li class="breadcrumb-item"><a href="index.jsp"><i
										class="feather icon-home"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- [ breadcrumb ] end -->


			<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
			<div class="row">


				<!-- 사원관리 테이블  시작 -->

				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h3>사원관리</h3>
						</div>
						<div class="card-body">
							<div class="dt-responsive table-responsive">
								<table id="employeeList" class="table table-striped nowrap">
									<thead>
										<tr>
											<th style="width:15%">이름</th>
											<th style="width:25%">사번</th>
											<th style="width:20%">부서</th>
											<th style="width:15%">직위</th>
											<th style="width:25%">상세보기</th>
										</tr>
									</thead>
									
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- 사원관리 테이블 끝 -->
			</div>
			<!--지우지 마세요    div class="row"  -->
			<!-- 사원상세보기  모달시작  -->
			<div class="modal fade bd-example-modal-lg" tabindex="-1" id="detailEmp"
				role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title h4" id="myLargeModalLabel">${loginUser.empName}
								상세보기</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							<div class="card-body">


								<form name="empForm.do" method="post" autocomplete="off">

									<table class="table table-bordered table-detail">

										<tr>
											<td style="width: 10%">이름</td>
											<td style="width: 25%" id="empName"></td>
											<td style="width: 10%">주민번호</td>
											<td style="width: 25%" id="resNo"></td>
										</tr>

										<tr>
											<td style="width: 10%">부서</td>
											<td style="width: 25%" id="deptName"></td>
											<td style="width: 10%">직급</td>
											<td style="width: 25%" id="empPosition"></td>
										</tr>

										<tr>
											<td style="width: 10%">입사일</td>
											<td style="width: 25%" id="joinDate"></td>
											<td style="width: 10%">개인번호</td>
											<td style="width: 25%" id="phone"></td>
										</tr>


										<tr>
											<td style="width: 10%">내선번호</td>
											<td style="width: 25%" id="officePhone"></td>
											<td style="width: 10%">이메일</td>
											<td style="width: 25%" id="email"></td>
										</tr>


										<tr>
											<td style="width: 10%">주소</td>
											<td colspan="3" id="address"></td>


										</tr>

										<tr>
											<td><button type="button" class="btn-sm  btn-danger"
													onclick="endFunction()">퇴사처리</button></td>
											<td colspan="3"><input type="date" id="endDate"
												name="endDate" class="form-control form-control-user"
												style="width: 50%;"></td>

										</tr>
									</table>
								</form>


								<!-- jQuery와 Postcodify를 로딩한다. 주소입력 -->
								<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>


								<script>
                     
								function endFunction() {
								  confirm("퇴사를 진행하시겠습니까?");
								}
							</script>

							</div>
						</div>

						<div class="modal-footer">
							<a class="btn btn-secondary " type="submit" style="float: right"
								onclick="updateEmp()" id="updateButton" href="updateEmp.do">
								<i class="fas fa-file-signature"></i>수정하기
							</a>

						</div>
					</div>
				</div>
			</div>
			<!-- 상세보기  모달끝  -->



		</div>
		<!--지우지 마세요   div class="pcoded-content"  -->
	</div>
	<!--지우지 마세요    div class="pcoded-main-container"  -->
	<!-- [ Main Content ] 메인화면 끝 -->

	<script>
	 
	$(document).ready(function() {
        var table=$('#employeeList').DataTable({
            columnDefs: [
                { orderable: false, targets: [1] },
                { searchable: false, targets: [4]}
              ],
              dom: 'frtip',
              order: [[ 0, 'asc' ]],
              ajax : {
                  url :"selectEmpList.do"
                  ,type : "POST"
                  ,dataType : "JSON"
                  },
              columns : [
            	  {data: "empName"},
            	  {data: "empNo"},
            	  {data: "deptName"},
            	  {data: "empPosition"},
            	  {data: null,
            		  render: function(data, type, row){
                          if(type=='display'){
                              data = '<i class="fas fa-clipboard-list" /><a href=""data-toggle="modal" data-id="'+row['empNo']+'" data-target="#detailEmp">상세보기</a>';
                          }
                          return data;
                      }}
            	  
            	  //{data: null, defaultContent: "<i class='fas fa-clipboard-list' /><a href=''data-toggle='modal' data-id='' data-target='#detailEmp'>상세보기</a>"}
          		
              ]
    
        });
        $('#detailEmp').on('show.bs.modal', function (event) {
        	var code = $(event.relatedTarget).data('id');
        	$.ajax({
		        type:"POST",  
		        url:"selectEmployee",  
		        async:false,
		        data:{empNo:$(event.relatedTarget).data('id')},
		        success:function(emp){
		        	emp.joinDate=moment();
		            $("#empName").html(emp.empName);
		            $("#resNo").html(emp.resNo);
		            $("#deptName").html(emp.deptName);
		            $("#empPosition").html(emp.empPosition);
		            $("#joinDate").html(moment(emp.joinDate,"YYYY-MM-DD"));
		            $("#phone").html(emp.phone);
		            $("#officePhone").html(emp.officePhone);
		            $("#email").html(emp.email);
		            $("#address").html(emp.address);
		            
		        },   
		        error:function(e){  
		            console.log(e.responseText);  
		        }
		 });
        });	
        
        
	});
	
	</script>
	<script
		src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.responsive.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/responsive.bootstrap4.js"></script>



	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>