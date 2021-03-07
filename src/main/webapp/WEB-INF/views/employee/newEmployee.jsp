<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>

<body class="">

	<jsp:include page="/WEB-INF/views/common/adminSidebar.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/topbar.jsp"></jsp:include>
	<!--메인 화면 전체시작 -->
	<div class="pcoded-main-container">


		<div class="pcoded-content">



			<div class="col-lg-8">
				<div class="card mb-4">
					<div class="card-header">
						<h3>신규 사원 등록</h3>
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
									<td><input type="text" name="empName" id="name"
										class="form-control form-control-user" style="width: 50%;"></td>
								</tr>
								<tr>
								<td style="vertical-align: middle">주민번호</td>
									<td>
										<div class="row">
											<div class="col-sm-3 mb-sm-0">
												<input type="text" id="phone1" name="phone" placeholder=""
													class="form-control form-control-user">
											</div>-
											<div class="col-sm-3">
												<input type="text" id="phone2" name="phone"
													class="form-control form-control-user">
											</div>
								</tr>
								<tr>
									<td style="vertical-align: middle">소속부서코드</td>
									<td><input type="text" id="dapt_Code" id="dept"
										name="deptNo" class="form-control form-control-user"
										style="width: 50%;" ></td>
								</tr>
								<tr>
									<td style="vertical-align: middle">직급</td>
									<td><input type="number" id="position" min="1" max="9"
										name="empPosition" class="form-control form-control-user"
										style="width: 50%;"></td>
								</tr>
								<tr>
									<td style="vertical-align: middle">입사일</td>
									<td><input type="date" id="joinDate" name="joinDate"
										class="form-control form-control-user" style="width: 50%;"></td>
								</tr>
								<tr>
									<td style="vertical-align: middle">퇴사일</td>
									<td><input type="date" id="endDate" name="endDate"
										class="form-control form-control-user" style="width: 50%;"></td>
								</tr>
								<tr>
									<td style="vertical-align: middle">개인번호</td>
									<td>
										<div class="row">
											<div class="col-sm-3 mb-sm-0">
												<input type="text" id="phone1" name="phone" placeholder="(010)"
													class="form-control form-control-user">
											</div>-
											<div class="col-sm-3">
												<input type="text" id="phone2" name="phone"
													class="form-control form-control-user">
											</div> -
											<div class="col-sm-3">
												<input type="text" id="phone3" name="phone"
													class="form-control form-control-user">
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td style="vertical-align: middle">내선번호</td>
									<td>
										<div class="row">
											<div class="col-sm-3 mb-sm-0">
												<input type="text" id="empphone1" name="empphone"
													class="form-control form-control-user">
											</div>
											<div class="col-sm-3">
												<input type="text" id="empphone2" name="empphone"
													class="form-control form-control-user">
											</div>
											<div class="col-sm-3">
												<input type="text" id="empphone3" name="empphone"
													class="form-control form-control-user">
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td style="vertical-align: middle">이메일</td>
									<td>
										<div class="row">
											<div class="col-sm-5 mb-sm-0">
												<input type="text" id="email1" name="email"
													class="form-control form-control-user">
											</div>
											<div class="col-sm-5">
												<input type="text" id="email2" name="email"
													class="form-control form-control-user">
											</div>
										</div>
									</td>
								</tr>
								
								
								<tr>
									<td style="vertical-align: middle">주소</td>
									<td id="">
									
																
									<label> &nbsp; 우편번호 : &nbsp;</label>
									<div class="col-sm-5 mb-sm-0"> 	 
									<input type="text" name="post" class="form-control mr-2 postcodify_postcode5" value="${ post }" size=""> <br> 
                                   </div>
                                   <label> &nbsp; 도로명주소 : </label> 
                                   <div class="col-sm-5 mb-sm-0"> 
                                   <input type="text"	name="address1" class="form-control postcodify_address" value="${ address1 }" size="10"> <br> 
                                   </div>
                                   <label>&nbsp; 상세주소 : </label> 
                                   <div class="col-sm-5 mb-sm-0"> 
                                   <input type="text" name="address2" class="form-control postcodify_extra_info" 	value="${ address2 }" size="10"> <br>
		  						    </div>
		  						  <button type="button" class="btn btn-primary" id="postcodify_search_button">검색</button> 
							     		  				
									</td>
								
								</tr>
							</table>
						</form>
						<!-- jQuery와 Postcodify를 로딩한다. -->
						<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
						<script>
					
							$(function() {
								$("#postcodify_search_button")
										.postcodifyPopUp();
							});
						</script>






						<!-- 등록하기 버튼 -->
						<a href="javascript:confirm();"
							class="btn btn-primary btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-check"></i>
						</span> <span class="text">등록하기</span>
						</a>
						<script type="text/javascript">
							function confirm() {
								var name = $("#name").val();
								var dept = $("#dept").val();
								var position = $("#position").val();
								var joinDate = $("#joinDate").val();
								var phone1 = $("#phone1").val();
								var phone2 = $("#phone2").val();
								var phone3 = $("#phone3").val();
								var empphone1 = $("#empphone1").val();
								var empphone2 = $("#empphone2").val();
								var empphone3 = $("#empphone3").val();
								var empphone2 = $("#empphone2").val();
								var empphone3 = $("#empphone3").val();
								var email1 = $("#email1").val();
								var email2 = $("#email2").val();
								var postcode = $("#postcode").val();
								if (name == "") {
									alert("이름이 입력되지 않았습니다!");
									$("$input").focus();
									return;
								}
								if (dept == "") {
									alert("부서코드는 비어있을 수 없습니다!");
									return;
								}
								if (position == "") {
									alert("직급은 비어있을 수 없습니다!");
									return;
								}
								if (joinDate == "") {
									alert("입사일은 비어있을수 없습니다!");
									return;
								}
								if (phone1 == "" || phone2 == ""
										|| phone3 == "") {
									alert("개인번호를 확인해주세요!");
									$("#phone1").focus();
									$("#phone1").val("");
									$("#phone2").val("");
									$("#phone3").val("");
									return;
								}
								if (phone1 == "" || phone2 == ""
										|| phone3 == "") {
									alert("개인번호를 확인해주세요!");
									$("#phone1").focus();
									$("#phone1").val("");
									$("#phone2").val("");
									$("#phone3").val("");
									return;
								}
								if (empphone1 == "" || empphone2 == ""
										|| empphone3 == "") {
									alert("내선번호를 확인해주세요!");
									$("#empphone1").focus();
									$("#empphone1").val("");
									$("#empphone2").val("");
									$("#empphone3").val("");
									return;
								}
								if (email1 == "" || email2 == "") {
									alert("이메일을 확인해주세요!");
									$("#email1").focus();
									$("#email1").val("");
									$("#email2").val("");
									return;
								}
								if (postcode == "") {
									alert("우편번호를 입력해주세요!");
									return;
								}

								document.newEmpForm.method = "post";
								document.newEmpForm.action = "insertNewEmp.do";
								document.newEmpForm.submit();
							}
						</script>
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