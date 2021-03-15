<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/ablePro/assets/images/favicon.ico" type="image/x-icon">
      	
<!-- CSS -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/assets/css/style.css" />


<style>
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
</head>

<body class="">
 
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
               <h5>설문</h5>
            </div>
            
            
			
			
		<div>
		
		<!-- left -->
		<div class="left">
          		
			
                    <div class="table-responsive">
                        <div class="card-body" align="center">
				
				<!-- 설문 등록 -->
					<a href="sinsertForm.so" class="btn  btn-primary btn-lg">
					<span class="icon text-white-50">
						<i class="fas fa-plus"></i>
					</span>
					<span class="text" style="color: white">&nbsp;설문등록</span>
					</a>
					<br><br>
						
		<ul class="pcoded-submenu">
				<li>
					<p class="title">
						<a href="" data-category="progress">
							<span class="txt" title="진행중인 설문">진행중인 설문</span>
						</a>
					</p>
				</li>
				<li>
					<p class="title">
						<a href="" data-category="finished">
							<span class="txt" title="마감된 설문">마감된 설문</span>
						</a>
					</p>
				</li>
				<li>
					<p class="title">
						<a href="" data-category="my">
							<span class="txt" title="내가 만든 설문">내가 만든 설문</span>
						</a>
					</p>
				</li>
			</ul>
</div>
                      </div>
                  
		</div>
		
		
           		
           	<!-- 컨텐츠 영역 -->
           	
				<br>
				
				<div class="right">
				<div class="dataTables_wrapper container">
				        <table class="chart size dataTable" id="surveyList" style="width: 100%; margin-bottom: 0px;">
                <thead>
                    <tr role="row">

                    <th class="sorting_disable sorting_disabled" role="columnheader"
                    rowspan="1" colspan="1" aria-label="번호" style="width: 48px;">
                            <span class="title_sort">
                                <label>번호</label>
                            </span>
                     </th>
                     
                     <th class="align_c sorting" role="columnheader" tabindex="0" aria-controls="surveyList"
                        rowspan="1" colspan="1" aria-label="상태 : activate to sort column ascending" style="width: 68px;">
                            <span class="title_sort">
                                <label>상태</label>
                                <ins class="ic"></ins><span class="selected"></span>
                            </span>
                     </th>
                        
                      <th class="title sorting" role="columnheader" tabindex="0" aria-controls="surveyList"
                        rowspan="1" colspan="1" aria-label="제목: activate to sort column ascending" style="width: 278px;">
                            <span class="title_sort">
                                <label>제목</label>
                                <ins class="ic"></ins><span class="selected"></span>
                            </span>
                      </th>
                      
                      <th class="sorting_disable align_c sorting" role="columnheader" tabindex="0" aria-controls="surveyList"
                        rowspan="1" colspan="1" aria-label="설문 기간: activate to sort column ascending" style="width: 318px;">
                            <span class="title_sort">설문 기간</span>
                            
                      </th>
                      
                      <th class="last title sorting" role="columnheader" tabindex="0" aria-controls="surveyList"
                        rowspan="1" colspan="1" aria-label="작성자 : activate to sort column ascending" style="width: 168px;">
                            <span class="title_sort">
                                <label>작성자</label>
                                <ins class="ic"></ins><span class="selected"></span>
                            </span>
                      </th>
                      
                      </tr>
                </thead>
            
 
            <tbody role="alert">
            <tr class="odd">
	            <td class="surveyNo">57</td>
	            <td class="status">진행중</td>
	            <td class="title"><a href="sdetail.so">
	            <span class="txt">송년회 장소</span></a>
	            <td class="date">2021-03-12 ~ 2021-03-13</td>
	            <td class="writer">김상후 대표이사</td>
            </tr>
            </tbody>
            
            </table>
		</div>
        </div>
        
        
         <!-- 페이지 영역  -->
              <br><br>
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
         <br>
        
        </div>
        </div>
        
        
        
        </div> <!-- left right -->
		</div>
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->
	

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    
    
<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/board/assets/js/boardjs.css"></script>
  
  
</body>
</html>