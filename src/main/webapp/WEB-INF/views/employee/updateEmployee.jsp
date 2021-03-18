<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>

 td{
  height: 10px;

}


</style>
</head>

<body class=" ">

	<jsp:include page="/WEB-INF/views/common/adminSidebar.jsp"></jsp:include>
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
  

			<div class="col-lg-10">
				<div class="card mb-4">
					<div class="card-header">
						<h3>사원수정</h3>
					</div><br><br>
					<div class="card-body">
					
					
						<form name="newEmpForm" method="post" >
						
						                              

							<table class="table table-bordered" >
							
                                <tr>
                                 <td style="width:10%">이름</td>
                                 <td style="width:40%"><input type="text" class="form-control form-control-sm" style="width:40%" name="empName" id="empName"></td>
                                 <td style="width:10%">주민번호</td>
                                 <td style="width:40%">
                                      <div class="row">
										<div class="col-sm-4 mb-sm-0">
											<input type="text" id= "resNo1" name="resNo" class="form-control form-control-user" max="6">
										</div><label>-</label>
										<div class="col-sm-4">
											<input type="text" id="resNo2" name="resNo" class="form-control form-control-user">
										</div>
									   </div>

										
										</td>
                                </tr>
							
                                <tr>
                                 <td style="width:10%">부서</td>
                                 <td style="width:25%"><input type="text" class="form-control form-control-sm" style="width:25%" name="deptName" id="deptName"></td>
                                 <td style="width:10%">직급</td>
                                 <td style="width:25%"><input type="text" class="form-control form-control-sm" style="width:25%" name="empPosition" id="empPosition"></td>
                                </tr>
															
                                <tr>
                                 <td style="width:10%">입사일</td>
                                 <td style="width:25%"><input type="date" id="joinDate" name="joinDate" class="form-control form-control-user" style="width: 50%;"></td>
                                 <td style="width:10%">개인번호</td>
                                 <td style="width:25%">
										
											<input type="text" id="phone1" name="phone" class="form-control form-control-user" placeholder="(-)포함 입력해주세요" style="width: 50%;"></td>
										
                                </tr>
                                
                                							
                                <tr>
                                 <td style="width:10%">내선번호</td>
                                 <td style="width:25%">									
                                 		<input type="text" id="officePhone" name="officePhone" class="form-control form-control-user" placeholder="(-)포함 입력해주세요" style="width: 50%;"></td>
</td>
                                 <td style="width:10%">이메일</td>
                                 <td style="width:25%">			
									<div class="row">
										<div class="col-sm-4 mb-sm-0">
											<input type="text" id= "email1" name="email" class="form-control form-control-user" max="6">
										</div><label>@</label>
										<div class="col-sm-4">
											<input type="text" id="email2" name="email" class="form-control form-control-user">
										</div>
									   </div>
									</td>
                                </tr>
                                
                                
                             <tr>
                                 <td style="width:10%">주소</td>
                                 <td colspan="3">       
				             		<div class="form-inline"><!-- 인라인 폼은 가로로 배열된 형태로 폼태그에 form-inling 클래스를 사용합니다.  -->
									<label> &nbsp; 우편번호 :  </label>
									<input type="text"  name="post" class="form-control mr-2 postcodify_postcode5" value="${ post }" style="width:25%">
									<button type="button" class="btn btn-primary" id="postcodify_search_button">검색</button>
									
									<br><br><br>
									<label> &nbsp; 도로명주소 : </label>
									<input type="text" name="address1" class="form-control postcodify_address" value="${ address1 }" style="width:35%">
								    </div><br>
								    <label> &nbsp;상세주소 : </label>
									<input type="text" name="address2" class="form-control postcodify_extra_info" value="${ address2 }" style="width:35%">
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