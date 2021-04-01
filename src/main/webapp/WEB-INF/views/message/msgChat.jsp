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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/deskapp/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/deskapp/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/deskapp/vendors/styles/style.css">

<style>


		div.addMsgBtn {
		
		   text-align: center;
		   display: inline-block;
		   padding: 20px;
		
		}

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
									<input type="text" placeholder="사원 목록입니다.">
								</div>
								
								<div class="notification-list chat-notification-list customscroll">
								<!-- 전체 사원 리스트 -->
								 <c:forEach items="${list}" var="emp">
								
							     <div class="msgEmpList">
									<ul>
										<li>
											 
											 <a href="#" data-id="${emp.empNo}" data-toggle="modal" data-target="#insertMsg" >
												<img src="${pageContext.request.contextPath}/resources/upload_files/${emp.changeName}">
												<h3 class="clearfix" id="empName" name="empName">${emp.empName} ${emp.empPosition}</h3>
												<p id="deptName" name="deptName">${emp.deptName}</p>
											
											</a>
										</li>
									</ul>
									</div>
									</c:forEach>
								</div>
								<!-- 사원 리스트 끝 -->
						</div> <!-- div class="chat-list bg-light-gray" -->
							
						</div>
						
						<!-- 채팅방 리스트 -->
						<div class="chat-list" style="width:75%;">
								<div class="chat-search">
									<span class="ti-search"></span>
									<input type="text" placeholder="채팅방입니다.">
								</div>
								<div class="notification-list chat-notification-list customscroll">
								
								 <c:forEach items="${list}" var="emp">
							     <div class="chatRoomList">
							     <input type="hidden" id="chatNo" value="${cr.chatroomNp}">
									<ul>
										<li>
											<a href="" data-toggle="modal" data-id="chatNo" data-target="#msgView">
												<img src="${pageContext.request.contextPath}/resources/upload_files/${emp.changeName}">
												<h3 class="clearfix" id="empName">${emp.empName} ${emp.empPosition}</h3>
												<p id="deptName">마지막에 보내진 메세지</p>
											</a>
										</li>
									</ul>
									</div>
									</c:forEach>
								</div>
							</div>
						
						
					</div>
                        </div> <!-- 카드 바디 영역 -->
              
                        
         <!-- 쪽지 처음 보내기 (채팅방 생성) Test  -->
         <div class="modal fade bd-example-modal-lg" tabindex="-1" id="insertMsg"
            role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
               <div class="modal-content">
                  <div class="modal-body">
 
							
							<div class="chat-detail">
								<div class="chat-profile-header clearfix">
									<div class="left">
										<div class="clearfix">
											<div class="chat-profile-photo">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${emp.changeName}">
											</div>
											<div class="chat-profile-name">
												<h3 style="color:#8069AE;" id="empName" name="empName">이름</h3>
												<span id="deptName" name="deptName">부서</span>
												
												<input type="hidden" id="chatNo" name="chatNo">
												<input type="hidden" id="msgNo" name="msgNo">
												<input type="hidden" id="msgSender" name="msgSender" value="${loginUser.empNo}" class="form-control form-control-user">
												<input type="hidden" id="msgReceiver" name="msgReceiver">
											</div>
										</div>
									</div>
									
								</div>
								<div class="chat-box">
									<div class="chat-desc customscroll">
									</div>
									
									<div class="chat-footer">
										<div class="file-upload"><a href="#"><i class="fa fa-paperclip"></i></a></div>
										<div class="chat_text_area"id="msgContent" name="msgContent">
											<textarea placeholder="메세지를 입력해주세요."></textarea>
										</div>
										<div>
										<div class="addMsgBtn">
			                                <button class="btn btn-primary btn-icon" id="addMsgBtn">
			                                    <i class="feather icon-message-circle"></i>
			                                </button>
			                       	 	</div>
			                       	 	</div>
									</div>
									
								</div>
						
						</div> <!-- 메세지 Area 끝 -->
						
						 <script>
    	$(function(){
    		selectMsgList();
    		
    		$("#addMsgBtn").click(function(){
        		var mno = ${msg.msgNo};

    			if($("#replyContent").val().trim().length != 0){
    				
    				$.ajax({
    					url:"rinsert.cbo",
    					type:"post",
    					data:{msgNo:mno,
    						  msgContent:$("#msgContent").val(),
    						  msgSender:"${loginUser.empNo}"},
    						  msgReceiver:$("#empNo").val(),
    					success:function(result){
    						if(result > 0){
    							$("#chat-desc customscroll").val("");
    							selectReplyList();
    							
    						}else{
    							alert("메세지 전송 실패");
    						}
    					},error:function(){
    						console.log("메세지 작성 ajax 통신 실패");
    					}
    				});
    				
    			}else{
    				alert("메세지 내용을 입력하세요.");
    			}
    			
    		});
    	});
    	
    	function selectMsgList(){
    		var cno = ${cb.cboardNo};
    		$.ajax({
    			url:"rlist.cbo",
    			data:{cno:cno},
    			type:"get",
    			success:function(list){
    				var value="";
    				$.each(list, function(i, obj){
    					
    					if("${loginUser.empNo}" == obj.msgSender){
    						value += "<tr style='background:#F1F3F5'>";
    					}else{
    						value += "<tr>";
    					}
    					
    					value += "<th style='width:10%'>&nbsp;&nbsp;" + obj.replyWriterName + "</th>" +
   								 "<td style='width:80%'>" + obj.replyContent + "</td>" +
   								 "<td style='width:10%'>" + obj.replyDate + "</td>" +
    						 "</tr>";
    				});
    				$("#reply tbody").html(value);
    			},error:function(){
    				console.log("메세지 리스트 조회용 ajax 통신 실패");
    			}
    		});
    	}
    	
  
    </script>
							
						</div>
                 
                  </div>
               </div>
            </div>
            </div>
         <!-- 모달 끝  -->
                        
                        
         <!-- 채팅방 모달 Test  -->
         <div class="modal fade bd-example-modal-lg" tabindex="-1" id="msgView""
            role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
               <div class="modal-content">
                  <div class="modal-body">
 
							
							<div class="chat-detail">
								<div class="chat-profile-header clearfix">
									<div class="left">
										<div class="clearfix">
											<div class="chat-profile-photo">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${emp.changeName}">
											</div>
											<div class="chat-profile-name">
												<h3 style="color:#8069AE;" id="msgReceiver" name="msgReceiver">상대방 이름 직급</h3>
												<span>부서</span>
												<input type="hidden" id="msgSender" name="msgSender" value="${loginUser.empNo}" class="form-control form-control-user">
												<input type="hidden" id="chatNo" name="chatNo">
												<input type="hidden" id="msgNo" name="msgNo">
											</div>
										</div>
									</div>
									
								</div>
								<div class="chat-box">
									<div class="chat-desc customscroll">
										<ul>
											<li class="clearfix">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/profile.png">
												</span>
												<div class="chat-body clearfix">
													<p id="msgContent" name="msgContent">상대방이 보낸 말풍선</p>
													<div class="chat_time" id="msgDate" name="msgDate">09:40PM</div>
												</div>
											</li>
											<li class="clearfix admin_chat">
												<span class="chat-img">
													<img src="${pageContext.request.contextPath}/resources/upload_files/${sessionScope.loginUser.changeName}">
												</span>
												<div class="chat-body clearfix">
													<p id="msgContent" name="msgContent">ㅇㅇ.</p>
													<div class="chat_time" id="msgDate" name="msgDate">10:40PM</div>
												</div>
											</li>
										</ul>
									</div>
									
									<div class="chat-footer">
										<div class="file-upload"><a href="#"><i class="fa fa-paperclip"></i></a></div>
										<div class="chat_text_area">
											<textarea placeholder="메세지를 입력해주세요."></textarea>
										</div>
										<div>
										<div class="addMsgBtn">
			                                <button class="btn btn-primary btn-icon" id="addMsg">
			                                    <i class="feather icon-message-circle"></i>
			                                </button>
			                       	 	</div>
			                       	 	</div>
									</div>
									
								</div>
						
						</div> <!-- 메세지 Area 끝 -->
							
						</div>
                 
                  </div>
               </div>
            </div>
            </div>
         <!-- 모달 끝  -->
                        
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
    $(document).ready(function(){
    
    /* 리스트에 있는 사원 누르면 채팅방 연결 후 채팅방 번호(=상대 사번)이 같은 메세지 출력... */
    $('#msgEmpList').on('show.bs.modal', function (event) {
    	console.log($(event.relatedTarget).data('id'));
    	//var empNo = $(event.relatedTarget).data('id');
    	//console.log(empNo);
    	var empNo = $(e.relatedTarget).data('id');
    	console.log(empNo);
    	var test = $('#msgEmpList').val(${emp.empNo});
    	console.log(test);
    	
    	$.ajax({
            type:"POST",  
            url:"selectEmployee",  
            async:false,
            data:{empNo:$(event.relatedTarget).data('id')},
            success:function(emp){
                $("#insertMsg #empName").html(emp.empName);
                $("#insertMsg #deptName").html(emp.deptName);
                $("#insertMsg #empPosition").html(emp.empPosition);
                $("#insertMsg #changeName").html(emp.changeName);
                
                $("#insertMsg #msgReceiver").val(emp.empNo);
                
                
                
            },   
             error:function(e){  
                 console.log(e.responseText);  
             }
      		});
    		
    	   //$("#msgView").modal("show");
    		
    		
     });
    
    });
    </script>
    
    
<!-- JS -->

  	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/core.js"></script>
	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/script.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/process.js"></script>
	<script src="${pageContext.request.contextPath}/resources/deskapp/vendors/scripts/layout-settings.js"></script>
  
</body>
</html>