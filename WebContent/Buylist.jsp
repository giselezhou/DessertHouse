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
<script src="js/Chart.js"></script>

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

canvas {
	
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
						<li><a href="allmemberaction.action">MemberList</a></li>
						<li class="active"><a href="allbuyaction.action">BuyList</a></li>

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
			<div class="panel-heading">Purchase Record List</div>

			<!-- Table -->
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Commdityid</th>
						<th>Number</th>
						<th>Storeid</th>
						<th>Memberid</th>
						<th>Clerkid</th>
						<th>Price</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#request.blist" id="us">
						<tr>
							<td><s:property value="#us.buyid" /></td>

							<td><s:property value="#us.commodityid" /></td>

							<td><s:property value="#us.number" /></td>
							<td><s:property value="#us.storeid" /></td>
							<td><s:property value="#us.memberid" /></td>
							<td><s:property value="#us.clerkid" /></td>
							<td><s:property value="#us.price" /></td>
							<td><s:property value="#us.date" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
		<!-- stastics -->
		<div class="panel panel-default">
			<div class="panel-heading">Stastic</div>
			<p hidden>
				<s:set id="sn1" var="sn1" value="0"></s:set>
				<s:iterator value="#request.l1" id="l1">
					<s:set var="sn1" value="#sn1+#l1.number"></s:set>
				</s:iterator>

				<s:set id="sn2" var="sn2" value="0"></s:set>
				<s:iterator value="#request.l2" id="l2">
					<s:set var="sn2" value="#sn2+#l2.number"></s:set>
				</s:iterator>


				<s:set id="sn3" var="sn3" value="0"></s:set>
				<s:iterator value="#request.l3" id="l3">

					<s:set var="sn3" value="#sn3+#l3.number"></s:set>
				</s:iterator>

				<s:set id="sn4" var="sn4" value="0"></s:set>
				<s:iterator value="#request.l4" id="l4">
					<s:set var="sn4" value="#sn4+#l4.number"></s:set>
				</s:iterator>

				<s:set id="sn5" var="sn5" value="0"></s:set>
				<s:iterator value="#request.l5" id="l5">
					<s:set var="sn5" value="#sn5+#l5.number"></s:set>
				</s:iterator>

				<s:set id="sn6" var="sn6" value="0"></s:set>
				<s:iterator value="#request.l6" id="l6">
					<s:set var="sn6" value="#sn6+#l6.number"></s:set>
				</s:iterator>

				<s:set id="sn7" var="sn7" value="0"></s:set>
				<s:iterator value="#request.l7" id="l7">
					<s:set var="sn7" value="#sn7+#l7.number"></s:set>
				</s:iterator>

				<s:set id="sn8" var="sn8" value="0"></s:set>
				<s:iterator value="#request.l8" id="l8">
					<s:set var="sn8" value="#sn8+#l8.number"></s:set>
				</s:iterator>

				<s:set id="sn9" var="sn9" value="0"></s:set>
				<s:iterator value="#request.l9" id="l9">
					<s:set var="sn9" value="#sn9+#l9.number"></s:set>
				</s:iterator>

				<s:set id="sn10" var="sn10" value="0"></s:set>
				<s:iterator value="#request.l10" id="l10">
					<s:set var="sn10" value="#sn10+#l10.number"></s:set>
				</s:iterator>
				<s:set id="sn" var="sn"
					value="#sn1+#sn2+#sn3+#sn4+#sn5+#sn6+#sn7+#sn8+#sn9+#sn10"></s:set>
			</p>
			<table class="table">

				<thead>
					<tr>
						<th>type</th>
						<th>number</th>
						<th>ratio</th>
					</tr>
				</thead>


				<tbody>
					<tr>

						<th scope="row">纯白芝士蛋糕</th>
						<td><s:property value="#sn1" /></td>
						<td><s:property value="#sn1*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">巧克力星星蛋糕</th>
						<td><s:property value="#sn2" /></td>
						<td><s:property value="#sn2*100/#sn" />%</td>
					<tr>
						<th scope="row">纯白奶油蛋糕</th>
						<td><s:property value="#sn3" /></td>
						<td><s:property value="#sn3*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">甜甜圈</th>
						<td><s:property value="#sn4" /></td>
						<td><s:property value="#sn4*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">马卡龙</th>
						<td><s:property value="#sn5" /></td>
						<td><s:property value="#sn5*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">泡芙</th>
						<td><s:property value="#sn6" /></td>
						<td><s:property value="#sn6*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">意式三明治</th>
						<td><s:property value="#sn7" /></td>
						<td><s:property value="#sn7*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">草莓蛋糕</th>
						<td><s:property value="#sn8" /></td>
						<td><s:property value="#sn8*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">提拉米苏</th>
						<td><s:property value="#sn9" /></td>
						<td><s:property value="#sn9*100/#sn" />%</td>
					</tr>
					<tr>
						<th scope="row">华夫饼</th>
						<td><s:property value="#sn10" /></td>
						<td><s:property value="#sn10*100/#sn" />%</td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>

	<script src="dist/js/vendor/jquery.min.js"></script>
	<script src="dist/js/vendor/bootstrap.min.js"></script>
	<script src="dist/js/vendor/scripts.js"></script>

	<script src="dist/js/flat-ui.min.js"></script>

	<script src="docs/assets/js/prettify.js"></script>
	<script src="docs/assets/js/application.js"></script>
</body>
</html>