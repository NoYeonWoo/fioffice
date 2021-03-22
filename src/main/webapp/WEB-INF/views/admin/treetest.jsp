<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	ul.name_tag li {
	display: inline-block;
    float: left;
    margin: 0 4px 4px 0;
    height: 30px!important;
    background: #fff!important;
    border-radius: 30px!important;
    border: 1px solid #d5d5d5!important;
    line-height: 27px!important;
    padding: 0px 8px;
    color: #777;
	}
	ul.name_tag li.creat {
    border: 0!important;
    background: transparent!important;
    padding: 0!important;
   }
   .table td{
   line-height: 35px!important;
   }
   ul.name_tag{
   padding-inline-start:0px;
   margin-top:3px;
   }
   .table a{
   color:#000;
   }
   .table a:hover{
		cursor:pointer
}
   .a_tag{
   color: #777 !important;
   }
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/tree/zTreeStyle.css">

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

<div class="content_wrap">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>




 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->
<SCRIPT type="text/javascript">
		var setting = {
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		var zNodes =[
			{ id:1, pId:0, name:"pNode 1", open:true},
			{ id:11, pId:1, name:"pNode 11"},
			{ id:111, pId:11, name:"leaf node 111"},
			{ id:112, pId:11, name:"leaf node 112"},
			{ id:113, pId:11, name:"leaf node 113"},
			{ id:114, pId:11, name:"leaf node 114"},
			{ id:12, pId:1, name:"pNode 12"},
			{ id:121, pId:12, name:"leaf node 121"},
			{ id:122, pId:12, name:"leaf node 122"},
			{ id:123, pId:12, name:"leaf node 123"},
			{ id:124, pId:12, name:"leaf node 124"},
			{ id:13, pId:1, name:"pNode 13 - no child", isParent:true},
			{ id:2, pId:0, name:"pNode 2"},
			{ id:21, pId:2, name:"pNode 21", open:true},
			{ id:211, pId:21, name:"leaf node 211"},
			{ id:212, pId:21, name:"leaf node 212"},
			{ id:213, pId:21, name:"leaf node 213"},
			{ id:214, pId:21, name:"leaf node 214"},
			{ id:22, pId:2, name:"pNode 22"},
			{ id:221, pId:22, name:"leaf node 221"},
			{ id:222, pId:22, name:"leaf node 222"},
			{ id:223, pId:22, name:"leaf node 223"},
			{ id:224, pId:22, name:"leaf node 224"},
			{ id:23, pId:2, name:"pNode 23"},
			{ id:231, pId:23, name:"leaf node 231"},
			{ id:232, pId:23, name:"leaf node 232"},
			{ id:233, pId:23, name:"leaf node 233"},
			{ id:234, pId:23, name:"leaf node 234"},
			{ id:3, pId:0, name:"pNode 3 - no child", isParent:true}
		];

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
	</SCRIPT>
    
    <jsp:include page="../common/footer.jsp"/>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/tree/jquery.ztree.core-3.5.js"></script>
</html>