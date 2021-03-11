<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
li {
	display: list-item;
}

body {
	background-color: #EAEAEA;
}

section {
	padding-top: 40px;
	background-color: white;

	margin-right:10%;
}
.card-header{
font-size: 25px;


}

.newtodoform {
	text-align: right;
}

.newtodo {
	margin-right: 10px;
}

#project-app .depth01>li {
	margin-right: 10px;
	width: 33%
}

#project-app {
	width: 90%;
	margin: 0;
	margin-left: 10%;
}

.depth01, .depth02 {
	padding: 0;
	list-style: none;
	margin-left:10%;
	margin: 0;
}

.depth01 {
	display: flex;
}

#app-block {
	background-color: #B8ACD0;
	width: auto;
}

#title-block {
	background-color: #3DB7CC;
}

.data, h2 {
	margin: 0;
	margin-bottom: 10px;
	padding: 15px;
}

h2 {
	color: white;
	font-size: 25px;
}

p {
	margin: 0;
}

.titled {
	font-size: 15px;
}

.subd {
	font-size: 5px;
}
</style>
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
								<li class="breadcrumb-item"><a href="index.jsp"><i	class="feather icon-home"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- [ breadcrumb ] end -->


			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-header">
							<h3 class="m-0 font-weight-bold text-primary">TODO+</h3>
						
						</div>


						<section>

							<!-- <div id="button-app">
			<form action="adtodo" accept-charset="utf-8" method="post"
				class="newtodoform">
				<input class="newtodo" type="submit" value="새로운 todo 등록"
					name="newtodo">
			</form>
		</div> -->




							<nav id="project-app">

								<ul class="depth01">


									<div class="col-sm-4">
										<div class="card bg-light">
											<div class="card-header">Todo  	 <a  href=""  data-toggle="modal" data-target="#todoinsert"><i class="fas fa-plus-square text-gray-800 "></i></a></div>
											<div class="card-body">
												<div class="urgent">
													<ul class="depth02">

														<li>
															<div class="data" id="app-block" data-toggle="modal" data-target="#tododetail">
																<p class="titled">마케팅발주서</p>
																<p class="subd">기한:2021-02-03</p>
																<form action="mod" accept-charset="utf-8" method="get"
																	class="modiform">
																	<input type="hidden" value=${item.id } name="id">
																	<input type="hidden" value="DOING" name="type">
																	<input class="modiB" type="submit" value="→" name=modi>
																</form>


															</div>
														</li>

													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="card bg-light">
											<div class="card-header">doing</div>
											<div class="card-body">
												<div class="urgent">
													<ul class="depth02">

														<li>
															<div class="data" id="app-block">
																<p class="titled">마케팅발주서</p>
																<p class="subd">기한:2021-02-03</p>
																<form action="mod" accept-charset="utf-8" method="get"
																	class="modiform">
																	<input type="hidden" value=${item.id } name="id">
																	<input type="hidden" value="DOING" name="type">
																	<input class="modiB" type="submit" value="→" name=modi>
																</form>


															</div>
														</li>

													</ul>
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-4">
										<div class="card bg-light">
											<div class="card-header">done</div>
											<div class="card-body">
												<div class="done">

													<ul class="depth02">

														<li>
															<div class="data" id="app-block">
																<p class="titled">마케팅발주서</p>
																<p class="subd">기한:2021-02-03</p>
																<form action="mod" accept-charset="utf-8" method="get"
																	class="modiform">
																	<input type="hidden" value=${item.id } name="id">
																	<input class="modiB" type="submit" value="del"
																		name=modi>
																</form>

															</div>
														</li>

													</ul>
												</div>
											</div>
										</div>
									</div>




								</ul>
							</nav>
						</section>

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

		   <!-- todo 넣기 모달시작  -->       
		   
		   		<div class="col-xl-4 col-md-6">
				<div class="card">
					<div class="card-header">
						<h5>할일</h5>
					</div>
					<div class="card-body">
						<div id="todoinsert" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalPopoversLabel">할일</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<div class="modal-body">
										<h5>Tooltips in a Button</h5>
										<p>This <a href="#!" role="button" class="btn  btn-secondary tooltip-test" data-toggle="tooltip" title="Button Tooltip" data-container="#exampleModalPopovers">button</a>
											triggers a popover on click.</p>
										<hr />
										<h5>Tooltips in a modal</h5>
										<p class="mb-0"><a href="#!" class="tooltip-test" data-toggle="tooltip" title="Tooltip" data-container="#exampleModalPopovers">This link</a> and <a href="#!" class="tooltip-test" data-toggle="tooltip" title="Tooltip"
												data-container="#exampleModalPopovers">that
												link</a> have tooltips on hover.</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
										<button type="button" class="btn  btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<button type="button" class="btn  btn-primary" data-toggle="modal" data-target="#exampleModalPopovers">Launch demo modal</button>
					</div>
				</div>
			</div>
		   	   
   <!-- todo 모달끝  -->   
   
   
   
   	   <!-- todo상세보기  모달시작  -->       
		   
		   		<div class="col-xl-4 col-md-6">
				<div class="card">
					<div class="card-header">
						<h5>할일</h5>
					</div>
					<div class="card-body">
						<div id="tododetail" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="tododetail" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalPopoversLabel">할일</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<div class="modal-body">
										<h5>Tooltips in a Button</h5>
										<p>This <a href="#!" role="button" class="btn  btn-secondary tooltip-test" data-toggle="tooltip" title="Button Tooltip" data-container="#exampleModalPopovers">button</a>
											triggers a popover on click.</p>
										<hr />
										<h5>Tooltips in a modal</h5>
										<p class="mb-0"><a href="#!" class="tooltip-test" data-toggle="tooltip" title="Tooltip" data-container="#exampleModalPopovers">This link</a> and <a href="#!" class="tooltip-test" data-toggle="tooltip" title="Tooltip"
												data-container="#exampleModalPopovers">that
												link</a> have tooltips on hover.</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
										<button type="button" class="btn  btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<button type="button" class="btn  btn-primary" data-toggle="modal" data-target="#exampleModalPopovers">Launch demo modal</button>
					</div>
				</div>
			</div>
		   	   
   <!-- todo 모달끝  -->  


	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>