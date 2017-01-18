<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<body>
	<%
		cn.edu.nju.zj.beans.User user = (cn.edu.nju.zj.beans.User) session.getAttribute("user");

		if (user == null) {
	%>
	<jsp:forward page="Login.jsp" />
	<%
		}
		switch (user.getType()) {
		case ("M"):
			System.out.print("hello");
	%>
	<jsp:forward page="member.jsp" />
	<%
		break;
		case ("SM"):
	%>
	<jsp:forward page="systemm.jsp" />
	<%
		break;
		case ("C"):
	%>
	<jsp:forward page="clerk.jsp" />
	<%
		break;
		case ("Ma"):
	%>
	<jsp:forward page="manager.jsp" />
	<%
		break;
		default: {
	%>
	<jsp:forward page="Login.jsp" />
	<%
		}
		}
	%>
</body>
</html>



