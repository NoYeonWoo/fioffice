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
               <h5>설문 관리</h5>
            </div>
            
            
    <!-- 리스트 영역 -->
	<div class="app-board-section">
	<br>
	<div class="dataTables_wrapper container">
        <div class="content_tb">
	            <div class="" style="" id="controlButtons">
	            <span class="btn_tool" id="btn_progress" data-status="progress">진행</span>
	            <span class="btn_tool" id="btn_stop" data-status="stop">중지</span>
	            <span class="btn_tool" id="btn_finished" data-status="finished">완료</span>
	            <span class="btn_tool txt_caution" id="btn_delete">삭제</span>
        </div>
        <br>
        

        
        <table class="chart size dataTable" id="surveyList" style="width: 100%; margin-bottom: 0px;">
                <thead>
                    <tr role="row">
                    <th class="sorting_disabled" role="columnheader"
                    rowspan="1" colspan="1" aria-label="" style="width: 18px;">
                   
                    <input type="checkbox" id="checkedAll"></th>
                    
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
	            <td class="check"><input name="id" type="checkbox" data-value="progress"></td>
	            <td class="surveyNo">57</td>
	            <td class="status">진행중</td>
	            <td class="title">오늘의 점심 메뉴</td>
	            <td class="date">2021-03-12 (금) 00:00 ~ 2021-03-13 (토) 23:59</td>
	            <td class="writer">김상후 대표이사</td>
            </tr>
            </tbody>
            
             <tbody role="alert">
            <tr class="odd">
	            <td class="check"><input name="id" type="checkbox" data-value="progress"></td>
	            <td class="surveyNo">57</td>
	            <td class="status">진행중</td>
	            <td class="title">오늘의 점심 메뉴</td>
	            <td class="date">2021-03-12 (금) 00:00 ~ 2021-03-13 (토) 23:59</td>
	            <td class="writer">김상후 대표이사</td>
            </tr>
            </tbody>
            
             <tbody role="alert">
            <tr class="odd">
	            <td class="check"><input name="id" type="checkbox" data-value="progress"></td>
	            <td class="surveyNo">57</td>
	            <td class="status">진행중</td>
	            <td class="title">오늘의 점심 메뉴</td>
	            <td class="date">2021-03-12 (금) 00:00 ~ 2021-03-13 (토) 23:59</td>
	            <td class="writer">김상후 대표이사</td>
            </tr>
            </tbody>
            
             <tbody role="alert">
            <tr class="odd">
	            <td class="check"><input name="id" type="checkbox" data-value="progress"></td>
	            <td class="surveyNo">57</td>
	            <td class="status">진행중</td>
	            <td class="title">오늘의 점심 메뉴</td>
	            <td class="date">2021-03-12 (금) 00:00 ~ 2021-03-13 (토) 23:59</td>
	            <td class="writer">김상후 대표이사</td>
            </tr>
            </tbody>
            
             <tbody role="alert">
            <tr class="odd">
	            <td class="check"><input name="id" type="checkbox" value="287" data-row="0" data-value="progress"></td>
	            <td class="surveyNo">57</td>
	            <td class="status">진행중</td>
	            <td class="title">오늘의 점심 메뉴</td>
	            <td class="date">2021-03-12 (금) 00:00 ~ 2021-03-13 (토) 23:59</td>
	            <td class="writer">김상후 대표이사</td>
            </tr>
            </tbody>

            
            </table>
        </div>
    </div>
                
              
				
				
              </div>
              
              
              
              <!-- 페이지 영역  -->
              <br>
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

	
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
</body>
</html>