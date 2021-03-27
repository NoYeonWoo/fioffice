<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
   
 <!-- CSS -->
  <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/fullcalendar/test/vendor/css/bootstrap-datetimepicker.min.css' />
  <script src="${pageContext.request.contextPath}/resources/fullcalendar/test/vendor/js/bootstrap-datetimepicker.min.js"></script>

<link href='${pageContext.request.contextPath}/resources/fullcalendar/assets/css/fullcalendar.css' rel='stylesheet' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/assets/css/style.css" />

<style>
	.btn-primary {
	    color: #fff;
	    background-color: #B8ACD0;
	    border-color: #B8ACD0;
	}
	
	.btn-primary:hover {
	    color: #fff;
	    background-color: #8069AE;
	    border-color: #8069AE;
	}
	
	.btn-primary:focus, .btn-primary.focus {
	    color: #fff;
	    background-color: #8069AE;
	    border-color: #8069AE;
	    box-shadow: 0 0 0 0rem rgba(98, 147, 255, 0.5);
	}
	
	.btn-primary.disabled, .btn-primary:disabled {
	    color: #fff;
	    background-color: #B8ACD0;
	    border-color: #B8ACD0;
	}
	
	.btn-primary:not(:disabled):not(.disabled):active, .btn-primary:not(:disabled):not(.disabled).active,
	  .show > .btn-primary.dropdown-toggle {
	    color: #fff;
	    background-color: #8069AE;
	    border-color: #8069AE;
	}
	
		
		span.txt{
	 	 color: #383A3C;
	}
	
	span.txt:hover {
    color: #B8ACD0;
	}

	:root {
		--aside-width: 17.625rem;
		}
		
	.cate{
	 	background-color: #B8ACD0;
	
	}
	
	 a:link { color: gray; text-decoration: none;}
	 a:visited { color: gray; text-decoration: none;}
	 a:hover {text-decoration: none;}
	
	.bContents:hover {
		background: rgb(250,250,250);
	}
	
	div.left {
	 	width: 30%;
        float: left;
        box-sizing: border-box;
        
    	}
    
    	div.right {
        width: 70%;
        float: right;
        box-sizing: border-box;
        
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
          <div class="card shadow mb-4">
            <div class="card-header py-3">
               <h5>캘린더</h5>
            </div>
            
                   
                    	<div>
                    	
                   <!-- 일정 등록 div -->
                    	
                   <div class="left">
                   <div class="card-body" align="center">
						
						 <!-- 일정 등록 -->
						 
						<a href="" class="btn  btn-primary btn-lg"  data-toggle="modal" data-target="#addCalendar">
						<span class="icon text-white-50">
						<i class="fas fa-plus"></i>
						</span>
						<span class="text" style="color: white">&nbsp;일정등록</span>
						</a>
						<br><br>
						
						<ul class="pcoded-submenu">
						<li>
							<p class="title">
								<a href="" data-category="10">
									<span class="txt" title="내 일정">내 일정</span>
								</a>
							</p>
						</li>
						<li>
							<p class="title">
								<a href="" data-category="20">
									<span class="txt" title="부서 일정">부서 일정</span>
								</a>
							</p>
						</li>
					</ul>
					
						
					</div>
					</div>  <!-- left div 끝 -->
						
						
						
						<!-- 캘린더 -->
						<div class="right" align="left">
						
		                <div class="pd-20 card-box mb-30" align="center">
		               	<div id="calendarWrapper">
			           		<div id="calendar">
			           		</div>
               			<br>
        				</div>
						</div>
						</div>
						
						
	<!-- 모달 -->
	<div class="modal fade" id="addCalendar">  
	        <div class="modal-dialog modal-lg modal-dialog-centered">
	            <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title">일정 등록</h5>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	           
	             <div class="modal-body">
					<form name="insertCalendar" action="cinsert.ca" method="post">
					<h6>일정 카테고리 선택</h6>
					<div><select name="calCate" id="calCate" class="form-control form-control-sm" style="width:20%;"  >
							<option value="">분류</option>
		                     <option value="10" style="color : black;">내 일정</option>
		                     <option value="20" style="color : black;">부서 일정</option>
                  	</select></div>
                  	<br>
					<h6>시작 날짜 선택</h6>
					<div>
						<input type="date" id="calSDate" name="calSDate" class="form-control form-control-user" style="width:100%;" >
					</div>
						<br>
					<h6>종료 날짜 선택</h6>
					<div>
					<input type="date" id="calEdate" name="calEDate" class="form-control form-control-user" style="width:100%;" >
					</div>
					<br>
						<h6>일정</h6>
	                    <input type="text" class="form-control mr-sm-2" id="calTitle" name="calTitle"> <br>
	                    <h6>일정 코멘트</h6>
	                    <input type="text" class="form-control mr-sm-2" id="calContent" name="calContent">
	                    
	                     <input type="text" id="empNo" name="empNo" value="${loginUser.empNo}" class="form-control form-control-user">
						<div class="modal-footer">
						<br><br><br>
							<button type="submit" class="btn btn-primary">등록</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	                	</div>
					</form>	
					
				</div>
	            </div>
	        </div>
	    </div>
						
						
                      </div>
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
    	
    	var today = new Date();
		
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
		events : [ 
		
			{
			id: 2,
			title : '가나다라마바사아자차카타파하',
			start : '2021-03-28',
			end : '2021-03-30'
			}
		 ], 
		 
		dayClick: function(date, allDay, jsEvent, view) {        
	           $("#addCalendar").modal("show");
          }
      });
	
		calendar.render();
	
    });
    
  //datetimepicker
    $("#calSdate, #calEdate").datetimepicker({
        format: 'YYYY-MM-DD HH:mm'
    });
    
    </script>
    <script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/jquery-ui.custom.min.js'
	type="text/javascript"></script>
	<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/fullcalendar.js'
	type="text/javascript"></script>
	
</body>
</html>