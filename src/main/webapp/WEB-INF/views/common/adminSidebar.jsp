<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8 ">
<meta http-equiv="X-UA-Compatible" content="IE=edge chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
     <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
   
    <!-- Favicon icon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/ablePro/assets/images/favicon.ico" type="image/x-icon">
    <!-- vendor css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ablePro/assets/css/style.css">

   <title>FIOFFICE</title>
</head>
<body>
<!-- [ navigation menu ] start -->
<nav class="pcoded-navbar menu-light ">
      <div class="navbar-wrapper  ">
         <div class="navbar-content scroll-div " >
            
            <ul class="nav pcoded-inner-navbar ">
               <li class="nav-item pcoded-menu-caption">
                   <label>ADMIN</label>
               </li>
               <li class="nav-item">
                   <a href="authority.aut" class="nav-link "><span class="pcoded-micon"><i class="feather icon-edit m-r-5"></i></span><span class="pcoded-mtext">권한관리</span></a>
               </li>
               <li class="nav-item pcoded-hasmenu">
                   <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-users m-r-5"></i></span><span class="pcoded-mtext">인사관리</span></a>
                   <ul class="pcoded-submenu">
                       <li><a href="dept.ad">부서관리</a></li>
                       <li><a href="manageEmp.do">사원관리</a></li>
                       <li><a href="insertEmp.do">사원추가</a></li>
                   </ul>
               </li>
               
                <li class="nav-item pcoded-hasmenu">
                   <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-grid m-r-5"></i></span><span class="pcoded-mtext">메뉴관리</span></a>
                   <ul class="pcoded-submenu">
                       <li><a href="nlist.bo">공지사항</a></li>
                       <li><a href="layout-horizontal.html">결재</a></li>
                       <li><a href="calendar.ad">캘린더</a></li>
                       <li><a href="sadmin.so">설문</a></li>
                       <li><a href="meetingRoom.ad">회의실</a></li>
                   </ul>
               </li>

               
               
            <!--     <li class="nav-item pcoded-menu-caption">
                   <label>UI Element</label>
               </li>
               <li class="nav-item pcoded-hasmenu">
                   <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Basic</span></a>
                   <ul class="pcoded-submenu">
                       <li><a href="bc_alert.html">Alert</a></li>
                       <li><a href="bc_button.html">Button</a></li>
                       <li><a href="bc_badges.html">Badges</a></li>
                       <li><a href="bc_breadcrumb-pagination.html">Breadcrumb & paggination</a></li>
                       <li><a href="bc_card.html">Cards</a></li>
                       <li><a href="bc_collapse.html">Collapse</a></li>
                       <li><a href="bc_carousel.html">Carousel</a></li>
                       <li><a href="bc_grid.html">Grid system</a></li>
                       <li><a href="bc_progress.html">Progress</a></li>
                       <li><a href="bc_modal.html">Modal</a></li>
                       <li><a href="bc_spinner.html">Spinner</a></li>
                       <li><a href="bc_tabs.html">Tabs & pills</a></li>
                       <li><a href="bc_typography.html">Typography</a></li>
                       <li><a href="bc_tooltip-popover.html">Tooltip & popovers</a></li>
                       <li><a href="bc_toasts.html">Toasts</a></li>
                       <li><a href="bc_extra.html">Other</a></li>
                   </ul>
               </li>
               <li class="nav-item pcoded-menu-caption">
                   <label>Forms &amp; table</label>
               </li>
               <li class="nav-item">
                   <a href="form_elements.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Forms</span></a>
               </li>
               <li class="nav-item">
                   <a href="tbl_bootstrap.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-align-justify"></i></span><span class="pcoded-mtext">Bootstrap table</span></a>
               </li>
               <li class="nav-item pcoded-menu-caption">
                   <label>Chart & Maps</label>
               </li>
               <li class="nav-item">
                   <a href="chart-apex.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span><span class="pcoded-mtext">Chart</span></a>
               </li>
               <li class="nav-item">
                   <a href="map-google.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
               </li>
               <li class="nav-item pcoded-menu-caption">
                   <label>Pages</label>
               </li>
               <li class="nav-item pcoded-hasmenu">
                   <a href="#!" class="nav-link "><span class="pcoded-micon"><i class="feather icon-lock"></i></span><span class="pcoded-mtext">Authentication</span></a>
                   <ul class="pcoded-submenu">
                       <li><a href="auth-signup.html" target="_blank">Sign up</a></li>
                       <li><a href="auth-signin.html" target="_blank">Sign in</a></li>
                   </ul>
               </li>
               <li class="nav-item"><a href="sample-page.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Sample page</span></a></li>
-->
            </ul>
            
         </div>
      </div>
   </nav>
   <!-- [ navigation menu ] end -->
   
   
   <!-- Required Js -->
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/vendor-all.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/ripple.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/pcoded.min.js"></script>

   <!-- Apex Chart -->
   <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/plugins/apexcharts.min.js"></script>
   <!-- custom-chart js -->
   <script src="${pageContext.request.contextPath}/resources/ablePro/assets/js/pages/dashboard-main.js"></script>   

   
</body>
</html>