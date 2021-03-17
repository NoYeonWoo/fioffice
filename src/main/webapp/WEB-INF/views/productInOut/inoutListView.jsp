<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <!-- data tables css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/select.dataTables.min.css">
 <style>
	.inout .table td, .table th {
		padding:0.75rem !important;
	}
	.select-checkbox:before {
    margin-top: 0px !important;
}
.btn-primary{
	background-color: #B8ACD0 !important;
    border-color: #B8ACD0 !important;
}
.btn{
	padding:0.5rem 0.95rem !important;
}
 .modal-content .table td{
   line-height: 35px!important;
   }
 </style>
</head>

<body class="">
   <jsp:include page="../common/sidebar.jsp"/>
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
            <!-- Basic Button table start -->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>입출고관리</h5>
                    </div>
                    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                            <table id="inoutList"  class="table table-hover row-border  nowrap inout">
                                <thead>
                                    <tr>
                                    	<th id="check" style="width: 50px; text-align: center;">check</th>
                                        <th  id="iOCode" style="width: 150px;">입출고일자</th>
	                                    <th  id="sortation" style="width: 80px;">구분</th>
	                                    <th  id="cName" style="width: 250px;">거래처명</th>
	                                    <th  id="pName" style="width: 250px;">상품명</th>
	                                    <th  id="quantity" style="width: 80px;">수량</th>
	                                    <th  id="price" style="width: 150px;">금액</th>
	                                    <th id="Comment" style="width: 200px;">비고</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr>
                                   <tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr><tr>
                                    	<td></td>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Basic Button table end -->

 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->
 <div class="modal fade" id="inoutAdd">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">입출고추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newInout" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered  "  align="center">
                    	<tr>
                        	<td style="width:20%">입출고일자</td>
                            <td><input type="date" id="inoutDate" name="inoutDate"  class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                            <td style="width:20%">구분</td>
                             <td><input type="radio" name="inout" id="in" value="입고">
                    			 <label for="in">IN</label> &nbsp;&nbsp;
                    			 <input type="radio" name="inout" id="out" value="출고">
                    			 <label for="out">OUT</label></td>
                        </tr><tr>
                            <td style="width:20%">거래처명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                            <td style="width:20%">상품명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                             <td style="width:20%">수량</td>
                             <td><input type="number" class="form-control form-control-sm"style="width:25%"></td>
                        </tr><tr>
                             <td style="width:20%">금액</td>
                             <td><input type="text" class="form-control form-control-sm" style="width:25%;float:left"><span>원</span></td>
                        </tr><tr>
                             <td style="width:20%">비고</td>
                             <td><input type="text" class="form-control form-control-sm"></td>
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

    
    
    <jsp:include page="../common/footer.jsp"/>
    
	<script>
	var table = $(document).ready(function() {
		$('#inoutList').DataTable({
			columnDefs: [
				{
		            className: 'select-checkbox',
		            targets:   0
		        },
		        
                { orderable: false, targets: [0,5,6,7]},
                { searchable: false, targets: [0,1,2,5,6]}

              ],
              select: {
		            style:    'multi',
		            selector: 'td:first-child'
		        },
		        order: [[ 1, 'asc' ]],
              dom: '<"float-left"B><"float-right"f>rtip',
	        buttons: [{
	            text: '입출고 추가',
	            className: 'btn-primary',
	            action: function(e, dt, node, config) {
	            	$("#inoutAdd").modal("show");
	            }
	        },{
	            text: '삭제',
	            className: 'btn-danger',
	            action: function(e, dt, node, config) {
	            }
	        }]
	    });
	});
	
	</script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.select.min.js"></script>
</body>
</html>