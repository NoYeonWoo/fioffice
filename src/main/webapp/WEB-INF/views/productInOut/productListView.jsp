<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <!-- data tables css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
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
                        <h5>Custom Button</h5>
                    </div>
                    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                            	<table id="productList" class="table table-hover row-border  nowrap">
	                                <thead>
	                                    <tr>
	                                    <th  id="pCode" style="width: 200px;">상품코드</th>
	                                    <th  id="pName" style="width: 250px;">상품명</th>
	                                    <th  id="preStock" style="width: 100px;">이월재고</th>
	                                    <th  id="inCount" style="width: 80px;">입고수량</th>
	                                    <th  id="inPrice" style="width: 150px;">입고단가</th>
	                                    <th  id="outCount" style="width: 80px;">출고수량</th>
	                                    <th  id="outPrice" style="width: 150px;">출고단가</th>
	                                    <th  id="stock" style="width: 100px;">재고</th>
	                                    <th id="comment" style="width: 200px;">비고</th> 
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


    
    
    <jsp:include page="../common/footer.jsp"/>
    
	<script>
	$(document).ready(function() {
        $('#productList').DataTable({
            columnDefs: [
                { orderable: false, targets: [3,4,5,6,8] },
                { searchable: false, targets: [2,3,4,5,6,7]}
              ],
              dom: '<"float-left"B><"float-right"f>rtip',
            buttons: [{
                text: 'My Custom',
                action: function(e, dt, node, config) {
                    alert('Button activated');
                }
            }]
        });
	});
	</script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
</body>
</html>