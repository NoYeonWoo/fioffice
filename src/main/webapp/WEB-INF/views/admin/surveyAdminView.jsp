<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
#surveyList td,th{
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
	margin-bottom:1rem !important;
}
 .modal-content .table td{
   line-height: 35px!important;
   }
.table-hover>tbody>tr:hover{
	cursor:pointer
}

	#buttons button{
		margin: 5em;
		display: inline-block;
		margin-left: auto;
		margin-right: auto;
	}
	#buttons{
		display: inline-block;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
	}
	
	span.txt{
	 	 color: #383A3C;
	}
	
	span.txt:hover {
    color: #B8ACD0;
	}

	:root {
		--aside-width: 17.625rem;
		}
		
	.cate{
	 	background-color: #B8ACD0;
	
	}
	
	.pagination {
	  display: inline-block;
	  margin-left: auto;
	  margin-right: auto;
	  padding: 40px 0px 20px 0px;
	}
	
	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: background-color .3s;
	}
	
	.pagination a.active {
	  background-color: rgb(2, 1, 13);
	  color: white;
	}
	
	 a:link { color: gray; text-decoration: none;}
	 a:visited { color: gray; text-decoration: none;}
	 a:hover {text-decoration: none;}
	
	.bContents:hover {
		background: rgb(250,250,250);
	}
	
	div.left {
	 	width: 30%;
        float: left;
        box-sizing: border-box;
        
    	}
    
    	div.right {
        width: 70%;
        float: right;
        box-sizing: border-box;
        
   		}

 </style>
 
  <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
   	
<!-- CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">

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
                            <li class="breadcrumb-item"><a href="adminMain.jsp"><i class="feather icon-home"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  <!-- [ breadcrumb ] end -->
  
  
<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
<div class="row">
     <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h3>설문관리</h3>
                    </div>
                    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                            	<table id="surveyAdminList" class="table table-hover row-border  nowrap">
	                                <thead>
	                                    <tr>
	                                    <th></th>
	                                    <th id="sNo" style="width: 5%;">번호</th>
	                                    <th id="sStatus" style="width: 5%;">상태</th>
	                                    <th id="sTitle" style="width: 25%;">제목</th>
	                                    <th id="sDate" style="width: 30%;">설문 기간</th>
	                                    <th id="sWriter" style="width: 15%;">작성자</th>
	                                    </tr>
	                                </thead>
                            	</table>
                        	</div>
                        </div>
                	</div>
            	</div>
 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->

    
    
    <jsp:include page="../common/footer.jsp"/>
	<script>
	$(document).ready(function() {
		selectList("S");
	});
	function selectList(status){
		var table = $('#surveyAdminList').DataTable({
			destroy:true,
			columnDefs: [
				{visible: false, targets :0},
                { orderable: false, targets: [0,5]},
                { searchable: false, targets: [0,1,2,4]}
              ],
		        order: [[ 1, 'asc' ]],
              dom: '<"float-left"B>frtp',
              language: {
              	  zeroRecords: "설문이 존재하지 않습니다."
                },
	        buttons: [{
	            text: '설문추가',
	            className: 'btn-primary',
	            action: function(e, dt, node, config) {
	            	location.href="sinsertForm.so";
	            }
	        },{
	            text: '진행중',
	            className: 'btn-secondary',
	            action: function(e, dt, node, config) {
	            	$('#surveyAdminList').empty();
	            	selectList("S");
	            }
	        },{
	            text: '완료',
	            className: 'btn-secondary',
	            action: function(e, dt, node, config) {
	            	$('#surveyAdminList').empty();
	            	selectList("E");
	            }
	        }],
	        ajax : {
                url :"selectSurveyAll"
                ,type : "POST"
                ,data:{status:status}
                ,dataType : "JSON"
                },
            columns : [
            	{data: "surNo"},
               	{data:null, 
               		render: function(data, type, row, meta){
               			return  meta.row+1;
               		}},
               	{data: "deptName",defaultContent: "",
               		render:function(data, type, row){
               			if(type=='display'){
               				if(data==null){
               					data="전체";
               				}
               			}
               			return data;
               		}},
               	{data: "surTitle"},
               	{data: "surEnd",
               		render:function(data, type, row){
               			if(type=='display'){
               				data=row['surDate']+' ~ '+data;
               			}
               			return data;
               		}},
               	{data: "empName"}
               ]
	    });
		$('#surveyAdminList tbody').on( 'click', 'tr', function () {
	    	console.log(table.row(this).data());
	    	var data = table.row( this ).data();
			location.href="detailAdminSurvey?sNo=" + data['surNo'];
		});
	}

	
	</script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
</body>
</html>
	                                    