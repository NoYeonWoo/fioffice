<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/ablePro/assets/images/favicon.ico" type="image/x-icon">
    	
<!-- CSS -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/assets/css/style.css" />
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

	</style>
</head>

<body>
  
   <jsp:include page="/WEB-INF/views/common/sidebar.jsp"/>
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
                          <li class="breadcrumb-item"><a href="index.jsp"><i class="feather icon-home"></i></a></li>
                          <li class="breadcrumb-item"><a href="clist.bo">커뮤니티</a></li>
                         <li class="breadcrumb-item"><a href="dlist.bo">부서 게시판</a></li>
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
               <h5>부서 게시판</h5>
            </div>
            
            
    <!-- 리스트 영역 -->
	<div class="app-board-section">


    <ul class="app-board-template-list">
                
        <li>
            <a class="tw-flex-1" href="ddetail.bo">
            
	        <div class="tw-flex-1">
	          	<div class="app-list-title tw-flex-wrap">
	            	<span>[getCategory]
	            	<span class="tw-mr-1">게시글 제목입니다.</span>
	            	</span>
				</div>
	          
	          <div class="app-list-meta">
	             <span>
	              <div class="app-list-member" style="color: #;">
	                	<div class="app-avatar" style="width: 1.25rem; height: 1.25rem;">
	                 		<div class="member_4 tw-inline-flex tw-items-center">김영찬</div>
	              		</div>
				</div>
	            </span>        
				<span title="2021-02-04 01:33:27">2021.03.09</span>                                    
	                                                                  
	            <span>
	               <span class="tw-mr-1">조회</span>
	               <span>10</span>
	            </span>              
	         </div>
         
        	</div> <!--   <div class="tw-flex-1"> -->
        	</a>
    	</li>
    </ul>



    <ul class="app-board-template-list">
                
        <li>
            <a class="tw-flex-1" href="ddetail.bo">
            
	        <div class="tw-flex-1">
	          	<div class="app-list-title tw-flex-wrap">
	            	<span>[getCategory]
	            	<span class="tw-mr-1">게시글 제목입니다.</span>
	            	</span>
				</div>
	          
	          <div class="app-list-meta">
	             <span>
	              <div class="app-list-member" style="color: #;">
	                	<div class="app-avatar" style="width: 1.25rem; height: 1.25rem;">
	                 		<div class="member_4 tw-inline-flex tw-items-center">이윤해</div>
	              		</div>
				</div>
	            </span>        
				<span title="2021-02-04 01:33:27">2021.03.08</span>                                    
	                                                                  
	            <span>
	               <span class="tw-mr-1">조회</span>
	               <span>80</span>
	            </span>              
	         </div>
         
        	</div> <!--   <div class="tw-flex-1"> -->
        	<!-- 댓글 count -->
        	<div class="app-list-comment">20</div>
        	</a>
    	</li>
    </ul>
    
     <ul class="app-board-template-list">
                
        <li>
            <a class="tw-flex-1" href="ddetail.bo">
            
	        <div class="tw-flex-1">
	          	<div class="app-list-title tw-flex-wrap">
	            	<span>[getCategory]
	            	<span class="tw-mr-1">게시글 제목입니다.</span>
	            	</span>
				</div>
	          
	          <div class="app-list-meta">
	             <span>
	              <div class="app-list-member" style="color: #;">
	                	<div class="app-avatar" style="width: 1.25rem; height: 1.25rem;">
	                 		<div class="member_4 tw-inline-flex tw-items-center">노연우</div>
	              		</div>
				</div>
	            </span>        
				<span title="2021-02-04 01:33:27">2021.03.04</span>                                    
	                                                                  
	            <span>
	               <span class="tw-mr-1">조회</span>
	               <span>15</span>
	            </span>              
	         </div>
         
        	</div> <!--   <div class="tw-flex-1"> -->
        	<!-- 댓글 count -->
        	<div class="app-list-comment">11</div>
        	</a>
    	</li>
    </ul>

                
                <!--글쓰기 버튼  -->
                <div><br>
                <div align="right">
                <a href="dinsertForm.bo" class="btn btn-primary btn-icon-split">
					<span class="icon text-white-50">
						<i class="fas fa-plus"></i>
					</span>
					<span class="text" style="color: white">&nbsp;글쓰기</span>
				</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<br>
				</div>
				
				
				
              </div>
              
              <!-- 페이지 영역  -->
               	<div class="row" style="width: 90%; margin-left: 5%;">
               		<div class="pagination">

							<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#!">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#!">1</a></li>
								<li class="page-item"><a class="page-link" href="#!">2</a></li>
								<li class="page-item"><a class="page-link" href="#!">3</a></li>
								<li class="page-item"><a class="page-link" href="#!">Next</a></li>
							</ul>
						</nav>
						
					
					</div>
               </div>
				
            </div>
          </div>			
				

		</div>

	
	
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
</body>
</html>