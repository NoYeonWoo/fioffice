<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <!-- data tables css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/plugins/dataTables.bootstrap4.min.css">
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
 <!-- Basic Button table start -->
          <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Custom Button</h5>
                    </div>
                    <div class="card-body">
                        <div class="dt-responsive table-responsive">
                            <div id="custom-btn_wrapper" class="dataTables_wrapper dt-bootstrap4">
                            	<table id="custom-btn" class="table table-striped table-bordered nowrap dataTable" role="grid" aria-describedby="custom-btn_info">
	                                <thead>
	                                    <tr role="row">
	                                    <th class="sorting" tabindex="0" aria-controls="custom-btn" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 262px;">Name</th>
	                                    <th class="sorting_desc" tabindex="0" aria-controls="custom-btn" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 412px;" aria-sort="descending">Position</th>
	                                    <th class="sorting" tabindex="0" aria-controls="custom-btn" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 194px;">Office</th>
	                                    <th class="sorting" tabindex="0" aria-controls="custom-btn" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 99px;">Age</th>
	                                    <th class="sorting" tabindex="0" aria-controls="custom-btn" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 201px;">Start date</th>
	                                    <th class="sorting" tabindex="0" aria-controls="custom-btn" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 156px;">Salary</th>
	                                    </tr>
	                                </thead>
	                                <tbody>  
	                                <tr role="row" class="odd">
	                                        <td class="">Gloria Little</td>
	                                        <td class="sorting_1">Systems Administrator</td>
	                                        <td>New York</td>
	                                        <td>59</td>
	                                        <td>2009/04/10</td>
	                                        <td>$237,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Tiger Nixon</td>
	                                        <td class="sorting_1">System Architect</td>
	                                        <td>Edinburgh</td>
	                                        <td>61</td>
	                                        <td>2011/04/25</td>
	                                        <td>$320,800</td>
	                                    </tr><tr role="row" class="odd">
	                                        <td class="">Quinn Flynn</td>
	                                        <td class="sorting_1">Support Lead</td>
	                                        <td>Edinburgh</td>
	                                        <td>22</td>
	                                        <td>2013/03/03</td>
	                                        <td>$342,000</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Bradley Greer</td>
	                                        <td class="sorting_1">Software Engineer</td>
	                                        <td>London</td>
	                                        <td>41</td>
	                                        <td>2012/10/13</td>
	                                        <td>$132,000</td>
	                                    </tr><tr role="row" class="odd">
	                                        <td class="">Brenden Wagner</td>
	                                        <td class="sorting_1">Software Engineer</td>
	                                        <td>San Francisco</td>
	                                        <td>28</td>
	                                        <td>2011/06/07</td>
	                                        <td>$206,850</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Sonya Frost</td>
	                                        <td class="sorting_1">Software Engineer</td>
	                                        <td>Edinburgh</td>
	                                        <td>23</td>
	                                        <td>2008/12/13</td>
	                                        <td>$103,600</td>
	                                    </tr><tr role="row" class="odd">
	                                        <td class="">Haley Kennedy</td>
	                                        <td class="sorting_1">Senior Marketing Designer</td>
	                                        <td>London</td>
	                                        <td>43</td>
	                                        <td>2012/12/18</td>
	                                        <td>$313,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Cedric Kelly</td>
	                                        <td class="sorting_1">Senior Javascript Developer</td>
	                                        <td>Edinburgh</td>
	                                        <td>22</td>
	                                        <td>2012/03/29</td>
	                                        <td>$433,060</td>
	                                    </tr><tr role="row" class="odd">
	                                        <td class="">Doris Wilder</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>Sidney</td>
	                                        <td>23</td>
	                                        <td>2010/09/20</td>
	                                        <td>$85,600</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Herrod Chandler</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>San Francisco</td>
	                                        <td>59</td>
	                                        <td>2012/08/06</td>
	                                        <td>$137,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Herrod Chandler</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>San Francisco</td>
	                                        <td>59</td>
	                                        <td>2012/08/06</td>
	                                        <td>$137,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Herrod Chandler</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>San Francisco</td>
	                                        <td>59</td>
	                                        <td>2012/08/06</td>
	                                        <td>$137,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Herrod Chandler</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>San Francisco</td>
	                                        <td>59</td>
	                                        <td>2012/08/06</td>
	                                        <td>$137,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Herrod Chandler</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>San Francisco</td>
	                                        <td>59</td>
	                                        <td>2012/08/06</td>
	                                        <td>$137,500</td>
	                                    </tr><tr role="row" class="even">
	                                        <td class="">Herrod Chandler</td>
	                                        <td class="sorting_1">Sales Assistant</td>
	                                        <td>San Francisco</td>
	                                        <td>59</td>
	                                        <td>2012/08/06</td>
	                                        <td>$137,500</td>
	                                    </tr></tbody>
	                                <tfoot>
	                                    <tr><th rowspan="1" colspan="1">Name</th><th rowspan="1" colspan="1">Position</th><th rowspan="1" colspan="1">Office</th><th rowspan="1" colspan="1">Age</th><th rowspan="1" colspan="1">Start date</th><th rowspan="1" colspan="1">Salary</th></tr>
	                                </tfoot>
                            	</table>
                        	</div>
                    	</div>
                	</div>
            	</div>
            <!-- Basic Button table end -->


 </div> <!--지우지 마세요    div class="row"  -->
            </div> <!--지우지 마세요   div class="pcoded-content"  -->
            </div> <!--지우지 마세요    div class="pcoded-main-container"  -->
<!-- [ Main Content ] 메인화면 끝 -->


    
    
    <jsp:include page="../common/footer.jsp"/>
    
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/menu-setting.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.colVis.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/buttons.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/pages/data-buttons-custom.js"></script>
</body>
</html>