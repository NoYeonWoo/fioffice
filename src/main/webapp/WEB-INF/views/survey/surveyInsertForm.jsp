<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


 <!-- Favicon icon -->
 <link rel="icon" href="${pageContext.request.contextPath}/resources/ablePro/assets/images/favicon.ico" type="image/x-icon">


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
		<form id="boardForm" role="form" action="cinsert.bo" method="post" autocomplete="off">
			<div class="card shadow mb-4">
            	<div class="card-header py-3">
               		<h5>설문 등록</h5>
           		</div>
           		
           		
           	<div class="card-body" align="center">
           		
				<table class="form_type form_reserach001">
				<tbody>
				<tr>							
					<th>
						<span class="title">설문 제목</span>
					</th>
					<td>									
						<input class="txt w_max" type="text" name="title" value="">
					</td>
				</tr>
				<tr>
					<th>
						<span class="title">설문 기간</span>
					</th>
					<td>
						<span class="wrap_date">
							<input id="start-date" type="text" name="start_date" value="2021-03-14" readonly="readonly">
						</span>
						~
						<span class="wrap_date">
							<input id="end-date" type="text" name="end_date" value="2021-03-15" readonly="readonly">
						</span>						
					</td>
				</tr>
	
			
				<tbody>
					<tr>
						<th>
							<span class="title">안내 문구</span></th>
						<td>
							<div class="wrap_txtarea">
								<textarea class="w_large" name="survey_guidance" placeholder="" maxlength="1000"></textarea>
							</div>
							</td>
                        
					</tr>
				
			<tr>
				<th><span class="title">질문</span></th>
				<td>
					<div class="wrap_txt"><input class="txt w_large" type="text" name="question" value="" maxlength=""></div>
				</td>
			</tr>
			<tr>							
				<th><span class="title">설문 문항 타입</span></th>
				<td>									
					<div class="flexable_info">										
						<span class="wrap_select">
							<select name="query_type">
								<option value="select">객관식</option>
								<option value="text">주관식</option>
							</select>
						</span>	
					</div>
				</td>
			</tr>
			
			<tr class="query-answer-row" style="display: table-row;">							
				<th><span class="title">보기</span></th>
				<td class="query-answer-container">
				
			


					<span class="btn-add-querycase wrap_txt disable">
					<input type="radio" name="radio" value="-1">
					<input class="txt wfix_max" type="text" readonly="readonly" value="보기 추가하기"></span>
					<span class="btn-add-querycase-etc btn_wrap btn_creat">
					<span class="ic_form ic_addlist"></span>
					<span class="txt">보기 추가</span>
					</span>
			
			
			</td>
			
			
						</tr>							
					</tbody>	
				</table>
				
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
          
        
    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    
   
 
</body>
</html>