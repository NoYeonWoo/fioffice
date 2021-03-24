<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
.btn{
	padding:0.4rem 1rem !important;
}
.table-hover>tbody>tr:hover{
		cursor:pointer
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
                        <h3>회의실현황</h3>
                    </div>
                    <div class="card-body table-border-style">
                    <div class="dt-buttons btn-group flex-wrap">
                    	<button class="btn btn-primary" data-toggle="modal" data-target="#roomAdd" type="button">추가</button> </div>
                        <div class="table-responsive">
                            <table id="roomList" class="table table-hover">
                                <thead>
                                    <tr>
                                  		<th style="width: 7%;">NO</th>
                                        <th style="width: 40%;">회의실명</th>
                                        <th style="width: 30%;">위치</th>
                                        <th style="width: 10%;">최대인원수</th>
                                        <th style="width: 13%;">상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>사용중</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                        <td>@mdo</td>
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
	<div class="modal fade" id="roomAdd">  
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">회의실 추가</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newRoom" action="insertRoom.r" method="post" autocomplete="off">
					<table class="table table-bordered  "  align="center">
                    	<tr>
                    	
                        	<td style="width:20%">회의실</td>
                            <td><input name="roomName" type="text" class="form-control form-control-sm" style="width:80%"></td>
                        </tr><tr>
                            <td style="width:20%">위치</td>
                            <td><input name="location" type="text" class="form-control form-control-sm" style="width:80%"></td>
                        </tr><tr>
                             <td style="width:20%">최대인원수</td>
                             <td><input name="limitCount" type="text" class="form-control form-control-sm"style="width:25%;float:left"><span>명</span></td>
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

<div class="modal fade" id="roomUpdate">  
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">회의실 수정</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="newProduct" action="login.me" method="post" autocomplete="off">
					<table class="table table-bordered  table-detail"  align="center">
                    	<tr>
                        	<td style="width:20%">회의실</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:80%"></td>
                        </tr><tr>
                            <td style="width:20%">위치</td>
                            <td><input type="text" class="form-control form-control-sm" style="width:80%"></td>
                        </tr><tr>
                             <td style="width:20%">최대인원수</td>
                             <td><input type="text" class="form-control form-control-sm"style="width:25%;float:left"><span>명</span></td>
                        </tr><tr>
                             <td style="width:20%">상태</td>
                             <td><input type="checkbox" name="using" value="사용여부" class="mr-2"/>사용중</td>
                        </tr>
                        
					</table>
					<div class="modal-footer">
                    	<button type="submit" class="btn btn-primary">수정하기</button>
                    	<button type="button" class="btn btn-danger" data-dismiss="modal">삭제하기</button>
                	</div>
				</form>	
			</div>
            </div>
        </div>
    </div>
    <script>
    $("#roomList tr").click(function(){
    	//$("#productList td:nth-child(2)").text("");
        $(".table-detail tr:nth-child(1) input").val($(this).children().eq(1).text());
        $(".table-detail tr:nth-child(2) input").val($(this).children().eq(2).text());
        $(".table-detail tr:nth-child(3) input").val($(this).children().eq(3).text());
        $(".table-detail tr:nth-child(4) input").val($(this).children().eq(4).text());
        if($(this).children().eq(4).text()=="사용중"){
				$(".table-detail input:checkbox[name='using']").prop("checked", true);   
			}else{
				$(".table-detail input:checkbox[name='using']").prop("checked", false); 
			}
        $("#roomUpdate").modal("show");
    });
    </script>
    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>
	                                    