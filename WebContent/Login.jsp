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
	<div class="container">


		<div class="login-screen">

			<div class="login-icon">
				<img src="img/login/icon.png" alt="Welcome to Dessert House" />
				<h4>
					Welcome to <small>Dessert House</small>
				</h4>
			</div>
			<s:form action="check">
				<div class="login-form">
					<div class="form-group">
						<input type="text" class="form-control login-field" value=""
							placeholder="Enter your name" name="user.username" id="login" />
						<label class="login-field-icon fui-user" for="login"></label>
					</div>

					<div class="form-group">
						<input type="password" class="form-control login-field" value=""
							placeholder="Password" name="user.password" id="password"
							value="qwert" /> <label class="login-field-icon fui-lock"
							for="password"></label>
					</div>
					<p class="login-submit">
						<button type="submit" class="btn btn-primary btn-lg btn-block">
							Log in</button>
					</p>

					<a href="Register.jsp"> <input class="btn btn-link"
						type="button"> <small>还没注册？点我注册</small>
					</a>
				</div>
			</s:form>
		</div>

		<div class="login-screen"></div>
	</div>


	<script src="dist/js/vendor/jquery.min.js"></script>
	<script src="dist/js/vendor/bootstrap.min.js"></script>
	<script src="dist/js/vendor/scripts.js"></script>

	<script src="dist/js/flat-ui.min.js"></script>

	<script src="docs/assets/js/prettify.js"></script>
	<script src="docs/assets/js/application.js"></script>
</body>

</html>