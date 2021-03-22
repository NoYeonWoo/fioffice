<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
 <style>
 .dept1 {
  float:left;
  width:48%;
  margin:auto;

 }
 .dept2 {
  float:right;
  width:48%;
  margin:auto;
 }
  .btn-primary{
	background-color: #B8ACD0 !important;
    border-color: #B8ACD0 !important;
}
.btn{
	padding:0.5rem 0.95rem !important;
}
 </style>
</head>

<body class="">
   <jsp:include page="../common/adminSidebar.jsp"/>
   <jsp:include page="../common/topbar.jsp"/>
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
 <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3>부서관리</h3>
                    </div>
                    <div class="card-body table-border-style">
                        <div class="dt-responsive dept1 ">
                            <table id="deptMain" class="table table-striped nowrap">
                                <thead>
                                    <tr>
                                  		<th style="width: 7%;">부서명</th>
                                        <th style="width: 40%;">부서코드</th>
                                        <th style="width: 30%;">자세히보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                       <td><i class="fas fa-clipboard-list" /><a href="#" onclick="detailDept(); return false;">상세보기</a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td><i class="fas fa-clipboard-list" /><a href="#" onclick="detailDept(); return false;">상세보기</a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td><i class="fas fa-clipboard-list" /><a href="#" onclick="detailDept(); return false;">상세보기</a></td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                            <div class="dept2 dt-responsive">
                            <table id="deptSub" class="table table-striped nowrap">
                                <thead>
                                     <tr>
                                  		<th style="width: 7%;">부서명</th>
                                        <th style="width: 40%;">부서코드</th>
                                        <th style="width: 40%;">구성원</th>
                                        <th style="width: 30%;">자세히보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->
 <div class="modal fade" id="mainAdd">  
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">상위부서추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newMain" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered  "  align="center">
                    	<tr>
                    		<td style="width:20%">부서명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:60%"></td>
                        </tr>
                        <tr>
                    		<td style="width:20%">부서코드</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:60%" readonly></td>
                        </tr>
					</table>
					<div class="modal-footer">
                    	<button type="submit" class="btn btn-primary">추가하기</button>
                    	<button type="button" class="btn btn-danger" data-dismiss="modal">취소하기</button>
                	</div>
				</form>	
			</div>
            </div>
        </div>
    </div>
     <div class="modal fade" id="subAdd">  
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">하위부서추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newSub" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered  "  align="center">
                    	<tr>
                    		<td style="width:20%">상위부서명</td>
                            <td></td>
                        </tr>
                    	<tr>
                    		<td style="width:20%">부서명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:60%"></td>
                        </tr>
                        <tr>
                    		<td style="width:20%">부서코드</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:60%" readonly></td>
                        </tr>
					</table>
					<div class="modal-footer">
                    	<button type="submit" class="btn btn-primary">추가하기</button>
                    	<button type="button" class="btn btn-danger" data-dismiss="modal">취소하기</button>
                	</div>
				</form>	
			</div>
            </div>
        </div>
    </div>
<script>
	$(document).ready(function() {
		$(".dept2").hide();
        var table1=$('#deptMain').DataTable({
              dom: '<"float-left"B>rt',
            buttons: [{
                text: '상위부서추가',
                className: 'btn-primary',
                action: function(e, dt, node, config) {
                	$("#mainAdd").modal("show");
                }
            }]
        });
        var table2=$('#deptSub').DataTable({
            columnDefs: [
                { orderable: false, targets: [2,3] },
                { searchable: false, targets: [2,3]}
              ],
              dom: '<"float-left"B><"float-right"f>rt<"float-right"p>',
            buttons: [{
                text: '하위부서추가',
                className: 'btn-primary',
                action: function(e, dt, node, config) {
                	$("#subAdd").modal("show");
                }
            }]
        });
	});
	function detailDept(){
		
		$(".dept2").fadeIn(1000);
	}
	</script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.responsive.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/responsive.bootstrap4.js"></script>

    
    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>
	                                    