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
#comreg .row{
	margin-bottom: 15px;
}
#comreg .row.submit input{
	margin-left: 10%;
}

#comreg .select2-container{
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

						<li class="active"><a href="CPCreate.jsp">CommdityPlanCreate</a></li>
						<li><a href="record.action">Recordlist</a></li>
						<li><a href="allorderaction.action">Orderlist</a></li>

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
			<div class="panel-heading">New Plan Creating</div>
			<img alt="140x140" src="img/white2.png" />
			<div class="row demo-row">
				<s:form action="comreg">

					<div class="input row">
						<div class="form-group">
							<label for="input" class="col-md-1 control-label">status</label>
							<div class="col-md-2">
								<input disabled type="text" name="com.status"
									class="form-control" id="input" value=0 placeholder="0"
									style="width: 280px" />
							</div>
						</div>
					</div>

					<div class="input row">
						<div class="form-group">
							<label for="input" class="col-md-1 control-label">number</label>
							<div class="col-md-1 ">
								<input type="text" name="com.number" class="form-control"
									id="input" style="width: 280px" />
							</div>

						</div>
					</div>

					<div class="input row">
						<select name="com.storeid" id="select" onchange="changeAction();"
							data-toggle="select"
							class="col-md-2 col-md-offset-1 form-control select select-primary mrs mbm select-sm"
							style="width: 280px">
							<option value="0"></option>
							<option value="1">商店1</option>
							<option value="2">商店2</option>
							<option value="3">商店3</option>
						</select>
					</div>
					<script type="text/javascript">
						function changeAction() {
							var selectValue = document.getElementById('select').value;
							document.forms[2] = parseInt(selectValue);
						}
					</script>
					<div class="input row">
						<select name="com.commdityid" id="select2"
							onchange="changeAction2();" data-toggle="select"
							class="col-md-2 col-md-offset-1 form-control select select-primary mrs mbm select-sm"
							style="width: 280px">
							<option value="0"></option>
							<option value="1">纯白芝士蛋糕</option>
							<option value="2">巧克力星星蛋糕</option>
							<option value="3">纯白奶油蛋糕</option>
							<option value="4">甜甜圈</option>
							<option value="5">马卡龙</option>
							<option value="6">泡芙</option>
							<option value="7">意式三明治</option>
							<option value="8">草莓蛋糕</option>
							<option value="9">提拉米苏</option>
							<option value="10">华夫饼</option>
						</select>
					</div>

					<script type="text/javascript">
						function changeAction2() {
							var selectValue = document
									.getElementById('select2').value;
							document.forms[3] = parseInt(selectValue);
						}
					</script>
					<div class="submit row">
						<input type="submit"
							class="col-md-2 col-md-offset-1 btn btn-primary btn-sm"
							value="Create Commdity Plan" style="width: 280px" />
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