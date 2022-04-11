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

<title>:: ADD Details ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Dropzone Css -->
<link href="assets/plugins/dropzone/dropzone.css" rel="stylesheet">
<!-- Bootstrap Material Datetime Picker Css -->
<link href="assets/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
<!-- Bootstrap Select Css -->
<link href="assets/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
<!-- Custom Css -->
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/color_skins.css">
</head>
<body class="theme-blush ls-toggle-menu">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="assets/images/logo.svg" width="48" height="48" alt="ITS Student Hub"></div>
        <p>Please wait...</p>
    </div>
</div>
<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<!-- Top Bar -->
<nav class="navbar p-l-5 p-r-5">
    <ul class="nav navbar-nav navbar-left">
        <li>
            <div class="navbar-header" style="padding:15px">
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand"><img src="assets/images/logo.svg" width="30" alt="ITS Student Hub"><span class="m-l-10">ITS Student Hub</span></a>
            </div>
        </li>
        <li class="float-right">
            <a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="zmdi zmdi-settings zmdi-hc-spin"></i></a>
        </li>
    </ul>
</nav>
<!-- Right Sidebar -->
<aside id="rightsidebar" class="right-sidebar">
    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting"><i class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
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

<section class="content profile-page">
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Add Student Details
                <small class="text-muted">Welcome to ITS Student Hub</small>
                </h2>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12">
                
                <ul class="breadcrumb float-md-right">
                    <li class="breadcrumb-item"><a ><i class="zmdi zmdi-home"></i> ITS Student Hub</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Student</a></li>
                    <li class="breadcrumb-item active">Add Details</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                    <div class="header">
                        <h2><strong>Basic</strong> Information <small>${message }</small></h2>
                    </div>
                     <form method="post" action="LoginServlet" enctype="multipart/form-data" class="body">
                        <div class="row clearfix">
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="rollnumber" placeholder="Rollnumber" value="${rollnumber}" readonly>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="email" placeholder="Email" value="${email}" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="First Name" name="fname" required>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Last Name" name="lname" required>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Phone No." name="phone" required>
                                </div>
                            </div>
                             
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="form-group">
                                    <input type="date" class="form-control" placeholder="Date Of Birth" name="dob">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">                                
                                <select class="form-control show-tick" name="gender">
                                    <option value="">-- Gender --</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">                                
                                <select class="form-control show-tick" name="department">
                                    <option value="">-- Department --</option>
                                    <option value="BCA">BCA</option>
                                    <option value="MCA">MCA</option>
                                    <option value="BBA">BBA</option>
                                    <option value="MBA">MBA</option>
                                    <option value="PGDM">PGDM</option>
                                </select>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-6 col-md-12">
                                <div class="form-group">
                                    <input type="file" class="form-control" name="img" accept="image/*" onchange="loadFile(event)" required>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div style="max-width: 150px">
                                    <img id="output"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row clearfix">                            
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-raised btn-round btn-primary" name="action" value="details">Submit</button>
                                <button type="reset" class="btn btn-raised btn-round">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- Jquery Core Js --> 
<script src="assets/bundles/libscripts.bundle.js"></script> <!-- Bootstrap JS and jQuery v3.2.1 -->
<script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- slimscroll, waves Scripts Plugin Js -->  

<script src="assets/plugins/autosize/autosize.js"></script> <!-- Autosize Plugin Js --> 
<script src="assets/plugins/momentjs/moment.js"></script> <!-- Moment Plugin Js --> 
<script src="assets/plugins/dropzone/dropzone.js"></script> <!-- Dropzone Plugin Js -->
<!-- Bootstrap Material Datetime Picker Plugin Js --> 
<script src="assets/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>

<script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="assets/js/pages/forms/basic-form-elements.js"></script>
<script>
  var loadFile = function(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('output');
      output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
  };
</script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
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