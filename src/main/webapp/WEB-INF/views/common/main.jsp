<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>

<body class="">
      
   <!-- [ Pre-loader ] start 로딩기능 
   <div class="loader-bg">
      <div class="loader-track">
         <div class="loader-fill"></div>
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
                            <li class="breadcrumb-item"><a href="#!">My Portal</a></li>
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
                     <h5>Latest Updates</h5>
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
            
            
            
            <!-- Todo main 화면 으로 쓸 예정 -->
            <div class="col-xl-6 col-md-12">
               <div class="card table-card">
                  <div class="card-header">
                     <h5>Projects</h5>
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
                  <div class="card-body p-0">
                     <div class="table-responsive">
                        <table class="table table-hover mb-0">
                           <thead>
                              <tr>
                                 <th>
                                    <div class="chk-option">
                                       <label
                                          class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                          <input type="checkbox" class="custom-control-input">
                                          <span class="custom-control-label"></span>
                                       </label>
                                    </div> Assigned
                                 </th>
                                 <th>Name</th>
                                 <th>Due Date</th>
                                 <th class="text-right">Priority</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="chk-option">
                                       <label
                                          class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                          <input type="checkbox" class="custom-control-input">
                                          <span class="custom-control-label"></span>
                                       </label>
                                    </div>
                                    <div class="d-inline-block align-middle">
                                       <img
                                          src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/avatar-4.jpg"
                                          alt="user image"
                                          class="img-radius wid-40 align-top m-r-15">
                                       <div class="d-inline-block">
                                          <h6>John Deo</h6>
                                          <p class="text-muted m-b-0">Graphics Designer</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td>Able Pro</td>
                                 <td>Jun, 26</td>
                                 <td class="text-right"><label
                                    class="badge badge-light-danger">Low</label></td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="chk-option">
                                       <label
                                          class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                          <input type="checkbox" class="custom-control-input">
                                          <span class="custom-control-label"></span>
                                       </label>
                                    </div>
                                    <div class="d-inline-block align-middle">
                                       <img
                                          src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/avatar-2.jpg"
                                          alt="user image"
                                          class="img-radius wid-40 align-top m-r-15">
                                       <div class="d-inline-block">
                                          <h6>Jenifer Vintage</h6>
                                          <p class="text-muted m-b-0">Web Designer</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td>Mashable</td>
                                 <td>March, 31</td>
                                 <td class="text-right"><label
                                    class="badge badge-light-primary">high</label></td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="chk-option">
                                       <label
                                          class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                          <input type="checkbox" class="custom-control-input">
                                          <span class="custom-control-label"></span>
                                       </label>
                                    </div>
                                    <div class="d-inline-block align-middle">
                                       <img
                                          src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/avatar-3.jpg"
                                          alt="user image"
                                          class="img-radius wid-40 align-top m-r-15">
                                       <div class="d-inline-block">
                                          <h6>William Jem</h6>
                                          <p class="text-muted m-b-0">Developer</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td>Flatable</td>
                                 <td>Aug, 02</td>
                                 <td class="text-right"><label
                                    class="badge badge-light-success">medium</label></td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="chk-option">
                                       <label
                                          class="check-task custom-control custom-checkbox d-flex justify-content-center done-task">
                                          <input type="checkbox" class="custom-control-input">
                                          <span class="custom-control-label"></span>
                                       </label>
                                    </div>
                                    <div class="d-inline-block align-middle">
                                       <img
                                          src="${pageContext.request.contextPath}/resources/ablePro/assets/images/user/avatar-2.jpg"
                                          alt="user image"
                                          class="img-radius wid-40 align-top m-r-15">
                                       <div class="d-inline-block">
                                          <h6>David Jones</h6>
                                          <p class="text-muted m-b-0">Developer</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td>Guruable</td>
                                 <td>Sep, 22</td>
                                 <td class="text-right"><label
                                    class="badge badge-light-primary">high</label></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Todo main 화면 끝 -->
            
            
            <!-- 공지사항게시판 시작 -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Striped Table</h5>
                        <span class="d-block m-t-5">use class <code>table-striped</code> inside table element</span>
                    </div>
                    <div class="card-body table-border-style">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
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
                  <jsp:include page="calendar.jsp"/>
               </div>
            </div>
        </div>
   
    
 <!-- 캘린더 일정-—>  -->
                    <div class="card-body text-center">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Calendar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <tr>
                                        <td>getDate();</td>
                                        <td>등록된 일정이 없습니다.</td>
                                    </tr>
                                    <tr>
                                        <td>getDate();</td>
                                        <td>등록된 일정이 없습니다.</td>
                                    </tr>
                                    <tr>
                                        <td>getDate();</td>
                                        <td>등록된 일정이 없습니다.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
</div>
<!-- [ Main Content ] 메인화면 끝 -->


    
    
    <jsp:include page="footer.jsp"/>
</body>
</html>