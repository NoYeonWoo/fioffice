<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/board/assets/images/favicon.ico" type="image/x-icon">
 

<style>
	#buttons button{
		margin: 5em;
		display: inline-block;
		margin-left: auto;
		margin-right: auto;
	}
	#buttons{
		display: inline-block;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
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
	
	.pagination {
	  display: inline-block;
	  margin-left: auto;
	  margin-right: auto;
	}
	
	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: background-color .3s;
	}
	
	.pagination a.active {
	  background-color: rgb(2, 1, 13);
	  color: white;
	}
	
	 a:link { color: gray; text-decoration: none;}
	 a:visited { color: gray; text-decoration: none;}
	 a:hover {text-decoration: none;}
	
	.bContents:hover {
		background: rgb(250,250,250);
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
		<form id="boardForm" role="form" action="sinsert.so" method="post" autocomplete="off">
			<div class="card shadow mb-4">
            	<div class="card-header py-3">
               		<h5>설문 등록</h5>
           		</div>


           	<div class="card-body" align="center">
           		<div class="warning">
                                폭력적이거나 선정적인 문항<br />
                                타인의 권리를 침해하거나, 명예를 훼손하는 문항<br />
                                개인정보를 직접적으로 묻는 문항<br /> 
                                * 다음 항목에 해당되는 설문항목이 포함되어 있을 시 삭제될 수 있습니다.<br/><br /> <br />
                            </div>
				<table class="form_type form_reserach">
				<tbody>
				<tr>							
					<th>
						<span class="title">설문 제목</span>
					</th>
					<td>									
						<input type="text" id="surTitle" name="surTitle" class="form-control">
					</td>
				</tr>
				<tr>
				<td>
				<input type="hidden" id="surWriter" class="form-control" value="${loginUser.empNo}" name="surWriter" readonly>
				</td>
				</tr>
				<tr>
					<th>
						<span class="title">설문 기간</span>
					</th>
					<td>
						<input type="date" id="surStart" name="surStart" class="form-control form-control-user">
					</td>
					<th>
						<span class="txt">~</span>
					</th>
					<td>
							<input type="date" id="surEnd" name="surEnd" class="form-control form-control-user">
					</td>
				</tr>
				<tr>
					<th>
						<span class="title">안내 문구</span>
					</th>
					<td>
						<input type="text" id="surContent" name="surContent" class="form-control">
					</td>
				</tr>
				
				<tr>
					<th>
						<span class="title">설문 질문</span>
					</th>
					<td>
						<input type="text" id="surqContent" name="questionSurvey" class="form-control">
					</td>
				</tr>
				<tr>							
					<th><span class="title">설문 타입</span></th>
					<td>									
						<div class="flexable_info">										
							<span class="wrap_select">
								<select id="surqType" class="form-select form-select-lg">
									<option value="M">객관식</option>
									<option value="E">주관식</option>
								</select>
							</span>	
						</div>
					</td>
				</tr>
					</tbody>	
				</table>
				<div id="selectBox">
				<table id="surveySelectBox">
				<tbody>
				<tr>
				<button type="button" id="addq_btn" class="btn btn-primary btn-icon-split">
                <b>+</b>
                </button>
                
				<div class="qbox">
				<tr>
				<div class="q">
				<td style="width:80%;">
				<span>1</span>
				<button type='button' id='minusq_btn' class='btn btn-primary btn-icon-split'>
                <b>x</b></button>
				<input value="" id="surOTitle" name="sur" type="text"
                                                class="form-control" autocomplete="off">                   
                </td>
                </div>
				</tr>
 
				</tbody>
				</table>
				</div>
				
				<!-- 버튼 -->
				<br><br>
				<div>
					<button type="button" onclick="javascript:history.back();" class="btn btn-secondary">이전</button>
					
					<a href="sinsert.so" class="btn btn-primary btn-icon-split">
					<span class="icon text-white-50">
					</span>
					<span class="text" style="color: white">작성</span>
					</a>
				</div>
				</div>
			</div>
			</form>


			
			</div>
           		</div>
           </div>
           </div>
          
        
        <tr><div class='q'><td style='width:80%;'><br><button type='button' id='minusq_btn' class='btn btn-primary btn-icon-split'>
    	<b>x</b></button><input value='' id='surOTitle' name='sur' type='text' class='form-control' autocomplete='off'></td></div></tr>"
  

    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script>	   
	$("#surqType").change(function() {
		$("#selectBox").toggle();
	});
	
	 $('#addq_btn').on('click', function () {
    	 var q = $("<tr><div class='q'><td style='width:80%;'><span></span><br><button type='button' id='minusq_btn' class='btn btn-primary btn-icon-split'>"
    	 +"<b>x</b></button><input value='' id='surOTitle' name='sur' type='text' class='form-control' autocomplete='off'></td></div></tr>"
         );
        $(this).parent().find('.qbox').append(q);
    });

    $(document).on('click', '#minusq_btn', function () {
			 $(this).parent().remove();
    });

    $(document).on('click', 'button', function () {
        $('#selectBox').find('.q').each(function (i) {
            $(this).find('span').text(i + 1);
        });
    });
	
	
	 	
	</script>
   
 
</body>
</html>