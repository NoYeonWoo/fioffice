<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	padding: 3rem 7rem 3rem 7rem;
}
#calendar {
  padding: 0rem 7rem 3rem 7rem;
}
.fc .fc-ltr{
	height:600px;
}
#rComment{
	border: 1px solid #ced4da;
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
                    		<button type="button" data-toggle="modal" data-target="#myReservation" class="btn btn-primary" style="float:right">내 예약보기</button>
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
 <div class="modal fade" id="reservationTime">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">예약 시간</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="resInsert" action="login.me" method="post" autocomplete="off">
				<div class=" mb-4">
				 	<label for="rTitle" class=" mr-sm-2">시간선택 :</label>
                        <div class="btn-group mb-1" role="group" aria-label="button groups">
                        	<c:forEach begin="9" end="17" var="p">
                           <button type="button" class="btn  btn-primary">${p}시</button>
                           </c:forEach>
    					</div>
    				</div>
					<label for="rTitle" class="mr-sm-2">회의명 :</label> <!-- 오른쪽 마진 .5rem 크기만큼 -->
                    <input type="text" class="form-control mr-sm-2" id="rTitle" name="rTitle"> <br> <!--  form-control 아래쪽 마진 -->
                    <label for="rComment" class="mr-sm-2">설명 : </label>
                    <textarea  rows="5" class="form-control mb-2 mr-sm-2" id="rComment" name="rComment" ></textarea>
					<div class="modal-footer">
                    	<button type="submit" class="btn btn-primary">예약하기</button>
                    	<button type="button" class="btn btn-danger" data-dismiss="modal">취소하기</button>
                	</div>
				</form>	
			</div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="myReservation">  
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">예약 시간</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>  <!-- 다이얼로그 닫기 -->
            </div>
             <div class="modal-body">
				<form name="resInsert" action="login.me" method="post" autocomplete="off">
					<table id="rList" class="table table-hover row-border  nowrap">
	                                <thead>
	                                    <tr>
	                                    <th id="rDate" style="width: 20%;">날짜</th>
	                                    <th id="rTitle" style="width: 40%;">회의명</th>
	                                    <th id="rRoom" style="width: 20%;">회의실</th>
	                                    <th id="rTime" style="width: 20%;">시간</th> 
	                                    </tr>
	                                </thead>
	                                <tbody>  
	                                <tr>
	                                    <td>Gloria Little</td>
	                                    <td>Systems Administrator</td>
	                                    <td>New York</td>
	                                    <td>59</td>
	                                </tr><tr>
	                                    <td>Gloria Little</td>
	                                    <td> Administrator</td>
	                                    <td>New Yo</td>
	                                    <td>59</td>
	                                </tr><tr>
	                                    <td>Gloria Little</td>
                                        <td>Systemsr</td>
	                                    <td>New rk</td>
	                                    <td>59</td>
	                                </tr></tbody>
                    </table>
					<div class="modal-footer">
                    	<button type="submit" class="btn btn-primary">수정하기</button>
                    	<button type="button" class="btn btn-danger" data-dismiss="modal">삭제하기</button>
                	</div>
				</form>	
			</div>
            </div>
        </div>
    </div>
	<script>	   
	$(document).ready(function(){
   		$("#meetingroom").val("");
   		
   		var today = new Date();
		var yesterDate = today.getTime() - (1 * 24 * 60 * 60 * 1000);

		var calendar = $('#calendar').fullCalendar( {
			editable : false,
			firstDay : 0, //  1(Monday) this can be changed to 0(Sunday) for the USA system
			selectable : true,
			defaultView : 'month',
			dayClick: function(date, allDay, jsEvent, view) {
	             //alert('Clicked on: ' + date);
	            //날짜 받아옴!
				if(yesterDate > date){
					alert("이미 지난 날짜는 선택할 수 없습니다.");
				}else{			             
		            //date=info.dateStr;
		            //$(".secondArea").fadeIn(1000);
		           $("#reservationTime").modal("show");
		            //rSelectDateFun(date);
				}
	          }
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
    
    <!-- <script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/jquery-1.10.2.js'
	type="text/javascript"></script> -->
	<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/jquery-ui.custom.min.js'
	type="text/javascript"></script>
	<script
	src='${pageContext.request.contextPath}/resources/fullcalendar/assets/js/fullcalendar.js'
	type="text/javascript"></script>
</body>
</html>
	                                    