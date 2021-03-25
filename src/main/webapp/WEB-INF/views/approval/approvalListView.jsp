<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

</head>

<body class="">

	<jsp:include page="/WEB-INF/views/common/sidebar.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/topbar.jsp"></jsp:include>
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
  
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							
						  <h3 class="m-0 font-weight-bold text-primary">나의 문서함</h3> <a class="btn btn-secondary" style="float:right" href="approvalInsertForm.do"> <i class="fas fa-file-signature"></i>결재하기</a>
						 	
					  
							</div>
						<div class="card-body">
						    ● 결재 진행 > 진행 문서 <br><br>
							<table class="table table-bordered" id="boardList" style="text-align: center; width:80%;" >
								<tr>
									<th style="width:10%;">품의 번호</th>
					             	<th style="width:10%;">기안일</th>
									<!--  <th style="width:10%;">결재양식</th>		-->				
									<th style="width:10%;">긴급</th>
									<th>제목</th>
									
								</tr>

								<tbody>
	                 <c:forEach items="${ ylist }" var="yl">
								<tr>
										<td >${yl.approvalNo }</td>
							      		<td >${yl.approvalDate }</td>
							          <!--   <td >${yl.formName }</td> -->
						 	          	<td >${yl.urgent }</td>
						          	   	<td >${yl.approvalTitle }</td>
						          	     
									</tr>
                    </c:forEach>
								</tbody>
							</table>
							
							     <caption>● 결재 진행 > 반려 문서</caption> <br><br>
								<table class="table table-bordered" style="text-align: center; width:80%;" >
								<tr>
									<th style="width:10%;">품의 번호</th>
					             	<th style="width:10%;">기안일</th>
									<th>결재양식</th>						
									<th>긴급</th>
									<th>제목</th>
									
								</tr>

								<tbody>

								<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
						          	   
									</tr>

								</tbody>
							</table>
							
							
							 <caption>● 결재 진행 > 완료 문서</caption> <br><br>
							<table class="table table-bordered" style="text-align: center; width:80%;" >
								<tr>
									<th style="width:10%;">품의 번호</th>
					             	<th style="width:10%;">기안일</th>
									<th>결재양식</th>						
									<th>긴급</th>
									<th>제목</th>
									
								</tr>

								<tbody>

								<tr>
										<td ><a></a>데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	     <td >데이터가 없습니다.</td>
						          	    
									</tr>

								</tbody>
							</table>			
						</div>
					</div>
				</div>


               <div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="m-0 font-weight-bold text-primary"
								style="display: inline-block;">나의 결재</h3>
						</div>
						<div class="card-body">
						  <caption>● 결재 진행 > 미결재 문서</caption> <br><br>
							<table class="table table-bordered" style="text-align: center;">
							<tr>
									<th>품의 번호</th>
									<th>기안일</th>
									<th>기안자</th>
									<th>제목</th>
									<th>상태</th>
									
								</tr>

								<tbody>
                                   	<c:forEach items="${ list }" var="b">
									<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
						          	  
						          	   
						          	   
				
									</tr>
									</c:forEach>
								</tbody>
							</table>
							
							<caption>● 결재 진행 > 결재 문서</caption> <br><br>
							<table class="table table-bordered" style="text-align: center;">
							<tr>
									<th>품의 번호</th>
									<th>기안일</th>
									<th>기안자</th>
									<th>제목</th>
									<th>상태</th>
									
								</tr>

								<tbody>
                                   	<c:forEach items="${ list }" var="b">
									<tr>
										<td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
							            <td >데이터가 없습니다.</td>
						 	            <td >데이터가 없습니다.</td>
						          	   <td >데이터가 없습니다.</td>
						          	  
						          	   
						          	   
				
									</tr>
									</c:forEach>
								</tbody>
							</table>
							
							
						</div>
					</div>
				</div>

<script>
$(function(){
	$("#boardList tbody tr").click(function(){
		location.href="approvalDetailView.do?ano=" + $(this).children().eq(0).text();
	});
});
</script>
     



			</div>
			<!--지우지 마세요    div class="row"  -->
		</div>
		<!--지우지 마세요   div class="pcoded-content"  -->
	</div>
	<!--지우지 마세요    div class="pcoded-main-container"  -->
	<!-- [ Main Content ] 메인화면 끝 -->




	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>