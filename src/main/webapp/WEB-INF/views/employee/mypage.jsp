<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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



			<div class="col-md-5">
				<div class="card mb-4">
					<div class="card-header">
						<h3>프로필관리</h3>
					</div>
					<div class="card-body">
						<form name="newEmpForm" method="post" autocomplete="off">
							<table class="table table-bordered" id="dataTable">
								<colgroup>
									<col width="30%">
									<col>
								</colgroup>
								<tr>
									<td style="vertical-align: middle">이름</td>
									<td>이윤해</td>
								</tr>
				
								<tr>
									<td style="vertical-align: middle">소속부서</td>
									<td>영업/영업1팀 </td>
								</tr>
								<tr>
									<td style="vertical-align: middle">직급</td>
									<td>사원(E1)</td>
								</tr>
						
								<tr>
									<td style="vertical-align: middle">개인번호</td>
									<td> 010-2568-2222 	</td>
								</tr>
								<tr>
									<td style="vertical-align: middle">내선번호</td>
									<td>
										032)345-3333
									</td>
								</tr>
								<tr>
									<td style="vertical-align: middle">이메일</td>
									<td> yunhae@naver.com
								
										</div>
									</td>
								</tr>
					
							</table>
						</form>
				
						
				</div>
				</div>


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