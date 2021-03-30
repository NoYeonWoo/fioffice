<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

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
                            <li class="breadcrumb-item"><a href="#!">My Portal</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  <!-- [ breadcrumb ] end -->
  
  
<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
<div class="row">
			
			<form action="detail.email" method="post" id="goMail">
    				<input type="hidden" name="eno" id ="eno" value="${loginUser.empNo}">
    			</form>



				<!-- [ stiped-table ] start -->
				<div class="col-xl-12">
					<div class="card">
						<div class="card-header">
							<h5>주소록</h5>
							<span class="d-block m-t-5">
								<div class="card-body">
									<input type="text" class="form-control" id="Email" aria-describedby="emailHelp" value="123">
                        			<br>
                        			<button type="button" class="btn  btn-secondary">검색하기</button>
                        			<button type="button" class="btn  btn-primary" onclick="$('#goAdd').submit();">내 주소록</button></a>

								</div>
							</span>

						</div>
						<div class="card-body table-border-style">
							<div class="table-responsive">
								<table class="table table-striped" id="addressList">
									<thead>
										<tr>
											<th>보낸사람</th>
											<th>제목</th>
											<th>네용</th>
											<th>날짜</th>
											<th>(상대)이메일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${ list }" var="e">
											<tr>
												<td>${ e.emailSend }</td>
												<td>${ e.emailTitle }</td>
												<td>${ e.emailContent }</td>
												<td>${ e.emailTime }</td>
												<td>${ e.emailSendEmail }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								
								
							</div>
						</div>
					</div>
				</div>
				<!-- [ stiped-table ] end -->



				<div id="pagingArea">
					<ul class="pagination">
						<c:choose>
							<c:when test="${ pi.currentPage ne 1 }">
								<li class="page-item"><a class="page-link"
									href="view.email?currentPage=${ pi.currentPage-1 }"><div class="feather icon-chevron-left"></div></a></li><!--이전페이지 -->
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link" href=""><div class="feather icon-chevron-left"></div></a></li>
							</c:otherwise>
						</c:choose>

						<!-- ㅇㅁㄴㅇㅁ노암닝ㅁ너ㅣㅏ어ㅣㅁ넝ㅁ너ㅏ암너         이제 번호 클릭이동 -->
						
						<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
							<c:choose>
								<c:when test="${ pi.currentPage ne p }">
									<li class="page-item"><a class="page-link"
										href="view.email?currentPage=${ p }">${ p }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item disabled"><a class="page-link"
										href="">${ p }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>


						<c:choose>
							<c:when test="${ pi.currentPage ne pi.maxPage }">
								<li class="page-item"><a class="page-link"
									href="view.email?currentPage=${ pi.currentPage+1 }"><div class="feather icon-chevron-right"></div></a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link"
									href="view.email?currentPage=${ pi.currentPage+1 }"><div class="feather icon-chevron-right"></div></a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

				<br clear="both">
				<br> <br>
				<br>
			</div>
			<br>
			<br>
		</div>





 
 
 			</div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->
<script>
    	$(function(){
    		$("#boardList tbody tr").click(function(){
    			location.href="detail.bo?bno=" + $(this).children().eq(0).text();
    		});
    	});
    </script>

    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>