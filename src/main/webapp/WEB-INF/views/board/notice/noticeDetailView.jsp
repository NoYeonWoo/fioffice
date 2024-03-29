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
<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/board/assets/js/boardjs.css"></script>

	<style>
	
		:root {
		--aside-width: 17.625rem;
		}
		
		a.app-pc-only.app-article-meta-item {
		
			color: #868E96;
		
		}
		
		div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    	}
    
    	div.right {
        
        float: right;
        box-sizing: border-box;
        
   		}
   		
   		div.comment {
        
       	text-align: right;
       	 
   		}
   		
 	th,td {padding:15px;}
   		


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
            

	<!-- 게시글 제목 영역 -->
	
	<div class="app-board-article-head">
	<div class="app-board-container">

	<h1 class="tw-font-bold tw-text-3xl md:tw-text-xl">${ n.noticeTitle }</h1>
	<div class="tw-flex tw-items-end">
	<div class="app-board-article-profile tw-flex tw-items-center">
	<div class="app-profile-image app-avatar">
	<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/admin.png" alt="Profile" /> </div>
		<div class="tw-flex-1 app-profile-body">

	<a class="tw-flex tw-items-center tw-font-bold tw-text-sm link member_4 author">관리자</a>
	<div class="app-article-meta">
	<div class="app-article-meta-item">${ n.noticeDate }</div>
	
	<div class="app-article-meta-divider"> ・ </div>
	<div class="app-article-meta-item">조회 수 ${ n.count }</div>
	<div class="app-article-meta-divider"> ・ </div>
	<a href="#reply" class="app-pc-only app-article-meta-item">댓글 </a>
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
			${ n.noticeContent }<br><br>
			
		</div>
	
	<!-- 비율용 -->
	<form id="postForm" action="" method="post">
					<input type="hidden" name="nno" value="${ n.noticeNo }">
					<input type="hidden" name="fileName" value="${ n.changeName }"> 
	</form>
	
		<div class="tw-flex tw-pt-8">
			<div class="tw-flex-1">
		</div>
	</div>
	
	<!-- 첨부파일 -->
	<table>
				<tbody>
					<th>첨부파일</th>
                    <td colspan="3">
                    	<c:if test="${ !empty n.originName }">
                        	<a href="${ pageContext.servletContext.contextPath }/resources/upload_files/${n.changeName}" download="${ n.originName }">${ n.originName }</a>
                        </c:if>
                        <c:if test="${ empty n.originName }">
                        	첨부파일이 없습니다.
                        </c:if>
                    </td>
                    </tbody>
                    </table>

	</div>
		

	
	
	
	<!-- 댓글 영역 -->

   
   	
	<table>
		<thead>
		<tr>
		<div class="app-comment-header app-board-container tw-flex tw-items-center">
			<div class="tw-font-bold tw-text-base tw-mr-2" >댓글</div>
			    <div class="tw-text-sm">
			      <span class="tw-text-gray-700">총</span>
			      <span class="tw-text-primary tw-text-gray-700" id="rcount"></span><span class="tw-text-gray-700">개</span>
			    </div>
		</div>
		</tr>
	  <br>
	  </thead>
	  </table>

	 	
	  <table id="reply" align="center" style="border-collapse:collapse; padding:10px;">
                <tbody>
                </tbody>
      </table>


            
        <!-- 댓글 작성 영역 -->
		<br>
		 <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                    	<c:if test="${ !empty loginUser }">
	                        <th colspan="2" style="width:100%">
	                            <textarea class="app-textarea" id="replyContent" rows="2" style="resize:none; width:100%"></textarea>
	                        </th>
	                        <th style="vertical-align: middle"><button class="btn btn-primary" id="addReply">등록하기</button></th>
                        </c:if>
                        <c:if test="${ empty loginUser }">
                        	<th colspan="2" style="width:100%">
	                            <textarea class="app-textarea" readonly rows="2" style="resize:none; width:100%">로그인한 사용자만 사용가능한 서비스입니다. 로그인 후 이용해주세요.</textarea>
	                        </th>
	                        <th style="vertical-align: middle"><button class="btn btn-primary" disabled>등록하기</button></th>
                        </c:if>
                    </tr>
                    <tr>
                       <td colspan="3"></td> 
                    </tr>
                </thead>
                <tbody>
                
                </tbody>
            </table>
            
	
	

    
      <script>
    	$(function(){
    		selectReplyList();
    		
    		$("#addReply").click(function(){
        		var nno = ${n.noticeNo};

    			if($("#replyContent").val().trim().length != 0){
    				
    				$.ajax({
    					url:"rinsert.bo",
    					type:"post",
    					data:{replyContent:$("#replyContent").val(),
    						  refBoardNo:nno,
    						  replyWriter:"${loginUser.empNo}"},
    					success:function(result){
    						if(result > 0){
    							$("#replyContent").val("");
    							selectReplyList();
    							
    						}else{
    							alert("댓글등록실패");
    						}
    					},error:function(){
    						console.log("댓글 작성 ajax 통신 실패");
    					}
    				});
    				
    			}else{
    				alert("댓글 내용을 입력하세요.");
    			}
    			
    		});
    	});
    	
    	function selectReplyList(){
    		var nno = ${n.noticeNo};
    		$.ajax({
    			url:"rlist.bo",
    			data:{nno:nno},
    			type:"get",
    			success:function(list){
    				$("#rcount").text(list.length);
    				
    				var value="";
    				$.each(list, function(i, obj){
    					
    					if("${loginUser.empNo}" == obj.replyWriter){
    						value += "<tr style='background:#F1F3F5'>";
    					}else{
    						value += "<tr>";
    					}
    					
    					value += "<th style='width:10%'>&nbsp;&nbsp;" + obj.replyWriterName + "</th>" +
   								 "<td style='width:80%'>" + obj.replyContent + "</td>" +
   								 "<td style='width:10%'>" + obj.replyDate + "</td>" +
    						 "</tr>";
    				});
    				$("#reply tbody").html(value);
    			},error:function(){
    				console.log("댓글 리스트조회용 ajax 통신 실패");
    			}
    		});
    	}
    </script>
    
    
    
    <!-- 목록 하단 -->
    
    <div>
			 	<div class="right">
			       
				</div>
				<div class="left">
			        <a href="nlist.bo" class="app-button app-button-rounded app-button-xs primary">
						<span class="text" style="color: white">목록</span>
					</a>
				</div>
			</div>
		
			
	</div>
	<br>
    
	
	</div> <!-- div class="container-fluid" -->
	</div> <!-- div class="wrapper" -->
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	

	
	</body>
	</html>
