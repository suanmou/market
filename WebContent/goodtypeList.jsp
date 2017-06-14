<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 使用strut2标签库 -->
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>超市货物进出管理 | 类别管理</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
<link rel="stylesheet"
	href="plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="plugins/datatables/jquery.dataTables.min.css">
<link
	href="plugins/datatables/extensions/Buttons/css/buttons.bootstrap.min.css">
<link
	href="plugins/datatables/extensions/Buttons/css/buttons.dataTables.min.css">
<link href="plugins/iCheck/all.css" rel="stylesheet">
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Main Header -->
		<header class="main-header">
			<!-- Logo -->
			<a href="index.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>M</b>LT</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg">超市货物进出管理系统</span>
			</a>
			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
								class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the messages -->
									<ul class="menu">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<!-- User Image -->
													<img src="dist/img/user2-160x160.jpg" class="img-circle"
														alt="User Image">
												</div> <!-- Message title and timestamp -->
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4> <!-- The message -->
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
									</ul> <!-- /.menu -->
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul>
						</li>
						<!-- /.messages-menu -->
						<!-- Notifications Menu -->
						<li class="dropdown notifications-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
								class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- Inner Menu: contains the notifications -->
									<ul class="menu">
										<li>
											<!-- start notification --> <a href="#"> <i
												class="fa fa-users text-aqua"></i> 5 new members joined
												today
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
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
								class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- Inner menu: contains the tasks -->
									<ul class="menu">
										<li>
											<!-- Task item --> <a href="#"> <!-- Task title and progress text -->
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3> <!-- The progress bar -->
												<div class="progress xs">
													<!-- Change the css width attribute to simulate progress -->
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul>
						</li>
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<c:choose>
									<c:when test="${empty sessionScope.admin}">
										<c:redirect url="login.jsp" />
									</c:when>
									<c:otherwise>
										<img src="dist/img/user2-160x160.jpg" class="user-image"
											alt="User Image">
										<!-- hidden-xs hides the username on small devices so only the image appears. -->

										<span class="hidden-xs">${sessionScope.admin.adminId }</span>
									</c:otherwise>
								</c:choose>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li class="user-header"><img
									src="dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image">

									<p>
										超级管理员 <small>Member since Nov. 2012</small>
									</p></li>
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
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
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
						<img src="dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
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
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header">HEADER</li>
					<!-- Optionally, you can add icons to the links -->
					<li><a href="index.jsp"><i class="fa fa-anchor"></i> <span>首页</span></a></li>
					<li><a href="admin_findAll.action"><i
							class="fa  fa-github-alt"></i> <span>管理员模块</span> </a></li>
					<li><a href="customer_findAll.action"><i
							class="fa  fa-user"></i> <span>用户管理</span> </a></li>
					<li><a href="supplier_findAll.action"><i class="fa fa-user"></i>
							<span>供应商管理</span> </a></li>
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
					<li class="active"><a href="goodtype_findAll.action"><i
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
					类别管理 <small>详情</small>
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
								<li class=""><a href="#tab-content-edit" data-toggle="tab"
									id="nav-tab-edit" aria-expanded="false"><i
										class="fa fa-edit"></i></a></li>
								<li class="active"><a href="#tab-content-list"
									data-toggle="tab" id="nav-tab-list" aria-expanded="true"><i
										class="fa fa-list-ul"></i></a></li>
								<li class="pull-left header"><i class="fa fa-user"></i> <small>类别列表</small>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tab-content-list">
									<!-- /.box -->
									<div class="box">
										<div class="box-body">
											<table id="goodtypeList"
												class="table table-bordered table-hover text-center">
												<thead>
													<tr>
														<th>类别Id</th>
														<th>类别名称</th>
														<th>操作</th>
													</tr>
												</thead>
												<tbody>
													<s:iterator value="#request.list" var="d">
														<tr>
															<td><s:property value="#d.goodtypeId" /></td>
															<td><s:property value="#d.goodtypeName" /></td>
															<td><a
																href="goodtype_delete.action?goodtypeId=<s:property value="#d.goodtypeId"/>">删除</a>
																<a
																href="goodtype_findByGoodtypeId.action?goodtypeId=<s:property value="#d.goodtypeId"/>">修改</a>
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
										<div class="box-header">
											<h3 class="box-title">
												<i class="fa fa-user"></i>类别信息
											</h3>
										</div>
										<form id="kind-form" name="kind-form"
											class="form-horizontal bv-form" action="goodtype_save.action"
											novalidate="novalidate">
											<input type="hidden" name="id"
												value="254f9b64321411e6a46d10a0f3df85fa"> <input
												type="hidden" name="version" value="15"> <input
												type="hidden" name="isSuperAdmin" value="1"> <input
												type="hidden" name="createDateTime" data-flag="date"
												data-format="yyyy-mm-dd hh:ii:ss"
												value="2016-06-14 17:41:25"> <input type="hidden"
												name="deleted" value="0">

											<div class="box-body">
												<div class="col">
													<div class="form-group">
														<label for="goodtypeId" class="col-sm-3 control-label">类别Id</label>

														<div class="col-sm-8">
															<input type="text" class="form-control" id="goodtypeId"
																name="goodtypeId" placeholder="类别Id">
														</div>
													</div>
													<div class="form-group has-feedback">
														<label for="goodtypeName" class="col-sm-3 control-label">类别名称</label>

														<div class="col-sm-8">
															<input type="text" class="form-control" id="goodtypeName"
																name="goodtypeName" placeholder="类别名称" data-bv-field="goodtypeName"><i
																class="form-control-feedback" data-bv-icon-for="goodtypeName"
																style="display: none;"></i> <small
																data-bv-validator="notEmpty"
																data-bv-validator-for="goodtypeName" class="help-block"
																style="display: none;">请输入类别名称 </small>
														</div>
													</div>
												</div>

											</div>
											<!-- /.box-body -->
											<div class="box-footer text-right" style="height: 50px;">
												<!--以下两种方式提交验证,根据所需选择-->
												<button type="button" class="btn btn-default"
													data-btn-type="cancel">取消</button>
												<button type="submit" class="btn btn-primary"
													data-btn-type="save">提交</button>
											</div>
											<!-- /.box-footer -->
											<input type="hidden" value="">
										</form>
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
			<div class="pull-right hidden-xs">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2016 <a href="#">Company</a>.
			</strong> All rights reserved.
		</footer>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a href="#control-sidebar-home-tab"
					data-toggle="tab"><i class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:;"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->
					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:;">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span class="pull-right-container">
										<span class="label label-danger pull-right">70%</span>
									</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->
				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Some information about this general settings option</p>
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
	<script
		src="plugins/datatables/extensions/Buttons/js/dataTables.buttons.js"></script>
	<!-- SlimScroll -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/iCheck/icheck.min.js"></script>
	<script src="plugins/fastclick/fastclick.js"></script>
	<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
	<script src="plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script src="dist/js/app.min.js"></script>
	<script>
		$(function() {
			$("#birthday").datepicker();
			$('input').iCheck({
				labelHover : false,
				cursor : true,
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
				increaseArea : '20%'
			});
			//	        $('input').on('ifClicked', function(){
			//	            $(this).iCheck('check');
			//	        });
			//	        $('input').iCheck('toggle');
			//	        $('input').on('ifChecked', function(event){
			//	            alert(event.type + ' callback');
			//	        });
			// 配置table的属性
			var tableLanguage = {
				"sLengthMenu" : "每页显示 _MENU_ 条",
				"sInfo" : "第_START_-_END_条 / 共_TOTAL_条数据",
				"sInfoEmpty" : "没有匹配的数据",
				"sInfoFiltered" : "(数据表中共 _MAX_ 条记录)",
				"sProcessing" : "正在加载中...",
				"sZeroRecords" : "对不起，查询不到任何相关数据",
				"sEmptyTable" : "未有相关数据",
				"sSearch" : "搜索：",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上一页",
					"sNext" : "下一页",
					"sLast" : "尾页"
				}
			};
			var table = $('#goodtypeList').DataTable(
					{
						"dom" : "<'row'<'col-sm-5'l><'#mytool.col-sm-6'fr>>"
								+ "t" + "<'row'<'col-sm-6'i><'col-sm-6'p>>",
						"oLanguage" : tableLanguage,
						"sPaginationType" : "full_numbers"
					});
			// table的方法及布局
			/*     var table = $('#userList').DataTable({
			        "dom": "<'row'<'col-sm-5'l><'#mytool.col-sm-7'r>>" +
			        "t" +
			        "<'row'<'col-sm-6'i><'col-sm-6'p>>",
			        "oLanguage": tableLanguage,
			        "sPaginationType": "full_numbers",
			        initComplete: function () {
			            var searchBox = '<div class="input-group"><div class="input-group-btn"><button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">管理员id <span class="caret"></span></button> <ul class="dropdown-menu"><li><a href="#">email</a></li><li><a href="#">管理员名</a></li><li><a href="#">性别</a></li><li><a href="#">手机号</a></li></ul></div><input type="text" class="form-control" placeholder="Search for..."><span class="input-group-btn"><button class="btn btn-primary" type="button">查询</button></span></div><div class="btn-group"><button type="button" class="btn btn-default" data-btn-type="reset">重置</button></div>'
			            var tool = '&nbsp;&nbsp;&nbsp<div class="btn-group"><button type="button" class="btn btn-default" data-btn-type="add-user"  id="addBtn">新增</button><button type="button" class="btn btn-default" data-btn-type="edit">编辑</button><button type="button" class="btn btn-default" data-btn-type="delete" id="deleteBtn">删除</button></div>&nbsp'
			            $("#mytool").append(searchBox);
			            $("#mytool").append(tool);
			            $('#userList tbody').on('click', 'tr', function () {
			                if ($(this).hasClass('selected')) {
			                    $(this).removeClass('selected');
			                } else {
			                    table.$('tr.selected').removeClass('selected');
			                    $(this).addClass('selected');
			                }
			            });
			            $('#deleteBtn').click(function () {
			                if ($(this).hasClass('selected')) {
			                    table.row('.selected').remove().draw(false);
			                    alert("删除成功");
			                } else {
			                    alert("请选择数据行");
			                }

			            });

			        }
			    });
			    $('button').on('click',function(){
			        var action = $(this).attr('data-btn-type');
			        switch (action){
			            case "add-user":
			                $('#nav-tab-edit').click();
			                break;
			        }
			    }); */
		});
	</script>
</body>

</html>
