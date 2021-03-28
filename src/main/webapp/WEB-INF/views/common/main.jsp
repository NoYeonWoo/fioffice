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
<link href='${pageContext.request.contextPath}/resources/fullcalendar/assets/css/fullcalendar.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/fullcalendar/assets/css/fullcalendar.print.css' rel='stylesheet' media='print' />
    
</head>

<body class="       ">
      
   <!-- [ Pre-loader ] start 로딩기능 
   <div class="loader-bg">
      <div class="loader-track">
         <div class="loader-fill">dfdfdf</div>
      </div>
   </div> -->
   
   
   <!-- [ Pre-loader ] End -->
   <jsp:include page="sidebar.jsp"/>
   <jsp:include page="topbar.jsp"/>
   
   <div class="pcoded-main-container">
      <!--메인 화면 전체시작 -->
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
         <div class="row">
         
         <!-- 근태관리 화면시작 -->
            <div class="col-xl-6 col-md-12">
               <div class="card latest-update-card">
                  <div class="card-header">
                     <h5>근태관리</h5>
                     <div class="card-header-right">
                        <div class="btn-group card-option">
                           <button type="button" class="btn dropdown-toggle"
                              data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                              <i class="feather icon-more-horizontal"></i>
                           </button>
                           <ul
                              class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                              <li class="dropdown-item full-card"><a href="#!"><span><i
                                       class="feather icon-maximize"></i> maximize</span><span
                                    style="display: none"><i
                                       class="feather icon-minimize"></i> Restore</span></a></li>
                              <li class="dropdown-item minimize-card"><a href="#!"><span><i
                                       class="feather icon-minus"></i> collapse</span><span
                                    style="display: none"><i class="feather icon-plus"></i>
                                       expand</span></a></li>
                              <li class="dropdown-item reload-card"><a href="#!"><i
                                    class="feather icon-refresh-cw"></i> reload</a></li>
                              <li class="dropdown-item close-card"><a href="#!"><i
                                    class="feather icon-trash"></i> remove</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="card-body">
                     <div class="latest-update-box">
                        <div class="row p-t-30 p-b-30">
                           <div class="col-auto text-right update-meta">
                              <p class="text-muted m-b-0 d-inline-flex">2 hrs ago</p>
                              <i class="feather icon-twitter bg-twitter update-icon"></i>
                           </div>
                           <div class="col">
                              <a href="#!">
                                 <h6>+ 1652 Followers</h6>
                              </a>
                              <p class="text-muted m-b-0">You’re getting more and more
                                 followers, keep it up!</p>
                           </div>
                        </div>
                        <div class="row p-b-30">
                           <div class="col-auto text-right update-meta">
                              <p class="text-muted m-b-0 d-inline-flex">4 hrs ago</p>
                              <i class="feather icon-briefcase bg-c-red update-icon"></i>
                           </div>
                           <div class="col">
                              <a href="#!">
                                 <h6>+ 5 New Products were added!</h6>
                              </a>
                              <p class="text-muted m-b-0">Congratulations!</p>
                           </div>
                        </div>
  	                  <div class="row p-b-0">
                           <div class="col-auto text-right update-meta">
                              <p class="text-muted m-b-0 d-inline-flex">2 day ago</p>
                              <i class="feather icon-facebook bg-facebook update-icon"></i>
                           </div>
                           <div class="col">
                              <a href="#!">
                                 <h6>+1 Friend Requests</h6>
                              </a>
                              <p class="text-muted m-b-10">This is great, keep it up!</p>
                              <div class="table-responsive">
                                 <table class="table table-hover">
                                    <tr>
                                       <td class="b-none"><a href="#!" class="align-middle">
                                             <img
                                             src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/avatar-2.jpg"
                                             alt="user image"
                                             class="img-radius wid-40 align-top m-r-15">
                                             <div class="d-inline-block">
                                                <h6>Jeny William</h6>
                                                <p class="text-muted m-b-0">Graphic Designer</p>
                                             </div>
                                       </a></td>
                                    </tr>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="text-center">
                        <a href="#!" class="b-b-primary text-primary">View all
                           Projects</a>
                     </div>
                  </div>
               </div>
            </div>
            <!-- 근태관리화면끝 -->
            
            
            
 			<!-- [ Todo-list1 ] start -->
                   <div class="col-xl-6 col-md-12">
                <div class="card table-card">
                    <div class="card-header">
                        <h5>Projects</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="#!"><span><i class="feather icon-maximize"></i> maximize</span><span style="display:none"><i class="feather icon-minimize"></i> Restore</span></a></li>
                                    <li class="dropdown-item minimize-card"><a href="#!"><span><i class="feather icon-minus"></i> collapse</span><span style="display:none"><i class="feather icon-plus"></i> expand</span></a></li>
                                    <li class="dropdown-item reload-card"><a href="#!"><i class="feather icon-refresh-cw"></i> reload</a></li>
                                    <li class="dropdown-item close-card"><a href="#!"><i class="feather icon-trash"></i> remove</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                                     
                            <table class="table table-hover mb-0" id="todoMainList">
                                <thead>
                                    <tr>
                                        <th>
                                          
                                        
                                            ${loginUser.empName } 의 toDo+
                                        </th>
                                     
                                        <th>할일</th>
                                        <th>Due Date</th>
                                        <th class="text-right">check</th>
                                    </tr>
                                </thead>
                           
                                <tbody>
                                     <tr>
                                      
                                        <td>
                                     
                                            <div class="chk-option">
                                                <label class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                                    <input type="checkbox" class="custom-control-input">
                                                    <span class="custom-control-label"></span>
                                                </label>
                                            </div>
                                          
                                            <div class="d-inline-block align-middle">
                                                <img src="assets/images/user/avatar-4.jpg" alt="user image" class="img-radius wid-40 align-top m-r-15">
                                                <div class="d-inline-block">
                                                    <h6>John Deo ${item.todoTitle }</h6>
                                                    <p class="text-muted m-b-0">${item.todoTitle }</p>
                                                </div>
                                                    
                                            </div>
                                   
                                        </td>
                                            
                                        <td>Able Pro</td>
                                        <td>Jun, 26</td>
                                        <td class="text-right"><label class="badge badge-light-danger">Low</label>          </td>             
                     
                                 
                                    </tr>
                     
                        
              
                                </tbody>
                                
                            </table>
                                
                        </div>
                    </div>
                </div>
            </div>
            <script>
      function topList(){
         $.ajax({
            url : "todoMainListView.do",
            type : "get",
            success : function(todolist) {
               var value="";
              
               for(var i in todolist){
            	  
                  value += '<tr class="thumbbo"  data-tno="'+todolist[i].todoNo+'">'+
                  
                    '<td width="100px" align="left">'+todolist[i].todoTitle+'</td>'+
                    '<td width="50px" align="left">'+todolist[i].todoContent+'</td>'+
                    
                    '</tr>';
               }        
                  
               
               $("#todoMainList").html(value);
            },
            error : function() {
               console.log("ajax 통신실패");
            }

         });
      }
      $(function(){
         topList();
         <%--setInterval(function(){
            topList();
         }, 5000);--%>
      })
   </script>
            <!-- [ Todo-list1 ] end -->
            
            
          
            <!-- 공지사항게시판 시작 -->
            <div class="col-xl-12">
                <div class="card">
                     <div class="card-header">
                        <h5>공지사항</h5>
                        <div class="card-header-right">
                            <div class="btn-group card-option">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="feather icon-more-horizontal"></i>
                                </button>
                                <ul class="list-unstyled card-option dropdown-menu dropdown-menu-right">
                                    <li class="dropdown-item full-card"><a href="nlist.bo" class="dropdown-item full-card"><span><i class="fas feather icon-bell"></i>더보기</span>
                                    </a>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                 </div>
      		</div>

                	<!-- 공지사항게시판 끝 -->       
                    
             
                    
                   
        <!-- 캘린더 -->
        <div class="col-lg-8 col-md-12">
            <div class="card table-card">
                    <div class="card-header">
                        <h5>캘린더</h5>
                    </div>
                    
                 <div class="pd-20 card-box mb-30">
               <div class="calendar-wrap">
                  <div id='calendar'></div>
               </div>
                 
               </div>
            </div>
        </div>
   
    	<!-- 캘린더 일정 -->
                    <div class="card-body text-center">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>++ 일정 ++</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                   <tr>
                                        <td>${ca.cboardTitle }</td>
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div>
      		         </div>
                </div>
            </div>
</div>
<!-- [ Main Content ] 메인화면 끝 -->


  <script>
    $(document).ready(function(){
    	

	var calendar = $('#calendar').fullCalendar( {
		plugins: ['interaction'],
		header : {
			left : 'agendaDay,agendaWeek,month'
		},
		editable : false,
		firstDay : 0, //  1(Monday) this can be changed to 0(Sunday) for the USA system
		selectable : true,
		defaultView : 'month',
		allDaySlot : false,
		selectHelper : true,
		
		/* 일정 받아옴 */
		events : [ 
			<c:forEach items="${list}" var="ca">
			<c:if test="${ca.empNo eq loginUser.empNo }">
			{
			id : '${ca.calNo}',
			title : '${ca.calTitle }',
			description : '${ca.calContent}',
			start : '${ca.calSDates}',
			end : '${ca.calEDates}',
			type : '${ca.calCateName}',
			backgroundColor: '${ca.calColor}',
			textColor: '#ffffff'
			}, 
			</c:if>
			</c:forEach>
		 ], 
		 
		select: function (startDate, endDate, jsEvent, view) {

		    $(".fc-body").unbind('click');
		    $(".fc-body").on('click', 'td', function (e) {

		      $("#contextMenu")
		        .addClass("contextOpened")
		        .css({
		          display: "block",
		          left: e.pageX,
		          top: e.pageY
		        });
		      return false;
		    });

		    var today = moment();

		  },

		 //일정 클릭시 확인 및 수정이벤트 
		  eventClick: function (event, jsEvent, view) {
			  var cano = event.id;
			  console.log(cano);

		            $.ajax({
		               type:"POST",  
		               url:"selectCalendar", 
		               async:false,
		               data:{calNo:cano},
		               success:function(ca){
		            	   console.log(cano);
		            	  
		                   $("#viewCalendar #calNo").val(ca.calNo);
		                   $("#viewCalendar #empNo").val(ca.empNo);
		                   $("#viewCalendar #cateName").val(ca.cateName);
		                   $("#viewCalendar #calTitle").val(ca.calTitle);
		                   $("#viewCalendar #calContent").val(ca.calContent);
		                   $("#viewCalendar #calSDates").val(ca.calSDates);
		                   $("#viewCalendar #calEDates").val(ca.calEDates);
		                   
		                   $("#viewCalendar #empNo").val(ca.empNo);
		                   $("#viewCalendar #calCate").val(ca.calCate);
		                   $("#viewCalendar #calType").val(ca.calType);
		                   $("#viewCalendar #calColor").val(ca.calColor);
		                   $("#viewCalendar #status").val(ca.status);
		                   
		               },
		               
		               error:function(e){  
		                   console.log(e.responseText);  
		               }
		        		});   
		            
		            $("#viewCalendar").modal("show");
		         
		  },
		  
		 
		 
		dayClick: function(date, allDay, jsEvent, view) {        
	           $("#addCalendar").modal("show");
          }

      });
	
		calendar.render();
	
    });
    
   
    </script>
    
    <script src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/jquery-ui.custom.min.js' type="text/javascript"></script>
	<script src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/fullcalendar.js' type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/todo.js"></script>
    <jsp:include page="footer.jsp"/>
</body>
</html>