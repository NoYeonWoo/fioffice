<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#center{
	text-align:center;
	margin: auto;
}
#textbig{ 
	height:300px; 
    resize:none;

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
                            <li class="breadcrumb-item"><a href="#!">My Portal</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  <!-- [ breadcrumb ] end -->
  
  
<!-- [ Main Content ] 브래드크럽프 밑에 부분 메인시작 -->
<div class="row">
 
 
 
 
 <!-- [ Main Content ] start -->
        
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Basic Component</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">이름</label>
                                        <input type="text" class="form-control" id="Text" value="" >
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">휴대폰번호</label>
                                        <input type="text" class="form-control" id="Text" placeholder="" >
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Email">이메일</label>
                                        <input type="email" class="form-control" id="Email" aria-describedby="emailHelp" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">회사이름</label>
                                        <input type="text" class="form-control" id="Text" value="" >
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">직급</label>
                                        <input type="text" class="form-control" id="Text" placeholder="" >
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">내선전화</label>
                                        <input type="text" class="form-control" id="Text" placeholder="" >
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">부서</label>
                                        <input type="text" class="form-control" id="Text" aria-describedby="" value="" >
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="form-group">
                                        <label class="floating-label" for="Text">회사주소</label>
                                        <input type="text" class="form-control" id="Text" placeholder="" >
                                    </div>
                                </div>
                                
                            </div>
                            
                            
                            <div class="row">
                            
                                <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">메모</span>
                            </div>
                            <textarea id="textbig" class="form-control" aria-label="With textarea" ></textarea>
                        </div>
                        
                        
                        </div>
                        
                        
                        <div class="row" id="center">
                        <div class="col-md-12">

					<div class="card-body">
						<button type="button" class="btn  btn-primary btn-lg">수정하기</button>
						<button type="button" class="btn  btn-secondary btn-lg">삭제하기</button>
					</div>

					</div>
                      </div>
                        
                        
                        </form>
                    </div>
                </div>
           
      <!--  -->



 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->


    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>