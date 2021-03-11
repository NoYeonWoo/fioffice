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
		
	</style>
</head>

<!-- BODY START -->
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
            

	<!-- 게시글 제목 영역 -->
	
	<div class="app-board-article-head">
	<div class="app-board-container">
	<!-- <img src="" alt=""> -->
	<h1 class="tw-font-bold tw-text-3xl md:tw-text-xl">디테일뷰 테스트</h1>
	<div class="tw-flex tw-items-end">
	<div class="app-board-article-profile tw-flex tw-items-center">
	<div class="app-profile-image app-avatar">
	<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png" alt="Profile" /> </div>
		<div class="tw-flex-1 app-profile-body">

	<a class="tw-flex tw-items-center tw-font-bold tw-text-sm link member_4 author">오수현</a>
	<div class="app-article-meta">
	<el-tooltip content="2021-02-04 01:33:27">
	<div class="app-article-meta-item">2021.02.04</div>
	</el-tooltip>
	<div class="app-article-meta-divider"> ・ </div>
	<div class="app-article-meta-item">조회 수 1</div>
	<div class="app-article-meta-divider"> ・ </div>
	<div class="app-article-meta-item">추천 수 0</div>
	<div class="app-article-meta-divider app-pc-only"> ・ </div>
	<a href="#comment" class="app-pc-only app-article-meta-item">댓글 0</a>
	</div>
	</div>
	</div> <div class="tw-flex-1"></div>
	</div>
	</div>
	</div>
	<div class="app-board-container tw-flex tw-items-center tw-pt-5">
	
	<div class="tw-flex-1"></div>
	</div>
	
	<!-- 본문 영역 -->
	<div class="app-board-container app-article-container">
	
	<div class="app-article-content app-clearfix">
		<div class="document_138_4 rhymix_content xe_content">
			본문 내용입니다.<br>추천은 커뮤니티에만.<br><br>
			<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png" alt="Profile" />
		</div>
	
	<!-- 비율용 -->
		<div class="tw-flex tw-pt-8">
			<div class="tw-flex-1">
			</div>
		</div>
	</div>
	
	<!-- 추천 영역 -->
	<div class="app-article-footer">
	
	<div class="app-article-vote">
		<div class="card-body">
			<button type="button" class="btn btn-outline-primary"><i class="feather mr-2 icon-thumbs-up"></i>추천 수
			<span class="app-article-vote__count">0</span>
			</button>
		</div>
	</div>
	</div>
	</div>
		

	
	
	
	<!-- 댓글 영역 -->

   
   	
   
	<div class="app-board-comment-target" id="comment"></div>
		<div class="app-comment-header app-board-container tw-flex tw-items-center">
			<div class="tw-font-bold tw-text-base tw-mr-2" >댓글</div>
			    <div class="tw-text-sm">
			      <span class="tw-text-gray-700">총 </span>
			      <span class="tw-text-primary tw-text-gray-700">count</span><span class="tw-text-gray-700">개</span>
			    	
			    </div>
			</div>
	  <br>
		  
	  <!-- 등록되는 댓글 영역 -->
		<ul id="app-board-comment-list" class="app-board-comment-list">
		  <li id="comment_227" class="app-comment-item app-clearfix ">
		    	<div class="tw-flex-1 tw-pl-4">
		       		<div class="tw-flex tw-items-center tw-flex-wrap">
			    		<div class="tw-flex tw-items-center tw-text-sm tw-font-bold ">
			   		 		<span class="tw-flex tw-items-center">오수현</span> 
			 			 </div>
		      
		    		</div>
			            <div class="app-comment-content tw-py-3">
			              	<div class="comment_227_0 rhymix_content xe_content">댓글 테스트입니다.</div>
			         	</div>
				</div>
			</li>
		</ul> 
		<ul id="app-board-comment-list" class="app-board-comment-list">
		  <li id="comment_227" class="app-comment-item app-clearfix ">
		    	<div class="tw-flex-1 tw-pl-4">
		       		<div class="tw-flex tw-items-center tw-flex-wrap">
			    		<div class="tw-flex tw-items-center tw-text-sm tw-font-bold ">
			   		 		<span class="tw-flex tw-items-center">이윤해</span> 
			 			 </div>
		      
		    		</div>
			            <div class="app-comment-content tw-py-3">
			              	<div class="comment_227_0 rhymix_content xe_content">댓글 테스트입니다.</div>
			         	</div>
				</div>
			</li>
		</ul> 
		<ul id="app-board-comment-list" class="app-board-comment-list">
		  <li id="comment_227" class="app-comment-item app-clearfix ">
		    	<div class="tw-flex-1 tw-pl-4">
		       		<div class="tw-flex tw-items-center tw-flex-wrap">
			    		<div class="tw-flex tw-items-center tw-text-sm tw-font-bold ">
			   		 		<span class="tw-flex tw-items-center">노연우</span> 
			 			 </div>
		      
		    		</div>
			            <div class="app-comment-content tw-py-3">
			              	<div class="comment_227_0 rhymix_content xe_content">댓글 테스트입니다.</div>
			         	</div>
				</div>
			</li>
		</ul>
		<ul id="app-board-comment-list" class="app-board-comment-list">
		  <li id="comment_227" class="app-comment-item app-clearfix ">
		    	<div class="tw-flex-1 tw-pl-4">
		       		<div class="tw-flex tw-items-center tw-flex-wrap">
			    		<div class="tw-flex tw-items-center tw-text-sm tw-font-bold ">
			   		 		<span class="tw-flex tw-items-center">김영찬</span> 
			 			 </div>
		      
		    		</div>
			            <div class="app-comment-content tw-py-3">
			              	<div class="comment_227_0 rhymix_content xe_content">댓글 테스트입니다.</div>
			         	</div>
			         	<div align="right">
			         	<a class="comment-item-tool app-link tw-mr-2">답글</a> 
			         	</div>
				</div>
			</li>
		</ul>   
      
      
	<!-- 댓글 작성폼 영역 -->
	<div class="app-comment-write">
	<div class="tw-flex">
	<textarea id="comment-textarea" class="app-textarea" style="resize: none"></textarea>
	<textarea id="editor-138" name="content" style="display: none;"></textarea>
	</div>
	<br>
	 	<div align="right">
	        <a href="rinsert.bo" class="app-button app-button-rounded app-button-xs primary">
				<span class="text" style="color: white">댓글 등록</span>
			</a>
		</div>
		</div>
	
	</div> <!-- 댓글 영역-->

	
	
	</div> <!-- div class="container-fluid" -->
	</div> <!-- div class="wrapper" -->
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	

	
	</body>
	</html>
