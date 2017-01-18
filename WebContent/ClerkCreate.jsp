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

#clerkcreateaction .row {
	margin-bottom: 15px;
}

#buyaction .select2-container {
	margin-left: 10%;
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

						<li><a href="allstoreaction.action">StoreList</a></li>
						<li><a href="StoreCreate.jsp">CreateStore</a></li>
						<li><a href="allclerkaction.action">ClerkList</a></li>
						<li class="active"><a href="ClerkCreate.jsp">CreateClerk</a></li>

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
			<div class="panel-heading">New Clerk Creating</div>
			<img alt="140x140" src="img/white2.png" />
			<div class="row demo-row">
				<s:form action="clerkcreateaction">

					<div class="row input">
						<label for="select" class="col-md-2 col-md-offset-1 ">Store
							ID</label> <select name="store.storeid" id="select"
							onchange="changeAction();" data-toggle="select"
							class="col-md-2 form-control select select-primary mrs mbm select-sm"
							style="width: 280px">
							<option value="0"></option>
							<option value="1">Store NO.1</option>
							<option value="2">Store NO.2</option>
							<option value="3">Store NO.3</option>
						</select>
					</div>
					<script type="text/javascript">
						function changeAction() {
							var selectValue = document.getElementById('select').value;
							document.forms[2] = parseInt(selectValue);
						}
						function alerts() {
							document.forms[0] = GetQueryString("id");
						}
					</script>
					<div class="input row">
						<label for="select2" class="col-md-2 col-md-offset-1 ">Is
							Branch?</label> <select name="store.isbranch" id="select2"
							onchange="changeAction2();" data-toggle="select"
							class="col-md-2  form-control select select-primary mrs mbm select-sm"
							style="width: 280px">
							<option value="0">No</option>
							<option value="1">Yes</option>
						</select>
					</div>
					<script type="text/javascript">
						function changeAction2() {
							var selectValue = document
									.getElementById('select2').value;
							document.forms[3] = parseInt(selectValue);
						}
					</script>

					<div class="row">
						<div class="form-group">
							<div class="col-md-2 col-md-offset-2">
								<button type="submit" class="btn btn-primary btn-block"
									style="width: 280px; margin-left: 64px;">Create Clerk</button>
							</div>
						</div>
					</div>
				</s:form>
			</div>
			<!-- /.col-md-12 -->
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

