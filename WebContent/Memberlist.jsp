<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Welcome to Dessert House</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Loading Bootstrap -->
<link href="dist/css/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--<link href="dist/css/vendor/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet">-->
<!--<link href="dist/css/vendor/bootstrap/css/style.css" rel="stylesheet">-->

<!-- Loading Flat UI -->
<link href="dist/css/flat-ui.min.css" rel="stylesheet">
<link href="docs/assets/css/docs.css" rel="stylesheet">

<link rel="shortcut icon" href="img/favicon.ico">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="../dist/js/vendor/html5shiv.js"></script>
      <script src="../dist/js/vendor/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<style>
body {
	padding-bottom: 20px;
	padding-top: 20px;
}

.navbar {
	margin-bottom: 20px;
}
</style>
	<div class="container">
		<h4>Welcome to Dessert House</h4>
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse-01">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>


				<div class="collapse navbar-collapse navbar-collapse-01">
					<ul class="nav navbar-nav navbar-left">

						<li><a href="allcpaction.action">CommodityPlansShow</a></li>
						<li class="active"><a href="allmemberaction.action">MemberList</a></li>
						<li><a href="allbuyaction.action">BuyList</a></li>

					</ul>
					<div id="bs-example-navbar-collapse-17"
						class="collapse navbar-collapse">
						<p class="navbar-text navbar-right">
							Signed in as <a class="navbar-link" href="#">${sessionScope.user.username}</a>
							<a href="Login.jsp">Logout</a>
						</p>
					</div>
				</div>
				<!--/.nav --> </nav>
			</div>
		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">Member List</div>

			<!-- Table -->
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Age</th>
						<th>Sex</th>
						<th>Location</th>
						<th>Status</th>
						<th>Level</th>
						<th>Bin</th>
						<th>Money</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#request.mlist" id="us">
						<tr>
							<td><s:property value="#us.memberid" /></td>

							<td><s:property value="#us.age" /></td>

							<td><s:property value="#us.sex" /></td>
							<td><s:property value="#us.location" /></td>
							<td><s:property value="#us.status" /></td>
							<td><s:property value="#us.level" /></td>
							<td><s:property value="#us.bin" /></td>
							<td><s:property value="#us.money" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
		<!-- stastics -->
		<div class="panel panel-default">
			<div class="panel-heading">Stastic</div>


			<div>
				<div class="content" id="pie">
					<table class="table">

						<thead>
							<tr>
								<th>Male</th>
								<th>Femal</th>
								<th>Other</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td><s:property value="#request.male" /></td>
								<td><s:property value="#request.female" /></td>
								<td><s:property value="#request.other" /></td>
							</tr>

						</tbody>

					</table>
				</div>
			</div>
		</div>


	</div>

	<script src="js/Chart.js"></script>
	<script src="dist/js/vendor/jquery.min.js"></script>
	<script src="dist/js/vendor/bootstrap.min.js"></script>
	<script src="dist/js/vendor/scripts.js"></script>

	<script src="dist/js/flat-ui.min.js"></script>

	<script src="docs/assets/js/prettify.js"></script>
	<script src="docs/assets/js/application.js"></script>
</body>
</html>