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

#membersti .row {
	margin-bottom: 15px;
}

#membersti .row.submit {
	margin-left: 1px;
}

#membersto .row {
	margin-bottom: 15px;
}

#membersto .row.submit {
	margin-left: 1px;
}

#memberp .row {
	margin-bottom: 15px;
}

#memberp .row.submit {
	margin-left: 1px;
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
						<li class="active"><a href="memberfind.action">Member
								Info</a></li>
						<li><a href="Commditys.jsp">Commdity</a></li>
						<li><a href="OrderCreate.jsp">Order Create</a></li>
					</ul>
					<div id="bs-example-navbar-collapse-17"
						class="collapse navbar-collapse">
						<p class="navbar-text navbar-right">
							Signed in as <a class="navbar-link">${sessionScope.user.username}</a>
							<a href="Login.jsp">Logout</a>
						</p>
					</div>
				</div>
				<!--/.nav --> </nav>
			</div>
		</div>


		<div class="accordion" id="accordion-711325">
			<div class="panel panel-default accordion-group">
				<div class="panel-heading accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion-711325" href="#accordion-element-77422">Your
						Information</a>
				</div>
				<div id="accordion-element-77422" class="accordion-body collapse in">
					<div class="accordion-inner">
						<img alt="140x140" src="img/white2.png" />
						<div class="row demo-row">
							<form class="form-horizontal" role="form">
								<div class="row">
									<div class="form-group">
										<label for="input" class="col-md-offset-1 control-label"><strong>
												ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
											${requestScope.member.memberid}</label> <label for="input"
											class="col-md-offset-1 control-label"><strong>
												age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
											${requestScope.member.age}</label><label for="input"
											class="col-md-offset-1 control-label"><strong>
												address:</strong> ${requestScope.member.location}</label><label for="input"
											class="col-md-offset-1 control-label"><strong>
												status:</strong>${requestScope.member.status}</label><br> <label
											for="input" class="col-md-offset-1 control-label"><strong>
												level:</strong>${requestScope.member.level}</label><label for="input"
											class="col-md-offset-1 control-label"><strong>
												bin:</strong> ${requestScope.member.bin}</label> <label for="input"
											class="col-md-offset-1 control-label"><strong>
												point:</strong>${requestScope.member.point}</label> <label for="input"
											class="col-md-offset-1 control-label"><strong>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;balance:</strong>${requestScope.member.money}</label>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
			<div class="panel panel-default accordion-group">
				<div class="panel-heading accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion-711326" href="#accordion-element-552212">Deposit
						more</a>
				</div>
				<div id="accordion-element-552212"
					class="accordion-body collapse in">
					<div class="accordion-inner">
						<img alt="140x140" src="img/white2.png" />
						<div class="row demo-row">
							<s:form action="membersti">
								<div class="row">
									<div class="form-group">
										<label for="input" class="col-md-2 control-label">deposit
										</label>
										<div class="col-md-2">
											<input type="text" name="member.money" class="form-control"
												id="input" style="width: 280px" />
										</div>
									</div>
								</div>
								<div class="row submit">
									<button type="submit"
										class="col-md-2 col-md-offset-2 btn btn-primary btn-sm"
										style="width: 280px">deposit</button>
								</div>
							</s:form>

						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default accordion-group">
				<div class="panel-heading accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion-711326" href="#accordion-element-552213">Stop</a>
				</div>
				<div id="accordion-element-552213"
					class="accordion-body collapse in">
					<div class="accordion-inner">
						<img alt="140x140" src="img/white2.png" />
						<div class="row demo-row">
							<s:form action="membersto">
								<div class="row">
									<label for="input" class=" col-md-offset-2 control-label"
										style="line-height: 0.5;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;input&nbsp;
											stop &nbsp;to&nbsp; delete&nbsp; your&nbsp; account</strong></label>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-2  col-md-offset-2">
											<input type="text" name="member.location"
												class="form-control" id="input" placeholder="stop"
												value="stop" style="width: 280px" />
										</div>
									</div>
								</div>
								<div class="row submit">
									<button type="submit"
										class="col-md-2 col-md-offset-2  btn btn-sm btn-primary"
										style="width: 280px">I don't use the account any
										more.</button>
								</div>

							</s:form>

						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default accordion-group">
				<div class="panel-heading accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion-711326" href="#accordion-element-552214">Exchange</a>
				</div>
				<div id="accordion-element-552214"
					class="accordion-body collapse in">
					<div class="accordion-inner">
						<img alt="140x140" src="img/white2.png" />
						<div class="row demo-row">

							<s:form action="memberp">
								<div class="row">
									<div class="form-group">
										<label for="input" class="col-md-2 control-label">exchange</label>
										<div class="col-md-2">
											<input type="text" name="member.location"
												class="form-control" id="input" style="width: 280px" />
										</div>
									</div>
								</div>
								<div class="row submit">
									<button type="submit"
										class="col-md-2 col-md-offset-2 btn btn-primary btn-sm"
										style="width: 280px">exchange</button>
								</div>
							</s:form>

						</div>
					</div>
				</div>
			</div>
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