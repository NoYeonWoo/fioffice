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
                        <h3>권한관리</h3>
                    </div>
                    <div class="card-body table-border-style">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>메뉴명</th>
                                        <th>상세</th>
                                        <th>운영자/관리자/마스터</th>
                                        <th>설정바로가기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>기본관리자</td>
                                        <td>모든권한</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li> 
                                        			<span class="name" value="257">김다우</span>
                                        			<span class="btn_wrap">
                                        				<span class="pcoded-micon"><i class="feather icon-x "></i></span>
                                        			</span>
                                        		</li>
                                        		<li> 
                                        		<span class="name" value="256">관리자(메인)</span>
                                        		<span class="btn_wrap">
                                        			<span class="pcoded-micon"><i class="feather icon-x "></i></span>
                                        		</span>
                                        		</li>
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>모든권한</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>인사관리</td>
                                        <td>조직 및 인사관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>인사관리</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>게시판</td>
                                        <td>공지사항 관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>공지사항</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>주소록</td>
                                        <td>공용 주소록 관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>주소록</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>캘린더</td>
                                        <td>전사 및 전체 일정관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>캘린더</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>설문</td>
                                        <td>전사 설문 관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>설문</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>상품입출고</td>
                                        <td>상품 입출고 관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>상품입출고</span></a></td>
                                    </tr>
                                    <tr>
                                        <td>결재</td>
                                        <td>결재관리</td>
                                        <td>
                                        	<ul class="name_tag">
                                        		<li class="creat add_admin"> 
                                        		<span class="btn_wrap"> 
                                        			<span class="pcoded-micon"><i class="feather icon-plus m-l-5"></i></span>
                                        			<span class="txt">운영자 추가</span> 
                                        		</span> 
                                        		</li>
                                        	</ul>
                                        </td>
                                        <td><a href="index.jsp"><span class="pcoded-micon"><i class="feather icon-external-link "></i></span><span>결재</span></a></td>
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


    
    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>