<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Your Admin Panel</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<!-- jQuery AND jQueryUI -->
<script type="text/javascript" src="js/libs/jquery/1.6/jquery.min.js"></script>
<script type="text/javascript"
	src="js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>

<!-- Compressed Version
        <link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
        <script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
        -->
<link rel="stylesheet" href="css/min.css" />
<script type="text/javascript" src="js/min.js"></script>

</head>
<body>

	<script type="text/javascript"
		src="content/settings/main.js"></script>
	<link rel="stylesheet" href="content/settings/style.css" />


	<div class="settings" id="settings">
		<div class="wrapper">
			<div class="grid3">
				<div class="titre">Backgrounds</div>
				<a href="url(css/img/bg.html"
					class="backgroundChanger active" title="White"></a> <a
					href="url(css/img/dark-bg.html"
					class="backgroundChanger dark" title="Dark"></a> <a
					href="url(css/img/wood.html"
					class="backgroundChanger dark" title="Wood"></a> <a
					href="url(css/img/altbg/smoothwall.html"
					class="backgroundChanger" title="Smoothwall"></a> <a
					href="url(css/img/altbg/black_denim.html"
					class="backgroundChanger dark" title="black_denim"></a> <a
					href="url(css/img/altbg/carbon.html"
					class="backgroundChanger dark" title="Carbon"></a> <a
					href="url(css/img/altbg/double_lined.html"
					class="backgroundChanger" title="Double lined"></a>
				<div class="clear"></div>
			</div>
			<div class="grid3">
				<div class="titre">Bloc style</div>
				<a href="black.html" class="blocChanger" title="Black"
					style="background: url(css/img/bloctitle.png);"></a> <a
					href="white.html" class="blocChanger active" title="White"
					style="background: url(css/img/white-title.png);"></a>
				<a href="wood.html" class="blocChanger" title="Wood"
					style="background: url(css/img/wood-title.jpg);"></a>
				<div class="clear"></div>
			</div>
			<div class="grid3">
				<div class="titre">Sidebar style</div>
				<a href="grey.html" class="sidebarChanger active" title="Grey"
					style="background: #494949"></a> <a href="black.html"
					class="sidebarChanger" title="Black" style="background: #262626"></a>
				<a href="white.html" class="sidebarChanger" title="White"
					style="background: #EEEEEE"></a>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<a class="settingbutton" href="#"> </a>
	</div>
	<!--              
                HEAD
                        -->
	<div id="head">
		<div class="left">
			<a href="#" class="button profile"><img
				src="img/icons/top/huser.png" alt="" /></a> Hi, <a href="#">${sessionScope.user.username}</a>
			<a href="#">Logout</a>
		</div>
		<div class="right">
			<form action="#" id="search" class="search placeholder">
				<label>Looking for something ?</label> <input type="text" value=""
					name="q" class="text" /> <input type="submit" value="rechercher"
					class="submit" />
			</form>
		</div>
	</div>


	<!--            
                SIDEBAR
                         -->
	<div id="sidebar">
		<ul>
			<li><a href="Index.jsp"> <img
					src="img/icons/menu/inbox.png" alt="" /> Dashboard
			</a></li>
			<li class="current"><a href="#"><img
					src="img/icons/menu/layout.png" alt="" />Waitress</a>
				<ul>
					<li><a href="Commditys.jsp">Commdity</a></li>
					<li><a href="CPCreate.jsp">CommdityPlanCreate</a></li>
					<li><a href="record.action">Recordlist</a></li>
					<li><a href="allorderaction.action">Orderlist</a></li>
				</ul></li>
			<li><a href="#"><img
					src="img/icons/menu/brush.png" alt="" /> Member</a>
				<ul>
					<li><a href="Member.jsp">RegisterMember</a></li>
					<li><a href="MemberUpd.jsp">MemberInformationUpdate</a></li>
					<li><a href="memberfind.action">MemberInformation</a></li>
					<li><a href="OrderCreate.jsp">OrderCreate</a></li>
				</ul></li>
			<li><a href="#"><img
					src="img/icons/menu/brush.png" alt="" /> Manager</a>
				<ul>
					<li><a href="allcpaction.action">CommodityPlansShow</a></li>
					<li><a href="allmemberaction.action">MemberList</a></li>
					<li><a href="allbuyaction.action">BuyList</a></li>
				</ul></li>
			<li><a href="#"><img
					src="img/icons/menu/brush.png" alt="" />System Manager</a>
				<ul>
					<li><a href="allstoreaction.action">StoreList</a></li>
					<li><a href="StoreCreate.jsp">CreateStore</a></li>
					<li><a href="allclerkaction.action">ClerkList</a></li>
					<li><a href="ClerkCreate.jsp">CreateClerk</a></li>
				</ul></li>
		</ul>


	</div>




	<!--            
              CONTENT 
                        -->
	<div id="content" class="white">
		<h1>
			<img src="img/icons/dashboard.png" alt="" /> Dashboard
		</h1>

		<div class="bloc left">
			<div class="title">Dashboard</div>
			<div class="content dashboard">
				<div class="center">
					<a href="MemberShow.jsp" class="shortcut"> <img
						src="img/page.png" alt="" width="48" height="48" />
						Member Info
					</a> <a href="Commditys.jsp" class="shortcut"> <img
						src="img/picture.png" alt="" width="48" height="48" />
						Buy Something
					</a> <a href="Cplist.jsp" class="shortcut"> <img
						src="img/event.png" alt="" width="48" height="48" />
						Commodity Plans
					</a> <a href="Storelist.jsp" class="shortcut last"> <img
						src="img/contact.png" alt="" width="48" height="48" />
						Stores
					</a>
					<div class="cb"></div>
				</div>
				<p>
					Icons by <a href="http://icondrawer.com/">icondrawer.com</a>
				</p>
			</div>
		</div>



		<div class="bloc right">
			<div class="title">Today</div>
			<div class="content">
				<div class="left">
					<table class="noalt">
						<thead>
							<tr>
								<th colspan="2"><em>Content</em></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><h4>460</h4></td>
								<td>Posts</td>
							</tr>
							<tr>
								<td><h4>12</h4></td>
								<td>Pages</td>
							</tr>
							<tr>
								<td><h4>5</h4></td>
								<td>Categories</td>
							</tr>
							<tr>
								<td><h4>20 000</h4></td>
								<td>Contacts</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="right">
					<table class="noalt">
						<thead>
							<tr>
								<th colspan="2"><em>Comments</em></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><h4>46 000</h4></td>
								<td class="good">Comments</td>
							</tr>
							<tr>
								<td><h4>5</h4></td>
								<td class="neutral">Waiting for validation</td>
							</tr>
							<tr>
								<td><h4>0</h4></td>
								<td class="bad">Spams</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="cb"></div>
			</div>
		</div>


		<div class="cb"></div>



	</div>


</body>
</html>