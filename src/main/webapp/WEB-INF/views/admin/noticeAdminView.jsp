<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
   	
<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/assets/css/style.css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/select.dataTables.min.css">

<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/board/assets/js/boardjs.css"></script>

	<style>
	
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
	
	
	.app-board-category{
	display:flex;
	padding-left:1.5rem;
	margin-bottom:1rem;
	white-space:nowrap;
	overflow-x:auto
	}
	
	@media (max-width:1024px){
	.app-board-category{
	margin:1rem
	}
	}
	
	.app-board-category>li{
	position:relative;
	margin-right:2rem
	}
	
	.app-board-category>li>a{
	display:inline-flex;
	justify-content:center;
	align-items:center;
	padding:1rem 0;
	color:var(--color-gray-600);
	font-size:0.875rem;
	font-weight:400;
	border-bottom:2px solid transparent;
	transition:250ms
	}
	
	.app-board-category>li>a .app-document-count{
	display:none;
	margin-left:0.5rem;color:var(--color-gray-600);font-size:0.75rem}
	
	.app-board-category>li>a:hover{
	color:var(--color-gray-700)}
	
	.app-board-category>li.active>a{
	color:var(--color-gray-900);
	font-weight:600;
	border-bottom-color:var(--color-gray-900)
	}
	
	.app-board-category .app-category-child{
	position:absolute;
	left:0;
	z-index:10;
	display:none;
	padding-top:0.5rem;
	min-width:180px}
	
	.app-board-category .app-category-child>ul{padding:0}
	
	.app-board-category .app-category-child>ul>li{
	background-color:var(--color-card-background);
	border-radius:var(--border-radius-2);
	box-shadow:var(--box-shadow-1)}
	
	.app-board-category .app-category-child>ul>li>a{
	display:block;
	padding:0.875rem 1rem;
	color:var(--color-black);
	font-size:0.875rem;transition:250ms}
	
	.app-board-category .app-category-child>ul>li>a:hover{background-color:var(--color-gray-200)}
	
	.app-board-category .app-category-child>ul>li.app-ative>a{font-weight:600}
	
	.app-board-category>li:hover>.app-category-child{display:block}
	
	div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    	}
    
    	div.right {
        
        float: right;
        box-sizing: border-box;
        
   		}
	</style>
</head>

<body>
  
   <jsp:include page="/WEB-INF/views/common/adminSidebar.jsp"/>
   <jsp:include page="/WEB-INF/views/common/topbar.jsp"/>
  
   
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
                          <li class="breadcrumb-item"><a href="index.jsp">
                          <i class="feather icon-home"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  <!-- [ breadcrumb ] end -->
  
  
	<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
	

	 
	<!-- 메인레버 -->
	<div id="wrapper">

		<!-- 컨텐츠 영역 -->
		<div class="container-fluid">
		
		<!-- 타이틀 영역 -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
               <h5>공지사항</h5>
            </div>
            
             
            
    <!-- 리스트 영역 -->
    	
   
 
    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                        
                        
                            	<table id="noticeAdminList" class="table table-hover row-border  nowrap">
	                                <thead>
	                                    <tr>
	                                    <th id="check" style="width: 7%; text-align: center;">
	                                    <input type="checkbox" name="all_selected"></th>
	                                    <th id="sNo" style="width: 5%;">번호</th>
	                                    <th id="sStatus" style="width: 30%;">제목</th>
	                                    <th id="sTitle" style="width: 5%;">작성일</th>
	                                    <th id="sDate" style="width: 5%;">조회수</th>
	                                    <th id="sWriter" style="width: 15%;">작성자</th>
	                                    </tr>
	                                </thead>
	                                
	                                
	                                <tbody> 
	                                <c:forEach items="${ list }" var="n">
	                                <tr>
							            <td>${n.noticeNo}</td>
							            <td>${n.noticeTitle}</td>
							            <td>${n.noticeDate}</td>
							            <td>${n.count}</td>
							            <td>${n.noticeWriter}</td>
						            </tr>
						             </c:forEach>	
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

    
    
    <jsp:include page="../common/footer.jsp"/>
<script>
	$(document).ready(function() {
		var table = $('#noticeAdminList').DataTable({
			columnDefs: [
				{
		            className: 'select-checkbox',
		            targets:   0
		        },
		        
                { orderable: false, targets: [0,2,3,4,5]},

              ],
              select: {
		            style:    'multi',
		            selector: 'td:first-child'
		        },
		        order: [[ 2, 'asc' ]],
              dom: '<"float-left"B>frtp',

	        buttons: [{
	            text: '삭제',
	            className: 'btn-danger',
	            action: function(e, dt, node, config) {
	            }
	        }]
	    });
		$('input[name=all_selected]').on('click', function(){
			if ($(this).is( ":checked" )) {
				table.rows(  ).select();
			} else {
				table.rows(  ).deselect();
			}
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
	                                    