<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
.table td, .table th{
 	vertical-align:middle !important;
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
 <!-- [ Form Validation ] start -->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Form Validation</h5>
                    </div>
                    <div class="card-body">
                       <form name="newProduct" method="post" autocomplete="off">
							<table class="table table-bordered col-sm-10"  align="center">
                                <tr>
                                 	<td style="width:20%">상품코드</td>
                                	<td><input type="text" class="form-control form-control-sm" style="width:40%"></td>
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
							<div class="btns" align="center">
                    			<button type="submit" class="btn btn-primary">추가하기</button>
                    			<button type="button" onclick="$('#postForm').submit();" class="btn btn-danger">취소하기</button>
                			</div>
						</form>	
					</div>
				</div>


			</div>
            <!-- [ Form Validation ] end -->
 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->


    
    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>
	                                    