<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
											<div class="card-header">Todo  	 <a  href=""  data-toggle="modal" data-target="#insertTodo"><i class="fas fa-plus-square text-gray-800 "></i></a></div>
											<div class="card-body">
												<div class="urgent">
										          
													<ul class="depth02">
                                                        <c:if test="${ fn:length(todolist)>0}">
								                        <c:forEach items="${todolist}" var="item">
								                        <c:if test="${item.status eq 'T'}">
								                        	<form action="updateTodo.do" accept-charset="utf-8" method="post" class="modiform">
								                        	 <c:if test="${item.empNo eq loginUser.empNo }">
														<li>
															<div class="data" id="app-block" data-toggle="modal" data-target="#detailTodo">
																<p class="titled">${item.todoTitle }</p>
																<p class="subd">기한:${item.todoDoneDate} }</p>
																<p class="subd">내용:${item.todoContent} } 작성자: ${loginUser.empName }</p>
																    <input type="hidden" value="${item.todoNo }" name="todoNo">
																	<input type="hidden" value="N" name="status">
																	<input class="modiB" type="submit" value="→" name=modi>
																


															</div>
														</li>
														
														</form>
															</c:if>
															</c:if>	
                                                  </c:forEach>
                                                  	
												</c:if>
												
													</ul>
												
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-4">
										<div class="card bg-light">
											<div class="card-header">Doing</div>
											<div class="card-body">
												<div class="urgent">
													<ul class="depth02">
                                                              <c:if test="${ fn:length(todolist)>0}">
								                        <c:forEach items="${todolist}" var="item">
								                        <c:if test="${item.status eq 'N'}">
								                        <c:if test="${item.empNo eq loginUser.empNo }">
														<li>
														<div class="data" id="app-block" data-toggle="modal" data-target="#detailTodo">
																<p class="titled">${item.todoTitle }</p>
																<p class="subd">기한:${item.todoDoneDate} }</p>
																<p class="subd">내용:${item.todoContent} } 작성자: ${loginUser.empName }</p>
															
																<form action="mod" accept-charset="utf-8" method="get"
																	class="modiform">
																	
 																	<input type="hidden" value="${item.todoNo }" name="todoNo">
																	<input type="hidden" value="D" name="status">
																	<input class="modiB" type="submit" value="→" name=modi>
																</form>


															</div>
														</li>
														</c:if>	
															</c:if>	
                                                  </c:forEach>
												</c:if>	
													</ul>
												</div>
											</div>
										</div>
									</div>

												<div class="col-sm-4">
										<div class="card bg-light">
											<div class="card-header">Done</div>
											<div class="card-body">
												<div class="urgent">
													<ul class="depth02">
                                                              <c:if test="${ fn:length(todolist)>0}">
								                        <c:forEach items="${todolist}" var="item">
								                        <c:if test="${item.status eq 'D'}">
								                          <c:if test="${item.empNo eq loginUser.empNo }">
														<li>
														<div class="data" id="app-block" data-toggle="modal" data-target="#detailTodo">
																<p class="titled">${item.todoTitle }</p>
																<p class="subd">기한:${item.todoDoneDate} }</p>
																<p class="subd">내용:${item.todoContent} }</p>
															
																<form action="mod" accept-charset="utf-8" method="get"
																	class="modiform">
																	<input type="hidden" value="${item.empNo }" name="empNo">
 																	<input type="hidden" value="${item.todoNo }" name="todoNo">
																	<input type="hidden" value="del" name="status">
																	<input class="modiB" type="submit" value="→" name=modi>
																</form>


															</div>
														</li>
															</c:if>	
															</c:if>	
                                                  </c:forEach>
												</c:if>	
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
	
		   <!-- todo 넣기 모달시작  -->       
                       <div id="insertTodo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalPopoversLabel">할일을 추가해주세요</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<form  id="insertTodo" method="post" action="insertTodo.do">
									<div class="modal-body">
										<h5>제목을 입력해 주세요</h5>
										<input type="text" id="todoTitle" class="form-control" name="todoTitle" required>
										<hr>
									    <h5>마감날짜</h5>
									    <input type="date" id="todoDoneDate" name="todoDoneDate" class="form-control form-control-user">
										<hr>
									
										<h5>할일내용 </h5>
										<textarea class="form-control" required name="todoContent" id="todoContent" rows="10" style="resize:none;"></textarea>
								        
									    <input type="hidden" id="empNo" name="empNo" value="${loginUser.empNo}" class="form-control form-control-user">
										<hr>
									</div>
									
									<div class="modal-footer">
										<button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
										<button type="submit" class="btn  btn-primary" id="addTodo">저장</button>
									</div>
									</form>
								</div>
							</div>
							
							</div>
   <!-- todo 모달끝  -->   
   
   
   
   	   <!-- todo상세보기  모달시작  -->       
	                       <div id="detailTodo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalPopoversLabel">할일을 추가해주세요</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									</div>
									<form id="insertTodo" method="post" action="insertTodo.do">
									<div class="modal-body">
										<h5>제목을 입력해 주세요</h5>
										<input type="text" id="title" class="form-control" name="todoTitle" value="" required>
										<hr>
									    <h5>마감날짜</h5>
									    <input type="date" id="todoDoneDate" name="todoDoneDate" class="form-control form-control-user">
										<hr>
									
										<h5>할일내용 </h5>
										<textarea class="form-control" required name="todoContent" id="todoContent" rows="10" style="resize:none;"></textarea>
								
									</div>
									</form>
									<div class="modal-footer">
										<button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
										<button type="submit" class="btn  btn-primary" id="reload" >저장</button>
									</div>
									
								</div>
							</div>
							
							</div>
   <!-- todo 모달끝  -->  

<!-- 
<script>
$(function () {
	selectTodoList();
  $("#addTodo").click(function(){
	$.ajax({
	   url:"insertTodo.do",
	   type:"post",
	   data:{todoTitle:${"#todoTitle"}.val(),
		     todoDoneDate:${"#todoDoneDate"}.val(),
		     todoContent:${"#todoContent"}.val()},
	  success:function(result){
		      $("#todoTitle").val("");
		      $("#todoDoneDate").val("");
		      $("#todoContent").val("");
	  },error:function(){
		  console.log("댓글작성 실패")
	  }	     
		});
	
	  
	  
	  
	  
  });
  
    	
});

 -->
<script type="text/javascript">

	
$('#reload').click(function(e)){


	if(!confirm('정말로 삭제하시겠습니까?')) return; 
	
	
}



	
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