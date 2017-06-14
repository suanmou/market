<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 使用strut2标签库 -->
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>超市货物进出管理系统 | 首页</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
    <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="index.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>M</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">超市货物进出管理系统</span>
        </a>
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the messages -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <!-- User Image -->
                                                <img src="dist/img/user2-160x160.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <!-- Message title and timestamp -->
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <!-- The message -->
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                </ul>
                                <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->
                    <!-- Notifications Menu -->
                    <li class="dropdown notifications-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- Inner Menu: contains the notifications -->
                                <ul class="menu">
                                    <li>
                                        <!-- start notification -->
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks Menu -->
                    <li class="dropdown tasks-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- Inner menu: contains the tasks -->
                                <ul class="menu">
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <!-- Task title and progress text -->
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <!-- The progress bar -->
                                            <div class="progress xs">
                                                <!-- Change the css width attribute to simulate progress -->
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                     role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <c:choose>
   							<c:when test="${empty sessionScope.admin}">
   								<c:redirect url="login.jsp" />
   							</c:when>
   							<c:otherwise>
   								  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                           
                                 <span class="hidden-xs">${sessionScope.admin.adminId }</span>
   							</c:otherwise>
   							</c:choose>
                            
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    超级管理员
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <!-- <li class="user-body"> -->
                            <!--  <div class="row">
                                 <div class="col-xs-4 text-center">
                                     <a href="#">Followers</a>
                                 </div>
                                 <div class="col-xs-4 text-center">
                                     <a href="#">Sales</a>
                                 </div>
                                 <div class="col-xs-4 text-center">
                                     <a href="#">Friends</a>
                                 </div>
                             </div> -->
                            <!-- /.row -->
                            <!--  </li> -->
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">个人中心</a>
                                </div>
                                <div class="pull-right">
                                    <a href="admin_logout.action" class="btn btn-default btn-flat">退出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form (Optional) -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- Sidebar Menu -->
       <ul class="sidebar-menu">
					<li class="header">HEADER</li>
					<!-- Optionally, you can add icons to the links -->
					<li  class="active"><a href="index.jsp"><i class="fa fa-anchor"></i> <span>首页</span></a></li>
					<li><a href="admin_findAll.action"><i
							class="fa  fa-github-alt"></i> <span>管理员模块</span> </a></li>
					<li><a href="customer_findAll.action"><i
							class="fa  fa-user"></i> <span>用户管理</span> </a></li>
					<li><a href="supplier_findAll.action"><i
							class="fa  fa-user"></i> <span>供应商管理</span></a></li>
					<li><a href="good_findAll.action"><i class="fa fa-archive"></i>
							<span>商品管理</span> </a></li>
					<li class="treeview"><a href="inshop_findAll.action"><i
							class="fa fa-truck"></i> <span>库存管理</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="inshop_findAll.action"><i
									class="fa fa-genderless"></i>入库管理</a></li>
							<li><a href="dealing_findAll.action"><i
									class="fa fa-genderless"></i>出库管理</a></li>
						</ul></li>
					<li><a href="goodtype_findAll.action"><i
							class="fa fa-tags"></i> <span>分类管理</span> </a></li>
				</ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                欢迎来到
                <small>超市货物进出管理系统</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- Your Page Content Here -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box-->
                    <div class="small-box bg-aqua">
                        <div class="inner"><h3>1500</h3>

                            <p>今日订单数</p></div>
                        <div class="icon"><i class="fa fa-shopping-cart"></i></div>
                        <a href="#" class="small-box-footer">查看更多<i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-red">
                        <div class="inner"><h3>1500</h3>

                            <p>今日已付金额</p></div>
                        <div class="icon"><i class="fa fa-dollar"></i></div>
                        <a href="#" class="small-box-footer">查看更多<i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-yellow">
                        <div class="inner"><h3>1200</h3>

                            <p>用户新增数</p></div>
                        <div class="icon"><i class="ion ion-person-add"></i></div>
                        <a href="#" class="small-box-footer">查看更多<i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-blue">
                        <div class="inner"><h3>13500</h3>

                            <p>用户总数</p></div>
                        <div class="icon"><i class="fa fa-user"></i></div>
                        <a href="#" class="small-box-footer">查看更多<i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- 图形-->
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">月度回顾报告</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-box-tool dropdown-toggle"
                                            data-toggle="dropdown">
                                        <i class="fa fa-wrench"></i></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <p class="text-center">
                                        <strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
                                    </p>

                                    <div class="chart">
                                        <!-- Sales Chart Canvas -->
                                        <canvas id="salesChart" style="height: 180px;"></canvas>
                                    </div>
                                    <!-- /.chart-responsive -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-4">
                                    <p class="text-center">
                                        <strong>Goal Completion</strong>
                                    </p>

                                    <div class="progress-group">
                                        <span class="progress-text">Add Products to Cart</span>
                                        <span class="progress-number"><b>160</b>/200</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">Complete Purchase</span>
                                        <span class="progress-number"><b>310</b>/400</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-red" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">Visit Premium Page</span>
                                        <span class="progress-number"><b>480</b>/800</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-green" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">Send Inquiries</span>
                                        <span class="progress-number"><b>250</b>/500</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-yellow" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- ./box-body -->
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
                                        <h5 class="description-header">$35,210.43</h5>
                                        <span class="description-text">TOTAL REVENUE</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-yellow"><i
                                                class="fa fa-caret-left"></i> 0%</span>
                                        <h5 class="description-header">$10,390.90</h5>
                                        <span class="description-text">TOTAL COST</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                                        <h5 class="description-header">$24,813.53</h5>
                                        <span class="description-text">TOTAL PROFIT</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
                                        <h5 class="description-header">1200</h5>
                                        <span class="description-text">GOAL COMPLETIONS</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">最新订单</h3>

                            <div class="box-tools pull-right">
                                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <table class="table no-margin">
                                    <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Item</th>
                                        <th>Status</th>
                                        <th>Popularity</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                        <td>Call of Duty IV</td>
                                        <td><span class="label label-success">Shipped</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#00a65a" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                        <td>Samsung Smart TV</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f39c12" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                        <td>iPhone 6 Plus</td>
                                        <td><span class="label label-danger">Delivered</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f56954" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                        <td>Samsung Smart TV</td>
                                        <td><span class="label label-info">Processing</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#00c0ef" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                        <td>Samsung Smart TV</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f39c12" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                        <td>iPhone 6 Plus</td>
                                        <td><span class="label label-danger">Delivered</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f56954" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                        <td>Call of Duty IV</td>
                                        <td><span class="label label-success">Shipped</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#00a65a" data-height="20">
                                                <canvas width="34" height="20"
                                                        style="display: inline-block; width: 34px; height: 20px; vertical-align: top;">
                                                </canvas>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Place New
                                Order</a>
                            <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">查看所有订单</a>
                        </div>
                        <!-- box-footer -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">近期新增产品</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">Samsung TV
                                            <span class="label label-warning pull-right">$1800</span></a>
                        <span class="product-description">
                          Samsung 32" 1080p 60Hz LED Smart HDTV.
                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">Bicycle
                                            <span class="label label-info pull-right">$700</span></a>
                                            <span class="product-description">
                          26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                                            </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">Xbox One <span
                                                class="label label-danger pull-right">$350</span></a>
                                        <span class="product-description">
                          Xbox One Console Bundle with Halo Master Chief Collection.
                                        </span>
                                    </div>
                                </li>
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">PlayStation 4
                                            <span class="label label-success pull-right">$399</span></a>
                                            <span class="product-description">
                          PlayStation 4 500GB Console (PS4)
                                            </span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="box-footer text-center">
                            <a href="javascript:void(0)" class="uppercase">查看所有产品</a>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
    </footer>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                    <span class="pull-right-container">
                  <span class="label label-danger pull-right">70%</span>
                                    </span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>

<!--chartjs-->
<script src="plugins/chartjs/Chart.min.js"></script>
<!--sparkline-->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!--data.js-->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
 Both of these plugins are recommended to enhance the
 user experience. Slimscroll is required when using the
 fixed layout. -->
</body>

</html>
