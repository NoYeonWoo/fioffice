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
                        <h3>거래처관리</h3>
                    </div>
                    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                            <table id="clientList" class="table table-hover row-border  nowrap">
                                <thead>
                                    <tr>
                                    	<th id="cCode" style="width: 12%;">거래처코드</th>
	                                    <th id="cName" style="width: 15%;">거래처명</th>
	                                    <th id="corporateNo" style="width: 18%;">사업자등록번호</th>
	                                    <th id="address" style="width: 18%;">주소</th>
	                                    <th id="manager" style="width: 5%;">담당자</th>
	                                    <th id="phone" style="width: 15%;">연락처</th>
	                                    <th id="sortation" style="width: 5%;">구분</th>
	                                    <th id="comment" style="width: 12%;">비고</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>입고</td>
                                        <td>$320,800</td>
                                    </tr> <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr> <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr> <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr> <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr> <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr> <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
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
	 <div class="modal fade" id="clientAdd">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">거래처추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newClient" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered  "  align="center">
                    	<tr>
                        	<td style="width:20%">거래처코드</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                            <td style="width:20%">거래처명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                            <td style="width:20%">사업자등록번호</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:50%"></td>
                        </tr><tr>
                            <td style="width:20%">주소</td>
                            <td>
			             		<div class="form-inline">
								<label> &nbsp; 우편번호 : &nbsp;</label>
								<input type="text"  name="post" class="form-control mr-2 postcodify_postcode5" value="${ post }" size="6">
								<button type="button" class="btn btn-primary" id="postcodify_search_button" style="padding:0.3rem 0.625rem">검색</button>
								</div>
								<br>
								<div class="form-inline">
								<label> &nbsp; 도로명주소 : </label>
								<input type="text" name="address1" class="form-control postcodify_address" value="${ address1 }" size="60">
								</div>
								<br>
								<div class="form-inline">
							    <label> &nbsp; 상세주소 : </label>
								<input type="text" name="address2" class="form-control postcodify_extra_info" value="${ address2 }" size="60">
								</div>
							</td>
                        </tr><tr>
                             <td style="width:20%">담당자</td>
                             <td><input type="text" class="form-control form-control-sm"style="width:25%"></td>
                        </tr><tr>
                            <td style="width:20%">연락처</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                             <td style="width:20%">구분</td>
                            <td><input type="radio" name="inout" id="in" value="입고">
                    			 <label for="in">IN</label> &nbsp;&nbsp;
                    			 <input type="radio" name="inout" id="out" value="출고">
                    			 <label for="out">OUT</label></td>
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
    
     <div class="modal fade" id="clientDetail">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">상세보기</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="clientUpdate" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered table-detail "  align="center">
                    	<tr>
                        	<td style="width:20%">거래처코드</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%" placeholder="C0000형식으로 작성해주세요"></td>
                        </tr><tr>
                            <td style="width:20%">거래처명</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                            <td style="width:20%">사업자등록번호</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:50%"></td>
                        </tr><tr>
                            <td style="width:20%">주소</td>
                            <td>
			             		<div class="form-inline">
								<label> &nbsp; 우편번호 : &nbsp;</label>
								<input type="text"  name="post" class="form-control mr-2 postcodify_postcode5" value="${ post }" size="6">
								<button type="button" class="btn btn-primary" id="postcodify_search_button" style="padding:0.3rem 0.625rem">검색</button>
								</div>
								<br>
								<div class="form-inline">
								<label> &nbsp; 도로명주소 : </label>
								<input type="text" name="address1" class="form-control postcodify_address" value="${ address1 }" size="60">
								</div>
								<br>
								<div class="form-inline">
							    <label> &nbsp; 상세주소 : </label>
								<input type="text" name="address2" class="form-control postcodify_extra_info" value="${ address2 }" size="60">
								</div>
							</td>
                        </tr><tr>
                             <td style="width:20%">담당자</td>
                             <td><input type="text" class="form-control form-control-sm"style="width:25%"></td>
                        </tr><tr>
                            <td style="width:20%">연락처</td>
                            <td><input type="tel" class="form-control form-control-sm" style="width:40%"></td>
                        </tr><tr>
                             <td style="width:20%">구분</td>
                             <td><input type="radio" name="inout" id="in" value="입고">
                    			 <label for="in">IN</label> &nbsp;&nbsp;
                    			 <input type="radio" name="inout" id="out" value="출고">
                    			 <label for="out">OUT</label></td>
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
		var table = $('#clientList').DataTable({
			columnDefs: [
                { orderable: false, targets: [2,3,4,5,7] },
                { searchable: false, targets: [3,5,6,7]}
              ],
	        dom: '<"float-left"B><"float-right"f>rtip',
	        buttons: [{
	            text: '거래처추가',
	            className: 'btn-primary',
	            action: function(e, dt, node, config) {
	            	$("#clientAdd").modal("show");
	            }
	        }]
	    });
		$("#clientList tr").click( function(){
        	//$("#clientList td:nth-child(2)").text("");
            $(".table-detail tr:nth-child(1) input").val(table.row(this).data()[0]);
            $(".table-detail tr:nth-child(2) input").val(table.row(this).data()[1]);
            $(".table-detail tr:nth-child(3) input").val(table.row(this).data()[2]);
            $(".table-detail tr:nth-child(4) input").val(table.row(this).data()[3]); //주소
            $(".table-detail tr:nth-child(5) input").val(table.row(this).data()[4]);
            $(".table-detail tr:nth-child(6) input").val(table.row(this).data()[5]);
   			if(table.row(this).data()[6]=="입고"){
   				$(".table-detail input:radio[id='in']").prop("checked", true);   
   			}else{
   				$(".table-detail input:radio[id='out']").prop("checked", true); 
   			}
            $(".table-detail tr:nth-child(8) input").val(table.row(this).data()[7]);
            $("#clientDetail").modal("show");
        });
	});

	</script>
	<!-- jQuery와 Postcodify를 로딩한다. -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
		// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
		$(function(){
			$("#postcodify_search_button").postcodifyPopUp();
		});
	</script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
</body>
</html>
	                                    