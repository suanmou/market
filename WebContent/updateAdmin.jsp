<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- 使用strut2标签库 -->
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>超市货物进出管理系统 | 管理员管理</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="plugins/datatables/jquery.dataTables.min.css">
    <link href="plugins/datatables/extensions/Buttons/css/buttons.bootstrap.min.css">
    <link href="plugins/datatables/extensions/Buttons/css/buttons.dataTables.min.css">
    <link href="plugins/iCheck/all.css" rel="stylesheet">
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
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
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">Alexander Pierce</span>
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
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">个人中心</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">退出</a>
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
                <li><a href="index.html"><i class="fa fa-anchor"></i> <span>首页</span></a></li>
                <li  class="active">
                    <a href="admin_findAll.action"><i class="fa  fa-github-alt"></i> <span>管理员模块</span>
                    </a>
                </li>
                <li>
                    <a href="customer_findAll.action"><i class="fa  fa-user"></i> <span>会员管理</span>
                    </a>
                </li>
                <li>
                    <a href="good_findALl.html"><i class="fa fa-archive"></i> <span>商品管理</span>
                    </a>

                </li>
                <li class="treeview">
                    <a href="orderList.html"><i class="fa fa-truck"></i> <span>库存管理</span>
                            <span class="pull-right-container">
                               <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="orderList.html"><i class="fa fa-genderless"></i>出库管理</a></li>
                        <li><a href="returnOrderList.html"><i class="fa fa-genderless"></i>入库管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="goodtype_findAll.action"><i class="fa fa-tags"></i> <span>分类管理</span>
                    </a>
                </li>
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
                管理员管理
                <small>详情</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs pull-right">
                            <li class=""><a href="#tab-content-edit" data-toggle="tab" id="nav-tab-edit"
                                            aria-expanded="false"><i class="fa fa-edit"></i></a></li>
                            <li class="active"><a href="#tab-content-list" data-toggle="tab" id="nav-tab-list"
                                                  aria-expanded="true"><i class="fa fa-list-ul"></i></a></li>
                            <li class="pull-left header"><i class="fa fa-user"></i>
                                <small>管理员列表</small>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab-content-list">
                                <!-- /.box -->
                                <div class="box">
                                    <!--&lt;!&ndash; /.box-header &ndash;&gt;-->
                                    <!--<div class="box-header">-->
                                    <!--<h3 class="box-title"><i class="fa fa-user"></i>用户列表</h3>-->
                                    <!--</div>-->

                                    <div class="box-body">
                                        <table id="userList" class="table table-bordered table-hover  text-center">
                                            <thead>
                                            <tr>
                                                <th>管理员Id</th>
                                                <th>管理员名</th>
                                                <th>性别</th>
                                                <th>手机号</th>
                                                <th>email</th>
                                                <th>地址</th>
                                                <th>密码</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <s:iterator value="#request.list" var="d">
                                            <tr>
                                                <td><s:property value="#d.adminId"/></td>
                                                <td><s:property value="#d.adminName"/></td>
                                                <td><s:property value="#d.sex"/></td>
                                                <td><s:property value="#d.phone"/></td>
                                                <td><s:property value="#d.email"/></td>
                                                <td><s:property value="#d.address"/></td>
                                                <td><s:property value="#d.password"/></td>
                                                <td>
                                                   <a href="admin_delete.action?adminId=<s:property value="#d.customerId"/>">删除</a>
                                                <a href="admin_update.action?adminId=<s:property value="#d.customerId"/>">修改</a>
                                                </td>
                                            </tr>  
                                            </s:iterator>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.box -->
                            </div>
                            <div class="tab-pane" id="tab-content-edit">
                                <div class="box box-info">
                                        <div class="box-header"><h3 class="box-title"><i class="fa fa-user"></i>基本信息</h3></div>
                                        <form id="user-form" name="user-form" class="form-horizontal bv-form"
                                              novalidate="novalidate">
                                            <input type="hidden" name="id" value="254f9b64321411e6a46d10a0f3df85fa">
                                            <input type="hidden" name="version" value="15">
                                            <input type="hidden" name="isSuperAdmin" value="1">
                                            <input type="hidden" name="createDateTime" data-flag="date"
                                                   data-format="yyyy-mm-dd hh:ii:ss" value="2016-06-14 17:41:25">
                                            <input type="hidden" name="deleted" value="0">

                                            <div class="box-body">
                                                <div class="col-md-6">
                                                    <div class="form-group has-feedback">
                                                        <label for="name" class="col-sm-3 control-label">姓名</label>

                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" id="name"
                                                                   name="name" placeholder="姓名" data-bv-field="name"><i
                                                                class="form-control-feedback" data-bv-icon-for="name"
                                                                style="display: none;"></i>
                                                            <small data-bv-validator="notEmpty"
                                                                   data-bv-validator-for="name" class="help-block"
                                                                   style="display: none;">请输入姓名
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <label for="birthday"
                                                               class="col-sm-3 control-label">出生日期</label>

                                                        <div class="input-group date col-sm-8"
                                                             style="padding-left: 15px; padding-right: 15px;">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control"
                                                                   data-flag="datepicker" data-format="yyyy-mm-dd"
                                                                   id="birthday" name="birthday" placeholder="出生日期"
                                                                   data-bv-field="birthday"><i
                                                                class="form-control-feedback"
                                                                data-bv-icon-for="birthday" style="display: none;"></i>
                                                            <small data-bv-validator="notEmpty"
                                                                   data-bv-validator-for="birthday" class="help-block"
                                                                   style="display: none;">请输入出生日期
                                                            </small>
                                                            <small data-bv-validator="date"
                                                                   data-bv-validator-for="birthday" class="help-block"
                                                                   style="display: none;">请输入有效日期
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="telphone" class="col-sm-3 control-label">座机</label>

                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" id="telphone"
                                                                   name="telphone" placeholder="座机">
                                                        </div>
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <label for="email" class="col-sm-3 control-label">Email</label>

                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" id="email"
                                                                   name="email" placeholder="Email"
                                                                   data-bv-field="email"><i
                                                                class="form-control-feedback" data-bv-icon-for="email"
                                                                style="display: none;"></i>
                                                            <small data-bv-validator="notEmpty"
                                                                   data-bv-validator-for="email" class="help-block"
                                                                   style="display: none;">请输入邮件
                                                            </small>
                                                            <small data-bv-validator="emailAddress"
                                                                   data-bv-validator-for="email" class="help-block"
                                                                   style="display: none;">非法的邮件格式
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group has-feedback">
                                                        <label class="col-sm-3 control-label">性别</label>

                                                        <div class="col-sm-8">
                                                            <label class="control-label"> <div class="iradio_square-green" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="radio" name="sex" data-flag="icheck" class="square-green" value="1" data-bv-field="sex" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> 男
                                                            </label> &nbsp; <label class="control-label"> <div class="iradio_square-green" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="radio" name="sex" data-flag="icheck" class="square-green" value="0" data-bv-field="sex" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><i class="form-control-feedback" data-bv-icon-for="sex" style="display: none;"></i> 女
                                                        </label>
                                                            <small data-bv-validator="notEmpty" data-bv-validator-for="sex" class="help-block" style="display: none;">请选择性别</small></div>
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <label for="loginName"
                                                               class="col-sm-3 control-label">登录名</label>

                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" id="loginName"
                                                                   name="loginName" placeholder="登录名"
                                                                   data-bv-field="loginName"><i
                                                                class="form-control-feedback"
                                                                data-bv-icon-for="loginName" style="display: none;"></i>
                                                            <small data-bv-validator="notEmpty"
                                                                   data-bv-validator-for="loginName" class="help-block"
                                                                   style="display: none;">请输入登录名
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="mobile" class="col-sm-3 control-label">手机</label>

                                                        <div class="col-sm-8">
                                                            <!--<input type="text" class="form-control" id="mobile" name="mobile" placeholder="手机"
                                                                                               data-inputmask='"mask": "9999999999999"' data-mask>-->
                                                            <input type="text" class="form-control" id="mobile"
                                                                   name="mobile" placeholder="手机">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="qq" class="col-sm-3 control-label">QQ</label>

                                                        <div class="col-sm-8">
                                                            <input type="text" class="form-control" id="qq" name="qq"
                                                                   placeholder="QQ">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                            <div class="box-footer text-right" style="height:50px;">
                                                <!--以下两种方式提交验证,根据所需选择-->
                                                <button type="button" class="btn btn-default" data-btn-type="cancel">
                                                    取消
                                                </button>
                                                <button type="submit" class="btn btn-primary" data-btn-type="save">提交
                                                </button>
                                            </div>
                                            <!-- /.box-footer -->
                                            <input type="hidden" value=""></form>
                                    </div>
                                <div class="box box-info">
                                    <div class="box-header"><h3 class="box-title"><i class="fa fa-user"></i>订单信息</h3></div>
                                    <form id="order-form" name="order-form" class="form-horizontal bv-form"
                                          novalidate="novalidate">


                                        <div class="box-body">
                                            <div class="col-md-6">

                                            </div>
                                            <div class="col-md-6">

                                            </div>
                                        </div>
                                        <!-- /.box-body -->
                                        <div class="box-footer text-right" style="height:50px;">
                                            <!--以下两种方式提交验证,根据所需选择-->
                                            <button type="button" class="btn btn-default" data-btn-type="cancel">
                                                取消
                                            </button>
                                            <button type="submit" class="btn btn-primary" data-btn-type="save">提交
                                            </button>
                                        </div>
                                        <!-- /.box-footer -->
                                        <input type="hidden" value=""></form>
                                </div>
                                <div class="box box-info">
                                    <div class="box-header"><h3 class="box-title"><i class="fa fa-user"></i>收货地址</h3></div>
                                    <form id="address-form" name="address-form" class="form-horizontal bv-form"
                                          novalidate="novalidate">
                                        <div class="box-body">
                                            <div class="col-md-6">
                                            </div>
                                            <div class="col-md-6">

                                            </div>
                                        </div>
                                        <!-- /.box-body -->
                                        <div class="box-footer text-right" style="height:50px;">
                                            <!--以下两种方式提交验证,根据所需选择-->
                                            <button type="button" class="btn btn-default" data-btn-type="cancel">
                                                取消
                                            </button>
                                            <button type="submit" class="btn btn-primary" data-btn-type="save">提交
                                            </button>
                                        </div>
                                        <!-- /.box-footer -->
                                        <input type="hidden" value=""></form>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
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
    <div class="control-sidebar-bg"></div>
</div>

<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- DataTable -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- Buttons -->
<script src="plugins/datatables/extensions/Buttons/js/dataTables.buttons.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script src="plugins/fastclick/fastclick.js"></script>
<script src="dist/js/app.min.js"></script>
 
 
</body>

</html>
