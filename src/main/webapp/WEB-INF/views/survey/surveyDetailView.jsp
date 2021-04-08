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

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/board/assets/css/style.css" />
<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/board/assets/js/boardjs.css"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://cdn.jsdelivr.net/gh/emn178/chartjs-plugin-labels/src/chartjs-plugin-labels.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/google-palette@1.1.0/palette.min.js"></script>
	<style>
	canvas{
    margin: 0 auto;
    padding-top:5rem;
    }
		:root {
		--aside-width: 17.625rem;
		}
		
		a.app-pc-only.app-article-meta-item {
		
			color: #868E96;
		
		}
		
		div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    	}
    
    	div.right {
        
        float: right;
        box-sizing: border-box;
        
   		}
		
	</style>
</head>

<!-- BODY START -->
<body>
   
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
			<!-- 게시글 제목 영역 -->
			<div class="app-board-article-head">
				<div class="app-board-container">
				<!-- <img src="" alt=""> -->
					<h1 class="tw-font-bold tw-text-3xl md:tw-text-xl">${sur.surTitle }</h1>
					<div class="tw-flex tw-items-end">
						<div class="app-board-article-profile tw-flex tw-items-center">
							<div class="app-profile-image app-avatar">
								<img src="${pageContext.request.contextPath}/resources/upload_files/${ sur.profile }" alt="Profile" /> </div>
							<div class="tw-flex-1 app-profile-body">
								<a class="tw-flex tw-items-center tw-font-bold tw-text-sm link member_4 author">${sur.empName }</a>
								<div class="app-article-meta">
									<div class="app-article-meta-item">${sur.surDate}</div>
									<div class="app-article-meta-divider"> ・ </div>
									<a href="#comment" class="app-pc-only app-article-meta-item">댓글 0</a>
								</div>
							</div>
						</div> 
						<div class="tw-flex-1" >
							<c:if test="${sur.surWriter eq loginUser.empNo && sur.status eq 'S'}">
							<a href="sdelete.so?sNo=${sur.surNo}&empNo=${loginUser.empNo}" class="app-button app-button-rounded button-secondary" style="float:right">
							<span class="text">설문 종료</span></a></c:if>
							<c:if test="${sur.status eq 'E'}"><span style="border:2px solid #F00;float:right;color: #FF0000;font:20px Bold; padding:0.5rem 1rem">종료된 설문</span></c:if></div>
					</div>
				</div>
			</div>
			<div class="app-board-container tw-flex tw-items-center tw-pt-5">
				<div class="tw-flex-1"></div>
			</div>
	
	<!-- 본문 영역 -->
	<div class="app-board-container app-article-container">
		<div class="app-article-content app-clearfix">
			<div class="document_138_4 rhymix_content xe_content">
				<span>${sur.surContent }</span>
				<br>
				<div class="survey_box border col-sm-10 mx-auto" style="margin-top:5rem; padding:2rem">
					<span style="font:30px Bold;" >Q.${sur.surqContent }</span>
					<c:if test="${sur.surqType eq 'Y'}">
						&nbsp;&nbsp; <span>*중복가능*</span>
					</c:if>
					<span style="float:right">설문 기간 : ${sur.surDate } ~ ${sur.surEnd }</span>
					<br>
					<span style="float:right">총 투표인원 : ${sur.count }명</span>
					<br>
					<c:choose>
						<c:when test="${answer > 0|| sur.status eq 'E'}">
							<c:choose>
								<c:when test="${sur.surqStatus eq 'E' && sur.surWriter eq loginUser.empNo}">
								<table style="width:70%">
								<c:forEach items="${aList}" var="a" varStatus="status">
									<tr><td>${a.suraContent }</td></tr>
								</c:forEach>
								</table>
								</c:when>
								<c:when test="${sur.surqStatus eq 'E' && answer > 0}">
								<p style="padding:10rem 0.5rem;text-align:center;font:30px Bold;">이미 제출 하셨습니다.</p>
								</c:when>
								<c:when test="${sur.surqStatus eq 'E' && answer == 0}">
								<p style="padding:10rem 0.5rem;text-align:center;font:30px Bold;">설문이 종료되었습니다.</p>
								</c:when>
								<c:otherwise>
								<div class="card-body">
                        		<canvas id="myChart" width="400px" height="400px"></canvas>
                    			</div>
								<br>
								<script>
									var label = new Array();
									var serie = new Array();
								</script>	
								<c:forEach items="${aList}" var="a" varStatus="status">
									<script>
										label[<c:out value='${status.index}'/>]='${a.option }';
										serie[<c:out value='${status.index}'/>]='${a.optionCount }';
										
									</script>
								</c:forEach>				
								<script>
								console.log(label);
								console.log(serie);
								var ctx = document.getElementById('myChart').getContext('2d');
								var myChart = new Chart(ctx, {
								    type: 'pie',
								    data: {
								        labels: label,
								        datasets: [{
								        	label: '# of Votes',
								            data: serie,
								            backgroundColor: palette('mpn65', 20).map(function(hex) {
								                return '#' + hex;
								            }),
								            borderWidth: 1
								        }]
								    },
								    options: {
								    	responsive: false,
								    
								        plugins: {
								            legend: {
								              position: 'right',
								            } 
								    	}
								  	}
								});
								
								</script>
								<c:choose>
									<c:when test="${sur.status eq 'S'}">
									<form id="deleteAnswer" action="deleteAnswer" method="POST"autocomplete="off">
										<input type="hidden" name="surNo" id="surNo" value="${sur.surNo }"> 
										<input type="hidden" name="suraWriter" id="suraWriter" value="${loginUser.empNo }"></form>
									<div style="padding-bottom:2rem"><button onclick="$('#deleteAnswer').submit();" class="btn-sm btn-primary" style="float:right;">
									<span class="icon text-white-50">
									<i class="fas fa-plus"></i></span>
									<span class="text" style="color: white;">&nbsp;다시 제출</span></button></div>
									</c:when>
									<c:otherwise>
									<span class="text" style="float:right;">종료된 설문 입니다.</span>
									<br>
									<c:if test="${answer > 0 }">
									<span class="text" style="float:right;">이미 제출 하였습니다.</span>
									<br>
									</c:if>
									
									</c:otherwise>
								</c:choose>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<form action="insertAnswer" method="POST"autocomplete="off" onsubmit="return check();">
							<input type="hidden" name="surNo" id="surNo" value="${sur.surNo }"> 
							<input type="hidden" name="suraWriter" id="suraWriter" value="${loginUser.empNo }">
							<c:choose>
							<c:when test="${sur.surqStatus eq 'M' && sur.surqType eq 'Y' }">
							<c:forEach items="${aList}" var = "a">
							<p style="padding-top:1rem;padding-left:0.5rem">
							<label><input type="checkbox" name="options" value="${a.suroNo}">&nbsp;&nbsp;&nbsp;${a.option }</label></p>
							</c:forEach>
							</c:when>
							<c:when test="${sur.surqStatus eq 'M' && sur.surqType eq 'N' }">
							<c:forEach items="${aList}" var = "a">
							<p style="padding-top:1rem;padding-left:0.5rem">
							<label><input type="radio" name="options" value="${a.suroNo}">&nbsp;&nbsp;&nbsp;${a.option }</label></p>
							</c:forEach>
							</c:when>
							<c:otherwise>
							<div style="padding:2rem 0.5rem">
							<span style="float:left">답변 : </span>
							<input type="text"  style="width:80%"name="suraContent" id="suraContent" class="form-control form-control-sm"></div>
							</c:otherwise>
							</c:choose>
							<div style="padding-bottom:2rem"><button type="submit" class="btn-sm btn-primary" style="float:right;">
								<span class="icon text-white-50">
								<i class="fas fa-plus"></i></span>
								<span class="text" style="color: white;">&nbsp;설문 제출</span></button></div>
							</form>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function check(){
			if($("input[name=suraContent]").val()==null){
				if($("input:radio[name=options]:checked").length==0&&
					$("input:checkbox[name=options]:checked").length==0){
					alert("하나이상 체크해주세요.");
					console.log("체크안됨");
					return false;
				}
			}else{
				if($("input[name=suraContent]").val()==""){
					alert("빈 칸은 제출이 불가합니다.");
					console.log("빈칸");
					return false;
				}
			}
			console.log("체크됨");
			return true;
		}
	</script>

	<!-- 댓글 영역 -->
      <div class="col-sm-10 mx-auto" >
	 <table id="reply" class="table" align="center" style="border-collapse:collapse; padding:10px;">
	 			<thead>
	 				<tr>
                   		<td style="font: 15px bold" colspan="3">댓글(<span id="rcount">0</span>)</td> 
                    </tr>
	 			</thead>
	 			
                <tbody>
                
                </tbody>
      </table>
        <!-- 댓글 작성 영역 -->
		<br>
		 <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                    	<c:if test="${ !empty loginUser }">
	                        <th colspan="2" style="width:100%">
	                            <textarea class="app-textarea" id="replyContent" rows="2" style="resize:none; width:100%"></textarea>
	                        </th>
	                        <th style="vertical-align: middle"><button class="btn btn-primary" id="addReply">등록하기</button></th>
                        </c:if>
                        <c:if test="${ empty loginUser }">
                        	<th colspan="2" style="width:100%">
	                            <textarea class="app-textarea" readonly rows="2" style="resize:none; width:100%">로그인한 사용자만 사용가능한 서비스입니다. 로그인 후 이용해주세요.</textarea>
	                        </th>
	                        <th style="vertical-align: middle"><button class="btn btn-primary" disabled>등록하기</button></th>
                        </c:if>
                    </tr>
                </thead>
            </table>
            
	</div>
	

    
      <script>
    	$(function(){
            selectReplyList();
            
            $("#addReply").click(function(){
                var sno = "${sur.surNo}";

               if($("#replyContent").val().trim().length != 0){
                  
                  $.ajax({
                     url:"rinsert.so",
                     type:"post",
                     data:{replyContent:$("#replyContent").val(),
                          refBoardNo:sno,
                          replyWriter:"${loginUser.empNo}"},
                     success:function(result){
                        if(result > 0){
                           $("#replyContent").val("");
                           selectReplyList();
                           
                        }else{
                           alert("댓글등록실패");
                        }
                     },error:function(){
                        console.log("댓글 작성 ajax 통신 실패");
                     }
                  });
                  
               }else{
                  alert("댓글등록하셈");
               }
               
            });
         });
         
         function selectReplyList(){
        	 var sno = "${sur.surNo}";
            $.ajax({
               url:"rlistSur",
               data:{sno:sno},
               type:"get",
               success:function(list){
                  $("#rcount").text(list.length);
                  console.log(list);
                  var value="";
                  $.each(list, function(i, obj){
  					
  					if("${loginUser.empNo}" == obj.replyWriter){
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
                  console.log("댓글 리스트조회용 ajax 통신 실패");
               }
            });
         }
      </script>

	<div>
		<div style="text-align:center; margin-bottom:3rem">
			<a href="slist.so" class="app-button app-button-rounded app-button-xs primary">
				<span class="text" style="color: white">목록</span>
			</a>
		</div>
	</div>
</div> <!-- div class="container-fluid" -->
	</div> <!-- div class="wrapper" -->
	</div> <!-- div class="wrapper" -->
	</div> <!--지우지 마세요   div class="pcoded-content"  -->
	</div> <!--지우지 마세요    div class="pcoded-main-container"  -->
	
	
	<!-- [ Main Content ] 메인화면 끝 -->

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	
	</body>
	</html>
