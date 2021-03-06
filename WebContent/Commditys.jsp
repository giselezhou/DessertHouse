<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<li><a href="memberreg.jsp">Register Member</a></li>
						<li><a href="MemberUpd.jsp">Member Info Update</a></li>
						<li><a href="memberfind.action">Member Info</a></li>
						<li class="active"><a href="Commditys.jsp">Commdity</a></li>
						<li><a href="OrderCreate.jsp">Order Create</a></li>

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

		<!-- Default panel contents -->


		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=1"><img
				class="img-rounded img-responsive" src="img/dessert/1.png" alt="" /></a>
			<p class="img-comment">
				<strong>纯白芝士蛋糕</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=2"><img
				class="img-rounded img-responsive" src="img/dessert/2.png" alt="" /></a>
			<p class="img-comment">
				<strong>巧克力星星蛋糕</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=3"><img
				class="img-rounded img-responsive" src="img/dessert/3.png" alt="" /></a>
			<p class="img-comment">
				<strong>纯白奶油蛋糕</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=4"><img
				class="img-rounded img-responsive" src="img/dessert/4.png" alt="" /></a>
			<p class="img-comment">
				<strong>甜甜圈</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=5"><img
				class="img-rounded img-responsive" src="img/dessert/5.png" alt="" /></a>
			<p class="img-comment">
				<strong>马卡龙</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=6"><img
				class="img-rounded img-responsive" src="img/dessert/6.png" alt="" /></a>
			<p class="img-comment">
				<strong>泡芙</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=7"><img
				class="img-rounded img-responsive" src="img/dessert/7.png" alt="" /></a>
			<p class="img-comment">
				<strong>意式三明治</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=8"><img
				class="img-rounded img-responsive" src="img/dessert/8.png" alt="" /></a>
			<p class="img-comment">
				<strong>草莓蛋糕</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=9"><img
				class="img-rounded img-responsive" src="img/dessert/9.png" alt="" /></a>
			<p class="img-comment">
				<strong>提拉米苏</strong>
			</p>
		</div>
		<div class="col-md-3">
			<a class="thumbnail" href="Buy.jsp?id=10"><img
				class="img-rounded img-responsive" src="img/dessert/10.png" alt="" /></a>
			<p class="img-comment">
				<strong>华夫饼</strong>
			</p>
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