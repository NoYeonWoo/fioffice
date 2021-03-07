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



	<div class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">${loginEmp.empName}의 To-do List</h1>
			</div>
			<div class="row">
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">총 To-do List</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"> 개</div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">완료된 To-do List</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"> 개</div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-check-square-o fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">이번주 작업율</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"> %</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div id="percent" class="progress-bar bg-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                          	<script type="text/javascript">
                          		$(document).ready(function(){
                          			var percent = '${percent}%';
                          			$("#percent").width(percent);
                          		});
                          	</script>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-calendar-check-o fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">남은 할일</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"> 개</div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa fa-list-alt fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
			<div class="row">
	            <div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div>
								<h4 style="display: inline-block;">to-do List</h4>
							</div>
							<div class="row">
							
								<div class="col-md-6 mb-4" style="max-width: 100%;flex: 0 0 100%;">
								<!--등록하는부분  -->
						              <div id="box-color" class="card border-left-primary shadow h-100 py-2">
						                <div class="card-body">
						                  <div class="row no-gutters align-items-center">
						                    <select id="selectbox" name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm" style="width:20%; margin-right: 1rem;">
								           			<option value="">중요도 선택</option>
								           			<option value="긴급">긴급</option>
								           			<option value="보통">보통</option>
								           			<option value="여유">여유</option>
							           			</select>
						                    <div class="col mr-2">
						                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1" style="cursor: pointer;">
						                      	<input type="text" id="tTitle" placeholder="제목을 입력해주세요" style="border: none;">
						                      </div>
						                      <div class="h5 mb-0 font-weight-bold text-gray-800" style="cursor: pointer;">
						                      	<input type="text" id="tContent" placeholder="내용을 입력해주세요"  style="border: none; width:100%;">
						                      </div>
						                    </div>
						                    <div class="col-auto">
						                      <i id="plus" class="fa fa fa-plus fa-2x text-gray-300" style="cursor: pointer;"></i>
						                    </div>
						                  </div>
						                </div>
						              </div>
						            </div>
						            
					            </div>
							<!--카드  할알목록(미완료) for문 시작  -->
							
				            
					            </div>
						</div>
					</div>
	            </div>
	            <div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div><h4>최근 완료 목록</h4></div>
							<!--카드 카드  -->
							<div class="row" id="doneSpace">
								<c:if test="">
									<h5 id="shutup" style="display:inline-block; margin: 5rem; margin-left: auto;margin-right: auto;">이번주 완료한 할일이 없네요!</h5>
								</c:if>
								<c:forEach var="d" items="">
									<div class="hidearea col-xl-6 col-md-6 mb-4"><!--div1  -->
						              <div class="card border-left-light shadow h-100 py-2"><!--div2  -->
						                <div class="card-body"><!--div3  -->
						                  <div class="row no-gutters align-items-center"><!--div4  -->
						                    <div class="col mr-2"><!--div5  -->
						                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1"></div><!--div6  -->
						                      <div class="h5 mb-0 font-weight-bold text-gray-800"></div><!--div7  -->
						                    </div>
						                     <div class="col-auto undone" style="margin-right: 10px;"><!--div8  -->
						                    	<input type="hidden" class="tNo" value="">
						                    	<input type="hidden" class="tContent" value="">
						                    	<input type="hidden" class="tTitle" value="">
						                    	<input type="hidden" class="tImport" value=""><!--input1  -->
						                      <i class="checked fa fa-check fa-2x text-gray-900" style="cursor: pointer;"></i><!--i1  -->
						                    </div>
						                    <div class="col-auto trash"><!--div9  -->
						                    	<input type="hidden" value=""><!--input2  -->
						                      <i class="check fa fa-trash-o fa-2x text-gray-300" style="cursor: pointer;"></i><!-- i2 -->
						                    </div>
						                  </div>
						                </div>
						              </div>
						            </div>
				            </c:forEach>
				            
				            
				            </div>
				            
						</div>
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