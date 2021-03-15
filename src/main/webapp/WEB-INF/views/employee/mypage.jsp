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



			<div class="col-lg-10">
				<div class="card mb-4">
					<div class="card-header">
						<h3>마이페이지</h3>
					</div>
					<br>
					<br>
						
					<div class="row">
					
					
								<div class="col-2" style="margin-left:10%;">
								<div class="list-group" id="list-tab" role="tablist">
									<a class="list-group-item list-group-item-action active"
										id="list-updateForm-list" data-toggle="list"
										href="#list-updateForm" role="tab" aria-controls="home">내정보수정</a>
									<a class="list-group-item list-group-item-action"
										id="list-updatePwd-list" data-toggle="list"
										href="#list-updatePwd" role="tab" aria-controls="profile">비밀번호변경</a>
								
								</div>
							</div>
	 			
   <div class="tab-content" id="nav-tabContent">

					<div class="card-body tab-pane fade show active" id="list-updateForm"
						role="tabpanel" aria-labelledby="list-home-list">
   
  
      
      
						<form name="newEmpForm" method="post" autocomplete="off">

				
                             
                         
							<table class="table table-bordered" style="width:80%">
                               	<tr >
									<td style="height: 50px; " >사진 </td>
									<td  >
									     
				                         <img  id="titleImg"  border="1px" width="120" height="120" border="1px" > 
				                         <div id="filearea" >
				                         <input type="file" name="file1" id="file1" onchange="loadImg(this, 1);" > 
				                         </div>
				                         </td>
									
								</tr>
								<tr>
									<td style="width: 10%">이름</td>
									<td style="width: 40%"><input type="text"
										class="form-control form-control-user" style="width: 40%" readonly></td>
								</tr>
								<tr>
									<td style="width: 10%">개인번호</td>
									<td style="width: 40%">
										<div class="row">
											<div class="col-sm-3 mb-sm-0">
												<input type="text" id="phone1" name="phone"
													class="form-control form-control-user">
											</div>
											<div class="col-sm-3">
												<input type="text" id="phone2" name="phone"
													class="form-control form-control-user">
											</div>
											<div class="col-sm-3">
												<input type="text" id="phone2" name="phone"
													class="form-control form-control-user">
											</div>

										</div>
									</td>



								</tr>

								<tr>
									<td style="width: 10%">부서</td>
									<td style="width: 25%"><input type="text"
										class="form-control" readonly></td>

								</tr>
								<tr>
									<td style="width: 10%">직급</td>
									<td style="width: 25%"><input type="text"
										class="form-control" readonly></td>
								</tr>


								<tr>
									<td style="width: 10%">내선번호</td>
									<td style="width: 25%">
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
											</div></td>
								</tr>
								<tr>
									<td style="width: 10%">이메일</td>
									<td style="width: 25%">
										<div class="row">
											<div class="col-sm-5 mb-sm-0">
												<input type="email" id="email1" name="email"
													class="form-control form-control-user">
											</div>
											<div class="col-sm-5">
												<input type="email" id="email2" name="email"
													class="form-control form-control-user">
											</div>
										</div>
									</td>
								</tr>
								<tr>


								</tr>

							</table>
						</form>

					<!-- 등록하기 버튼 -->
						<a href="javascript:confirm();"
							class="btn btn-primary btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-check"></i>
						</span> <span class="text">수정하기</span>
						</a>


      <script>
	$(function() {
		$("#filearea").hide();
		$("#titleImg").click(function(){
			$("#file1").click();
		});

	});
	
	
	function loadImg(inputFile, num) {// 이미지 미리보기 
		//inputFile : 현재 변화가 생긴 input type = "file"
		//num : 조건문을 활용 하기 위해 전달받은 매개변수

		console.dir(inputFile);

		if (inputFile.files.length == 1) {//file이 존재 할경우 
			var reader = new FileReader();// 파일을 읽어들이 FileReader객체를 생성 

			reader.readAsDataURL(inputFile.files[0]);//파일을 읽어주는 메소드  --> 해당 파일을 읽어서 url을 부여 (문자열로 저장 )

			reader.onload = function(e) {//파일 읽기가 다완료 되면 실행할 메소드 
				switch (num) {

				case 1 : $("#titleImg").attr("src", e.target.result); break;
		
				}
			};

		}
	}
	
	</script>
   
</div>

<!-- 비밀번호변경 시작 -->
					<div class="tab-pane fade" id="list-updatePwd" role="tabpanel"
						aria-labelledby="list-profile-list" style="margin-left:10%; margin-bottom:20%; " >

						<form id="updatePwdForm"
							action="<%=request.getContextPath()%>/updatePwd.me" method="post">


							<h5>- 비밀번호 변경 -</h5>
							<hr>
							<table align="center">
								<tr>
									<td><label>현재 비밀번호</label>
									<td><input type="password" class="form-control"
										name="userPwd" id="userPwd" placeholder="현재 비밀번호 입력"></td>
								</tr>
								<tr>
									<td><label>새 비밀번호</label></td>
									<td><input type="password" class="form-control"
										name="newPwd" placeholder="새 비밀번호 입력"></td>
								</tr>
								<tr>
									<td><label>새 비밀번호 확인</label></td>
									<td><input type="password" class="form-control"
										name="checkPwd" placeholder="새 비밀번호 확인"></td>
								</tr>
							</table>


							<br> <br>

							<div class="btns" align="center">
								<div id="updatePwdBtn" class="btn btn-primary btn-primary"
									onclick="checkPwd();">변경하기</div>
							</div>


						</form>
					
					</div>
					</div>
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