<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 
<link
	href='${pageContext.request.contextPath}/resources/fullcalendar/assets/css/fullcalendar.css'
	rel='stylesheet' />
<link
	href='${pageContext.request.contextPath}/resources/fullcalendar/assets/css/fullcalendar.print.css'
	rel='stylesheet' media='print' />

	
 <style>
.roomSelect{
	padding-left: 7rem;
	padding-right: 7rem;
}
#calendar {
  padding: 0rem 7rem 3rem 7rem;
}
.fc .fc-ltr{
	height:600px;
}
select {
  width: 200px;
  padding: .6em .5em;
  font-family: inherit;
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: 1px solid #999;
  border-radius: 0px;
}
select::-ms-expand {
  /* for IE 11 */
  display: none;
}
 </style>
</head>

<body class="">
   <jsp:include page="../common/sidebar.jsp"/>
   <jsp:include page="../common/topbar.jsp"/>
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
<div class="row">
			<div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>회의실예약</h5>
                    </div>
                    <div class="card-body">
                    	<div class="roomSelect">
                    		<select id="meetingroom" class="form-select form-select-lg"aria-label=".form-select-lg example">
                    			<option value="">--회의실선택--</option>
                    			<option value="R1">1번회의실</option>
                    			<option value="R2">2번회의실</option>
                    			<option value="R3">3번회의실</option>
                    		</select>
                    		<button type="button" onclick="location='pwdUpdateForm.me'" class="btn btn-primary" style="float:right">내 예약보기</button>
                		</div> 
                		<div id="calendarWrapper">
			           		<div id="calendar">
			           	</div>
                    </div>
                </div>
            </div>
        </div>
 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->
	<script>	   
	$(document).ready(function(){
		
   		$("#meetingroom").val("");
   		var today = new Date();
		var yesterDate = today.getTime() - (1 * 24 * 60 * 60 * 1000);
		
		var calendar = $('#calendar').fullCalendar({
		    defaultView: 'month',
		    editable: false,
		    firstDay : 0,
		    eventLimit: true, // allow "more" link when too many events
		});
		$("#calendar").hide();
   		
	});	 
	
	$("#meetingroom").change(function() {
		$("#calendar").hide();
		if($("#meetingroom option:selected").val()!=""){
		mNo = $("#meetingroom option:selected").val();
   		$("#calendar").fadeIn(1000);}
   		if(date!=""){
   		rSelectDateFun(date);
   		}
	});
	</script>

    
    
    <jsp:include page="../common/footer.jsp"/>
    
    <script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/jquery-1.10.2.js'
	type="text/javascript"></script>
	<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/jquery-ui.custom.min.js'
	type="text/javascript"></script>
	<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/fullcalendar.js'
	type="text/javascript"></script>
</body>
</html>
	                                    