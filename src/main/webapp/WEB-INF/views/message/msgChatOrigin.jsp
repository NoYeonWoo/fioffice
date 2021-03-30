<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
     	
<!-- CSS -->

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/deskapp/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/deskapp/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/deskapp/vendors/styles/style.css">

<style>

	
</style>
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
        
            
            <div class="card chat-card">
                    <div class="card-header">
                        <h5>메신저</h5>
                        <div class="card-header-right">  
                        </div>
                    </div>
                    
                    
     <!-- 메신저 카드 영역 -->               
                    <div class="card-body">	
					<div class="row no-gutters">
						<div class="col-lg-3 col-md-4 col-sm-12">
						
							<div class="chat-list bg-light-gray">
								<div class="chat-search">
									<span class="ti-search"></span>
									<input type="text" placeholder="Search Contact">
								</div>
								<div class="notification-list chat-notification-list customscroll">
								
								<!-- 전체 사원 리스트 -->
								 <c:forEach items="${list}" var="emp">
							     <div class="msgEmpList">
							     <input type="hidden" id="empNo" value="${emp.empNo}">
									<ul>
										<li>
											<a href="" data-toggle="modal" data-id="empNo" data-target="#msgView">
												<img src="${pageContext.request.contextPath}/resources/upload_files/${emp.changeName}">
												<h3 class="clearfix" id="empName">${emp.empName}</h3>
												<p id="deptName">${emp.deptName} ${emp.empPosition}</p>
											</a>
										</li>
									</ul>
									</div>
									</c:forEach>
								</div>
								<!-- 사원 리스트 끝 -->
							</div>
							
						</div>
						
						<!-- 메세지 보내는 Area -->
						<div class="col-lg-9 col-md-8 col-sm-12">
							<div class="chat-detail">
								<div class="chat-profile-header clearfix">
									<div class="left">
										<div class="clearfix">
											<div class="chat-profile-photo">
												<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png">
											</div>
											<div class="chat-profile-name">
												<h3 style="color:#8069AE;">상대방 이름</h3>
												<span>부서 직급</span>
											</div>
										</div>
									</div>
									
								</div>
								<div class="chat-box">
									<div class="chat-desc customscroll">
										<ul>
											<li class="clearfix admin_chat">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${sessionScope.loginUser.changeName}">
												</span>
												<div class="chat-body clearfix">
													<p>내가 보낸 말풍선</p>
													<div class="chat_time">09:40PM</div>
												</div>
											</li>
											<li class="clearfix">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png">
												</span>
												<div class="chat-body clearfix">
													<p>상대방이 보낸 말풍선</p>
													<div class="chat_time">09:40PM</div>
												</div>
											</li>
											<li class="clearfix admin_chat">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${sessionScope.loginUser.changeName}">
												</span>
												<div class="chat-body clearfix">
													<p>ㅇㅇ.</p>
													<div class="chat_time">09:40PM</div>
												</div>
											</li>
										</ul>
									</div>
									
									<div class="chat-footer">
										<div class="file-upload"><a href="#"><i class="fa fa-paperclip"></i></a></div>
										<div class="chat_text_area">
											<textarea placeholder="메세지를 입력해주세요."></textarea>
										</div>
										<div class="form-icon">
			                                <button class="btn btn-primary btn-icon" id="addMsg">
			                                    <i class="feather icon-message-circle"></i>
			                                </button>
			                            </div>
									</div>
								</div>
							</div>
						</div> <!-- 메세지 Area 끝 -->
					</div>
                        </div> <!-- 카드 바디 영역 -->
                        
                        
         <!-- 모달 Test  -->
         <div class="modal fade bd-example-modal-lg" tabindex="-1" id="msgView"
            role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
               <div class="modal-content">
                  <div class="modal-body">
 
								<div class="chat-profile-header clearfix">
									<div class="left">
										<div class="clearfix">
											<div class="chat-profile-photo">
												<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png">
											</div>
											<div class="chat-profile-name">
												<h3 style="color:#8069AE;">상대방 이름</h3>
												<span>부서 직급</span>
											</div>
										</div>
									</div>
									
								</div>
								<div class="chat-box">
									<div class="chat-desc customscroll">
										<ul>
											<li class="clearfix admin_chat">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${sessionScope.loginUser.changeName}">
												</span>
												<div class="chat-body clearfix">
													<p>내가 보낸 말풍선</p>
													<div class="chat_time">09:40PM</div>
												</div>
											</li>
											<li class="clearfix">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png">
												</span>
												<div class="chat-body clearfix">
													<p>상대방이 보낸 말풍선</p>
													<div class="chat_time">09:40PM</div>
												</div>
											</li>
											<li class="clearfix admin_chat">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${sessionScope.loginUser.changeName}">
												</span>
												<div class="chat-body clearfix">
													<p>ㅇㅇ.</p>
													<div class="chat_time">09:40PM</div>
												</div>
											</li>
										</ul>
									</div>
									
									<div class="chat-footer">
										<div class="file-upload"><a href="#"><i class="fa fa-paperclip"></i></a></div>
										<div class="chat_text_area">
											<textarea placeholder="메세지를 입력해주세요."></textarea>
										</div>
										<div class="form-icon">
			                                <button class="btn btn-primary btn-icon" id="addMsg">
			                                    <i class="feather icon-message-circle"></i>
			                                </button>
			                            </div>
									</div>

							</div>
						</div>
                 
                  </div>
               </div>
            </div>
            </div>
         <!-- 상세보기  모달끝  -->
                        
                        </div>
                    
                    </div>
                </div>
            
            
			
         <br>
        
        </div>
        </div>
        
        
        
       
		</div>
	</div> <!--지우지 마세요    div class="row"  -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->
	

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    <script>
    
    
    /* 리스트에 있는 사원 누르면 채팅방 연결 후 채팅방 번호가 같은 메세지 출력... */
    $('#msgEmpList').on('show.bs.modal', function (event) {
    	
    	/*
        $.ajax({
           type:"POST",  
           url:"selectEmployee",  
           async:false,
           data:{empNo:$(event.relatedTarget).data('id')},
           success:function(emp){
               $("#empName").html(emp.empName);
               $("#empNo").val(emp.empNo);
               $("#empNo1").html(emp.empNo);
               $("#deptName").html(emp.deptName);
               $("#empPosition").html(emp.empPosition);
               $("#joinDate").html(emp.joinDateS);
               $("#phone").html(emp.phone);
               $("#officePhone").html(emp.officePhone);
               $("#email").html(emp.email);
               $("#address").html(emp.address);
               $("#address").html(emp.address);
               entStatus(emp.entDateS); 
               
           },   
           error:function(e){  
               console.log(e.responseText);  
           }
    		});*/
    		
    	   $("#msgView").modal("show");
    		
    		
     });
    
    </script>
    
    
<!-- JS -->

  	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/core.js"></script>
	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/script.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/process.js"></script>
	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/layout-settings.js"></script>
  
</body>
</html>