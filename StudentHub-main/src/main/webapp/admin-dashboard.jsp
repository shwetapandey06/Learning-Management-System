<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: ITS Student Hub University Admin ::</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.css"/>
    <link rel="stylesheet" href="assets/plugins/morrisjs/morris.css" />
    <!-- Custom Css -->
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/color_skins.css">
</head>

<body class="theme-blush">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="m-t-30"><img class="zmdi-hc-spin" src="assets/images/logo.svg" width="48" height="48"
                    alt="ITS Student Hub"></div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- Top Bar -->
    <nav class="navbar p-l-5 p-r-5">
        <ul class="nav navbar-nav navbar-left">
            <li>
                <div class="navbar-header">
                    <a href="javascript:void(0);" class="bars"></a>
                    <a class="navbar-brand" href="index.jsp"><img src="assets/images/logo.svg" width="30"
                            alt="ITS Student Hub"><span class="m-l-10">ITS Student Hub</span></a>
                </div>
            </li>
            <li><a href="javascript:void(0);" class="ls-toggle-btn" data-close="true"><i class="zmdi zmdi-swap"></i></a>
            </li>
            <li><a href="contact.jsp" title="Contact List"><i class="zmdi zmdi-account-box-phone"></i></a></li>

            <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                    role="button"><i class="zmdi zmdi-flag"></i>
                    <div class="notify">
                        <span class="heartbit"></span>
                        <span class="point"></span>
                    </div>
                </a>
                <ul class="dropdown-menu pullDown">
                    <li class="header">Department</li>
                    <li class="body">
                        <ul class="menu tasks list-unstyled">
                            <li>
                                <a href="javascript:void(0);">
                                    <div class="progress-container progress-primary">
                                        <span class="progress-badge">Computer</span>
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="86"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 86%;">
                                                <span class="progress-value">86%</span>
                                            </div>
                                        </div>
                                        <ul class="list-unstyled team-info">
                                            <li class="m-r-15"><small class="text-muted">Team</small></li>
                                            <li>
                                                <img src="assets/images/xs/avatar2.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar3.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar4.jpg" alt="Avatar">
                                            </li>
                                        </ul>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <div class="progress-container progress-info">
                                        <span class="progress-badge">Medical</span>
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="45"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                                <span class="progress-value">45%</span>
                                            </div>
                                        </div>
                                        <ul class="list-unstyled team-info">
                                            <li class="m-r-15"><small class="text-muted">Team</small></li>
                                            <li>
                                                <img src="assets/images/xs/avatar10.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar9.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar8.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar7.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar6.jpg" alt="Avatar">
                                            </li>
                                        </ul>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <div class="progress-container progress-warning">
                                        <span class="progress-badge">Art & Design</span>
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="29"
                                                aria-valuemin="0" aria-valuemax="100" style="width: 29%;">
                                                <span class="progress-value">29%</span>
                                            </div>
                                        </div>
                                        <ul class="list-unstyled team-info">
                                            <li class="m-r-15"><small class="text-muted">Team</small></li>
                                            <li>
                                                <img src="assets/images/xs/avatar5.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar2.jpg" alt="Avatar">
                                            </li>
                                            <li>
                                                <img src="assets/images/xs/avatar7.jpg" alt="Avatar">
                                            </li>
                                        </ul>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="footer"><a href="javascript:void(0);">View All</a></li>
                </ul>
            </li>

            <li class="float-right">

                <a href="LoginServlet?action=logout" class="mega-menu" data-close="true"><i
                        class="zmdi zmdi-power"></i></a>
                <a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i
                        class="zmdi zmdi-settings zmdi-hc-spin"></i></a>
            </li>
        </ul>
    </nav>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#dashboard"><i
                        class="zmdi zmdi-home"></i></a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#user">Professors</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane stretchRight active" id="dashboard">
                <div class="menu">
                    <ul class="list">
                        <li>
                            <div class="user-info">
                                <div class="image"><a href="students-profile.jsp"><img
                                            src="assets/images/${user_det.getImage()}" alt="User"></a></div>
                                <div class="detail">
                                    <h4>${user_det.getFname()}&nbsp;${user_det.getLname()}</h4>
                                    <small>${user_det.getDepartment()}</small>
                                </div>
                            </div>
                        </li>
                        <li class="header">MAIN</li>
                        <li class="active"><a href="admin-dashboard.jsp"><i class="zmdi zmdi-home"></i><span>Dashboard</span></a></li>
                        <li><a href="javascript:void(0);" class="menu-toggle"><i
                                    class="zmdi zmdi-accounts-outline"></i><span>Students</span> </a>
                            <ul class="ml-menu">
                                <li><a href="HomeServlet?action=students">All Students</a></li>
                            </ul>
                        </li>
                        <li><a href="javascript:void(0);" class="menu-toggle"><i
                                    class="zmdi zmdi-accounts-alt"></i><span>Professors</span> </a>
                            <ul class="ml-menu">
                                <li><a href="ProfessorServlet?action=professors">All Professors</a></li>
                                <li><a href="admin-add-professors.jsp">Add Professors</a></li>
                            </ul>
                        </li>


                        <li class="header">UNIVERSITY</li>
                        <li><a href="javascript:void(0);" class="menu-toggle"><i
                                    class="zmdi zmdi-city-alt"></i><span>Departments</span> </a>
                            <ul class="ml-menu">
                                <li><a href="HomeServlet?action=departments">All Departments</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="tab-pane stretchLeft" id="user">
                <div class="menu">
                    <ul class="list">
                        <li>
                            <div class="user-info m-b-20 p-b-15">
                                <div class="image"><a href="profile.jsp"><img src="assets/images/profile_av.jpg"
                                            alt="User"></a></div>
                                <div class="detail">
                                    <h4>Pro. Charlotte</h4>
                                    <small>Design Faculty</small>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <a title="facebook" href="javascript:void(0);"><i
                                                class="zmdi zmdi-facebook"></i></a>
                                        <a title="twitter" href="javascript:void(0);"><i
                                                class="zmdi zmdi-twitter"></i></a>
                                        <a title="instagram" href="javascript:void(0);"><i
                                                class="zmdi zmdi-instagram"></i></a>
                                    </div>
                                    <div class="col-4 p-r-0">
                                        <h5 class="m-b-5">13</h5>
                                        <small>Exp</small>
                                    </div>
                                    <div class="col-4">
                                        <h5 class="m-b-5">33</h5>
                                        <small>Awards</small>
                                    </div>
                                    <div class="col-4 p-l-0">
                                        <h5 class="m-b-5">237</h5>
                                        <small>Class</small>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <small class="text-muted">Location: </small>
                            <p>795 Folsom Ave, Suite 600 San Francisco, CADGE 94107</p>
                            <hr>
                            <small class="text-muted">Email address: </small>
                            <p>Charlotte@example.com</p>
                            <hr>
                            <small class="text-muted">Phone: </small>
                            <p>+ 202-555-0191</p>
                            <hr>
                            <ul class="list-unstyled">
                                <li>
                                    <div>Photoshop</div>
                                    <div class="progress m-b-20">
                                        <div class="progress-bar l-blue " role="progressbar" aria-valuenow="89"
                                            aria-valuemin="0" aria-valuemax="100" style="width: 89%"> <span
                                                class="sr-only">89% Complete</span> </div>
                                    </div>
                                </li>
                                <li>
                                    <div>Illustrator</div>
                                    <div class="progress m-b-20">
                                        <div class="progress-bar l-amber" role="progressbar" aria-valuenow="56"
                                            aria-valuemin="0" aria-valuemax="100" style="width: 56%"> <span
                                                class="sr-only">56% Complete</span> </div>
                                    </div>
                                </li>
                                <li>
                                    <div>Art & Design</div>
                                    <div class="progress m-b-20">
                                        <div class="progress-bar l-green" role="progressbar" aria-valuenow="78"
                                            aria-valuemin="0" aria-valuemax="100" style="width: 78%"> <span
                                                class="sr-only">78% Complete</span> </div>
                                    </div>
                                </li>
                                <li>
                                    <div>HTML</div>
                                    <div class="progress m-b-20">
                                        <div class="progress-bar l-blush" role="progressbar" aria-valuenow="43"
                                            aria-valuemin="0" aria-valuemax="100" style="width: 56%"> <span
                                                class="sr-only">56% Complete</span> </div>
                                    </div>
                                </li>
                                <li>
                                    <div>CSS</div>
                                    <div class="progress m-b-20">
                                        <div class="progress-bar l-parpl" role="progressbar" aria-valuenow="43"
                                            aria-valuemin="0" aria-valuemax="100" style="width: 50%"> <span
                                                class="sr-only">50% Complete</span> </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </aside>
    <!-- Right Sidebar -->
    <aside id="rightsidebar" class="right-sidebar">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting"><i
                        class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane slideRight active" id="setting">
                <div class="slim_scroll">
                    <div class="card">
                        <h6>Skins</h6>
                        <ul class="choose-skin list-unstyled">
                            <li data-theme="purple">
                                <div class="purple"></div>
                            </li>
                            <li data-theme="blue">
                                <div class="blue"></div>
                            </li>
                            <li data-theme="cyan">
                                <div class="cyan"></div>
                            </li>
                            <li data-theme="green">
                                <div class="green"></div>
                            </li>
                            <li data-theme="orange">
                                <div class="orange"></div>
                            </li>
                            <li data-theme="blush" class="active">
                                <div class="blush"></div>
                            </li>
                        </ul>
                    </div>
                    <div class="card theme-light-dark">
                        <h6>Left Menu</h6>
                        <button class="t-light btn btn-default btn-simple btn-round">Light Menu</button>
                        <button class="t-dark btn btn-default btn-round">Dark Menu</button>
                        <button class="m_img_btn btn btn-primary btn-round btn-block">Sidebar Image</button>
                    </div>

                </div>
            </div>

        </div>
    </aside>
    
	<section class="content home">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-12">
                    <h2>Dashboard
                        <small>Welcome to ITS Student Hub</small>
                    </h2>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-12 text-right">
                    <div class="inlineblock text-center m-r-15 m-l-15 d-none d-lg-inline-block">
                        <div class="sparkline" data-type="bar" data-width="97%" data-height="25px" data-bar-Width="2"
                            data-bar-Spacing="5" data-bar-Color="#fff">3,2,6,5,9,8,7,9,5,1,3,5,7,4,6</div>
                        <small class="col-white">Visitors</small>
                    </div>
                    <div class="inlineblock text-center m-r-15 m-l-15 d-none d-lg-inline-block">
                        <div class="sparkline" data-type="bar" data-width="97%" data-height="25px" data-bar-Width="2"
                            data-bar-Spacing="5" data-bar-Color="#fff">1,3,5,7,4,6,3,2,6,5,9,8,7,9,5</div>
                        <small class="col-white">Operations</small>
                    </div>
                    <button class="btn btn-white btn-icon btn-round float-right m-l-10" type="button">
                        <i class="zmdi zmdi-plus"></i>
                    </button>
                    <ul class="breadcrumb float-md-right">
                        <li class="breadcrumb-item"><a href="index.html"><i class="zmdi zmdi-home"></i> ITS Student Hub</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12">
                    <div class="row clearfix">
                        <div class="col-lg-4 col-md-6">
                            <div class="card top_counter">
                                <div class="body">
                                    <div class="icon xl-slategray"><i class="zmdi zmdi-account-o"></i> </div>
                                    <div class="content">
                                        <div class="text">Student</div>
                                        <h5 class="number count-to" data-from="0" data-to="2049" data-speed="2500"
                                            data-fresh-interval="700">2049</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card top_counter">
                                <div class="body">
                                    <div class="icon xl-slategray"><i class="zmdi zmdi-account-circle"></i> </div>
                                    <div class="content">
                                        <div class="text">Teacher</div>
                                        <h5 class="number count-to" data-from="0" data-to="39" data-speed="4000"
                                            data-fresh-interval="700">39</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card top_counter">
                                <div class="body">
                                    <div class="icon xl-slategray"><i class="zmdi zmdi-label"></i> </div>
                                    <div class="content">
                                        <div class="text">Attendance</div>
                                        <h5 class="number count-to" data-from="0" data-to="798" data-speed="3000"
                                            data-fresh-interval="700">798</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card top_counter">
                                <div class="body">
                                    <div class="icon xl-slategray"><i class="zmdi zmdi-graduation-cap"></i> </div>
                                    <div class="content">
                                        <div class="text">Courses</div>
                                        <h5 class="number count-to" data-from="0" data-to="43" data-speed="2500"
                                            data-fresh-interval="700">43</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card top_counter">
                                <div class="body">
                                    <div class="icon xl-slategray"><i class="zmdi zmdi-balance-wallet"></i> </div>
                                    <div class="content">
                                        <div class="text">Expense</div>
                                        <h5 class="m-b-0">$<span class="number count-to" data-from="0" data-to="2154"
                                                data-speed="2500" data-fresh-interval="700">2154</span></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card top_counter">
                                <div class="body">
                                    <div class="icon xl-slategray"><i class="zmdi zmdi-balance"></i> </div>
                                    <div class="content">
                                        <div class="text">Income</div>
                                        <h5 class="m-b-0">$<span class="number count-to" data-from="0" data-to="5478"
                                                data-speed="2500" data-fresh-interval="700">5478</span></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>University</strong> Survey <small>Description text here...</small></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                        data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp float-right">
                                        <li><a href="javascript:void(0);">Edit</a></li>
                                        <li><a href="javascript:void(0);">Delete</a></li>
                                        <li><a href="javascript:void(0);">Report</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs padding-0">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                        href="#chart-view">Chart View</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#table-view">Table
                                        View</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content m-t-10">
                                <div class="tab-pane active" id="chart-view">
                                    <div id="m_bar_chart" class="graph"></div>
                                    <div class="xl-slategray">
                                        <div class="body">
                                            <div class="row text-center">
                                                <div class="col-sm-3 col-6">
                                                    <h4 class="margin-0">$106</h4>
                                                    <p class="text-muted margin-0"> Today's</p>
                                                </div>
                                                <div class="col-sm-3 col-6">
                                                    <h4 class="margin-0">$907</h4>
                                                    <p class="text-muted margin-0">This Week's</p>
                                                </div>
                                                <div class="col-sm-3 col-6">
                                                    <h4 class="margin-0">$4210</h4>
                                                    <p class="text-muted margin-0">This Month's</p>
                                                </div>
                                                <div class="col-sm-3 col-6">
                                                    <h4 class="margin-0">$7,000</h4>
                                                    <p class="text-muted margin-0">This Year's</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="table-view">
                                    <div class="table-responsive">
                                        <table class="table m-b-0 table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Address</th>
                                                    <th>Earning</th>
                                                    <th>Reviews</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>University Name</td>
                                                    <td>Porterfield 508 Virginia Street Chicago, IL 60653</td>
                                                    <td>$2,325</td>
                                                    <td>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-sm btn-neutral"><i
                                                                class="zmdi zmdi-chart"></i></button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>University Name</td>
                                                    <td>2595 Pearlman Avenue Sudbury, MA 01776 </td>
                                                    <td>$3,325</td>
                                                    <td>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-sm btn-neutral"><i
                                                                class="zmdi zmdi-chart"></i></button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>University Name</td>
                                                    <td>Porterfield 508 Virginia Street Chicago, IL 60653</td>
                                                    <td>$5,021</td>
                                                    <td>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-sm btn-neutral"><i
                                                                class="zmdi zmdi-chart"></i></button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>University Name</td>
                                                    <td>508 Virginia Street Chicago, IL 60653</td>
                                                    <td>$1,325</td>
                                                    <td>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star-outline"></i>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-sm btn-neutral"><i
                                                                class="zmdi zmdi-chart"></i></button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>University Name</td>
                                                    <td>1516 Holt Street West Palm Beach, FL 33401</td>
                                                    <td>$2,325</td>
                                                    <td>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star-outline"></i>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-sm btn-neutral"><i
                                                                class="zmdi zmdi-chart"></i></button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>University Name</td>
                                                    <td>508 Virginia Street Chicago, IL 60653</td>
                                                    <td>$2,325</td>
                                                    <td>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star col-amber"></i>
                                                        <i class="zmdi zmdi-star-outline"></i>
                                                    </td>
                                                    <td>
                                                        <button class="btn btn-sm btn-neutral"><i
                                                                class="zmdi zmdi-chart"></i></button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card student-list">
                        <div class="header">
                            <h2><strong>New</strong> Admission List <small>Description text here...</small></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                        data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">2017 Year</a></li>
                                        <li><a href="javascript:void(0);">2016 Year</a></li>
                                        <li><a href="javascript:void(0);">2015 Year</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover m-b-0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Age</th>
                                            <th>Address</th>
                                            <th>Number</th>
                                            <th>Department</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><span class="list-name">OU 00456</span></td>
                                            <td>Joseph</td>
                                            <td>25</td>
                                            <td>70 Bowman St. South Windsor, CT 06074</td>
                                            <td>404-447-6013</td>
                                            <td><span class="badge badge-primary">MCA</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="list-name">KU 00789</span></td>
                                            <td>Cameron</td>
                                            <td>27</td>
                                            <td>123 6th St. Melbourne, FL 32904</td>
                                            <td>404-447-4569</td>
                                            <td><span class="badge badge-warning">Medical</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="list-name">KU 00987</span></td>
                                            <td>Alex</td>
                                            <td>23</td>
                                            <td>123 6th St. Melbourne, FL 32904</td>
                                            <td>404-447-7412</td>
                                            <td><span class="badge badge-info">M.COM</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="list-name">OU 00951</span></td>
                                            <td>James</td>
                                            <td>23</td>
                                            <td>44 Shirley Ave. West Chicago, IL 60185</td>
                                            <td>404-447-2589</td>
                                            <td><span class="badge badge-default">MBA</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="list-name">OU 00456</span></td>
                                            <td>Joseph</td>
                                            <td>25</td>
                                            <td>70 Bowman St. South Windsor, CT 06074</td>
                                            <td>404-447-6013</td>
                                            <td><span class="badge badge-primary">MCA</span></td>
                                        </tr>
                                        <tr>
                                            <td><span class="list-name">OU 00953</span></td>
                                            <td>charlie</td>
                                            <td>21</td>
                                            <td>123 6th St. Melbourne, FL 32904</td>
                                            <td>404-447-9632</td>
                                            <td><span class="badge badge-success">BBA</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card visitors-map">
                        <div class="header">
                            <h2><strong>Our</strong> Location <small>Contrary to popular belief, Lorem Ipsum is not
                                    simply random text</small></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                        data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <div id="world-map-markers" style="height:280px;"></div>
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="body">
                                        <ul class="row location_list list-unstyled">
                                            <li class="col-lg-4 col-md-4 col-6">
                                                <div class="body xl-turquoise">
                                                    <i class="zmdi zmdi-pin"></i>
                                                    <h4 class="number count-to" data-from="0" data-to="53"
                                                        data-speed="2500" data-fresh-interval="700">53</h4>
                                                    <span>America</span>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-4 col-6">
                                                <div class="body xl-khaki">
                                                    <i class="zmdi zmdi-pin"></i>
                                                    <h4 class="number count-to" data-from="0" data-to="24"
                                                        data-speed="2500" data-fresh-interval="700">24</h4>
                                                    <span>Australia</span>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-4 col-6">
                                                <div class="body xl-parpl">
                                                    <i class="zmdi zmdi-pin"></i>
                                                    <h4 class="number count-to" data-from="0" data-to="15"
                                                        data-speed="2500" data-fresh-interval="700">15</h4>
                                                    <span>Canada</span>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-4 col-6">
                                                <div class="body xl-salmon">
                                                    <i class="zmdi zmdi-pin"></i>
                                                    <h4 class="number count-to" data-from="0" data-to="33"
                                                        data-speed="2500" data-fresh-interval="700">33</h4>
                                                    <span>India</span>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-4 col-6">
                                                <div class="body xl-blue">
                                                    <i class="zmdi zmdi-pin"></i>
                                                    <h4 class="number count-to" data-from="0" data-to="8"
                                                        data-speed="2500" data-fresh-interval="700">8</h4>
                                                    <span>UK</span>
                                                </div>
                                            </li>
                                            <li class="col-lg-4 col-md-4 col-6">
                                                <div class="body xl-slategray">
                                                    <i class="zmdi zmdi-pin"></i>
                                                    <h4 class="number count-to" data-from="0" data-to="5"
                                                        data-speed="2500" data-fresh-interval="700">5</h4>
                                                    <span>Other</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card tasks_report">
                        <div class="header">
                            <h2><strong>Total</strong> Revenue</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle"
                                        data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">2017 Year</a></li>
                                        <li><a href="javascript:void(0);">2016 Year</a></li>
                                        <li><a href="javascript:void(0);">2015 Year</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body text-center">
                            <h4 class="margin-0">$ <span class="number count-to" data-from="0" data-to="8923"
                                    data-speed="2500" data-fresh-interval="700">8923</span></h4>
                            <h6 class="m-b-20">Total Income</h6>
                            <input type="text" class="knob dial1" value="66" data-width="100" data-height="100"
                                data-thickness="0.3" data-fgColor="#4caf50" readonly>
                            <h6 class="m-t-20">Satisfaction Rate</h6>
                            <small class="displayblock">47% Average <i class="zmdi zmdi-trending-up"></i></small>
                            <div class="sparkline m-t-20" data-type="bar" data-width="97%" data-height="32px"
                                data-bar-Width="2" data-bar-Spacing="8" data-bar-Color="#212121">
                                3,2,6,5,9,8,7,8,4,5,1,2,9,5,1,3,5,7,4,6</div>
                        </div>
                    </div>
                    <div class="card bg-dark">
                        <div class="body">
                            <div class="sparkline m-b-10" data-type="bar" data-width="97%" data-height="38px"
                                data-bar-Width="2" data-bar-Spacing="6" data-bar-Color="#cccccc">
                                2,8,5,3,1,7,9,5,6,4,2,3,1,2,8,5,3,1,7,9,5,6,4,2,3,1</div>
                            <h6 class="text-center m-b-25 col-white">New Students in USA</h6>
                            <div id="usa_map" style="height: 200px"></div>
                            <div class="table-responsive m-t-20">
                                <table class="table table-striped m-b-0">
                                    <thead>
                                        <tr>
                                            <th>City</th>
                                            <th>New Student</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>New York</td>
                                            <td>215<i class="zmdi zmdi-trending-up m-l-10"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Los Angeles</td>
                                            <td>189<i class="zmdi zmdi-trending-up m-l-10"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Chicago</td>
                                            <td>408<i class="zmdi zmdi-trending-down m-l-10"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Houston</td>
                                            <td>78<i class="zmdi zmdi-trending-down m-l-10"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Phoenix</td>
                                            <td>148<i class="zmdi zmdi-trending-up m-l-10"></i></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="body text-center">
                            <input type="text" class="knob" value="65" data-width="100" data-height="100"
                                data-thickness="0.25" data-fgColor="#cb8fe7" readonly>
                            <p class="text-muted m-b-0">READ-ONLY</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Pro.</strong> Timeline</h2>
                            <ul class="header-dropdown">
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="new_timeline">
                                <div class="header">
                                    <div class="color-overlay">
                                        <div class="day-number">8</div>
                                        <div class="date-right">
                                            <div class="day-name">Monday</div>
                                            <div class="month">February 2018</div>
                                        </div>
                                    </div>
                                </div>
                                <ul>
                                    <li>
                                        <div class="bullet pink"></div>
                                        <div class="time">11am</div>
                                        <div class="desc">
                                            <h3>Attendance</h3>
                                            <h4>Computer Class</h4>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="bullet green"></div>
                                        <div class="time">12pm</div>
                                        <div class="desc">
                                            <h3>Design Team</h3>
                                            <h4>Hangouts</h4>
                                            <ul class="list-unstyled team-info margin-0 p-t-5">
                                                <li><img src="assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                                <li><img src="assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                                <li><img src="assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                                <li><img src="assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="bullet orange"></div>
                                        <div class="time">1:30pm</div>
                                        <div class="desc">
                                            <h3>Lunch Break</h3>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="bullet green"></div>
                                        <div class="time">2pm</div>
                                        <div class="desc">
                                            <h3>Finish</h3>
                                            <h4>Go to Home</h4>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    



    <!-- Jquery Core Js -->
    <script src="assets/bundles/libscripts.bundle.js"></script> <!-- Bootstrap JS and jQuery v3.2.1 -->
    <script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- slimscroll, waves Scripts Plugin Js -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="assets/bundles/morrisscripts.bundle.js"></script> <!-- Morris Plugin Js -->
    <script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
    <script src="assets/js/pages/student-profile.js"></script>
    <script src="assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
    <script src="assets/plugins/jvectormap/jquery-jvectormap-us-aea-en.js"></script><!-- USA Map Js -->
	<script src="assets/bundles/knob.bundle.js"></script>
    <script>
        $( document ).ready(function() {
            var t = $(".right-sidebar .choose-skin li.active").data("theme");
            $(".right-sidebar .choose-skin li").removeClass("active");
            
            if ($.cookie("skin") !== null && $.cookie("skin") !== undefined) {
                $('body').removeClass("theme-" + t)
                $('body').addClass("theme-" + $.cookie("skin"));
            }
            
            
            var theme = $.cookie("theme");
            if(theme == 'light'){
                $("body").removeClass("menu_dark")
            }
            else if(theme == 'dark'){
                $("body").addClass("menu_dark")
            }
            
        });
        </script>
</body>

</html>