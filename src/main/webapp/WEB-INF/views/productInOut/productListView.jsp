<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <!-- data tables css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
 <style>
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
.table-hover>tbody>tr:hover{
		cursor:pointer
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
                        <h3>상품관리</h3>
                    </div>
                    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                            	<table id="productList" class="table table-hover row-border  nowrap">
	                                <thead>
	                                    <tr>
	                                    <th  id="pCode" style="width: 15%;">상품코드</th>
	                                    <th  id="pName" style="width: 20%;">상품명</th>
	                                    <th  id="preStock" style="width: 10%">이월재고</th>
	                                    <th  id="inCount" style="width: 5%;">입고수량</th>
	                                    <th  id="inPrice" style="width: 10%;">입고단가</th>
	                                    <th  id="outCount" style="width: 5%;">출고수량</th>
	                                    <th  id="outPrice" style="width: 10%;">출고단가</th>
	                                    <th  id="stock" style="width: 10%;">재고</th>
	                                    <th id="comment" style="width: 15%;">비고</th> 
	                                    </tr>
	                                </thead>
	                                <tbody>  
	                                <tr>
	                                        <td>Gloria Little</td>
	                                        <td>Systems Administrator</td>
	                                        <td>New York</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                    </tr><tr>
	                                        <td>Gloria Little</td>
	                                        <td> Administrator</td>
	                                        <td>New Yo</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                    </tr><tr>
	                                        <td>Gloria Little</td>
	                                        <td>Systemsr</td>
	                                        <td>New rk</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                    </tr></tbody>
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


     <div class="modal fade" id="productAdd">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">상품추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newProduct" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered  "  align="center">
                    	<tr>
                    	
                        	<td style="width:20%">상품코드</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%" placeholder="P0000형식으로 작성해주세요"></td>
                        </tr><tr>
                            <td style="width:20%">상품명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                             <td style="width:20%">입고단가</td>
                             <td><input type="text" class="form-control form-control-sm"style="width:25%;float:left"><span>원</span></td>
                        </tr><tr>
                             <td style="width:20%">출고단가</td>
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
    
     <div class="modal fade" id="productDetail">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">상세보기</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="productUpdate" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered table-detail"  align="center">
                    	<tr>
                        	<td style="width:20%">상품코드</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                            <td style="width:20%">상품명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                             <td style="width:20%">이월재고</td>
                             <td><input type="number" class="form-control form-control-sm" style="width:25%"></td>
                        </tr><tr>
                             <td style="width:20%">출고수량</td>
                             <td><input type="number" class="form-control form-control-sm" style="width:25%"></td>
                        </tr><tr>
                             <td style="width:20%">입고단가</td>
                             <td><input type="text" class="form-control form-control-sm" style="width:25%;float:left"><span>원</span></td>
                        </tr><tr>
                             <td style="width:20%">출고수량</td>
                             <td><input type="number" class="form-control form-control-sm" style="width:25%"></td>
                        </tr><tr>
                             <td style="width:20%">출고단가</td>
                             <td><input type="text" class="form-control form-control-sm" style="width:25%;float:left"><span>원</span></td>
                        </tr><tr>
                             <td style="width:20%">재고</td>
                             <td><input type="number" class="form-control form-control-sm" style="width:25%"></td>
                        </tr><tr>
                             <td style="width:20%">비고</td>
                             <td><input type="text" class="form-control form-control-sm"></td>
                        </tr>
					</table>
					<div class="modal-footer">
                    	<button type="submit" class="btn btn-primary">수정하기</button>
                    	<button type="button" onclick="$('#postForm').submit();" class="btn btn-danger">삭제하기</button>
                	</div>
				</form>	
			</div>
            </div>
        </div>
    </div>
    
    <jsp:include page="../common/footer.jsp"/>
    
	<script>
	$(document).ready(function() {
        var table=$('#productList').DataTable({
            columnDefs: [
                { orderable: false, targets: [3,4,5,6,8] },
                { searchable: false, targets: [2,3,4,5,6,7]}
              ],
              dom: '<"float-left"B><"float-right"f>rtip',
            buttons: [{
                text: '상품추가',
                className: 'btn-primary',
                action: function(e, dt, node, config) {
                	$("#productAdd").modal("show");
                }
            }]
        });
        
        $("#productList tr").click( function(){
        	//$("#productList td:nth-child(2)").text("");
            $(".table-detail tr:nth-child(1) input").val(table.row(this).data()[0]);
            $(".table-detail tr:nth-child(2) input").val(table.row(this).data()[1]);
            $(".table-detail tr:nth-child(3) input").val(table.row(this).data()[2]);
            $(".table-detail tr:nth-child(4) input").val(table.row(this).data()[3]);
            $(".table-detail tr:nth-child(5) input").val(table.row(this).data()[4]);
            $(".table-detail tr:nth-child(6) input").val(table.row(this).data()[5]);
            $(".table-detail tr:nth-child(7) input").val(table.row(this).data()[6]);
            $(".table-detail tr:nth-child(8) input").val(table.row(this).data()[7]);
            $(".table-detail tr:nth-child(9) input").val(table.row(this).data()[8]);
            $("#productDetail").modal("show");
        });
	});
	</script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.responsive.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/responsive.bootstrap4.js"></script>
</body>
</html>