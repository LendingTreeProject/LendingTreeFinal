<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.in_greetings {
	color: #000000;
	font-weight: 500;
	font-size: 30px;
	vertical-align: middle;
}

.profile_trigger {
	align-items: center;
}

.back_ground {
	background: linear-gradient(to bottom, #c79625, #eae6e2);
}

.footerlogo {
	margin-left: 650px;
}

.footerlogo {
	margin-left: 650px;
}

.social-links {
	display: flex;
	padding-left: 575px;
}

.social-links ul {
	display: flex
}

.social-items {
	list-style: none;
}

.social-items a {
	padding: 10px 20px;
	font-size: 30px;
}

.quick-links {
	display: flex;
	padding-left: 450px;
}

.quick-links ul {
	display: flex;
}

.quick-items {
	list-style: none;
	color: black
}

.quick-items a {
	text-decoration: none;
	padding: 0px 15px;
	font-size: 18px;
}
</style>

<title>Login Success</title>
</head>
<div class="back_ground" _>
	<body>

		<div class="in_greetings">
			<%
			String uname = session.getAttribute("uname").toString();
			%>

			<a>Welcome <%
			out.println(uname);
			%> ! You are logged in Successfully.
			</a>
		</div>
		<br>
		<div class="profile_trigger">
			<form action="profile" method="post">
				<%-- <input type="hidden" name="uname" value="${session.getAttribute("uname")}"> --%>
				<c:set scope="session" var="uname" value="${uname}" />
				<h3>Click below to enjoy your privileges</h3>
				<input
					style="background-color: #800000; border: 2px; padding: 10px; font-size: 20pt; color: #FFD700; vertical-align: middle;"
					type="submit" name="submit" value="Your Profile" />
			</form>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div>
			<div class="footer-content">
				<img class="footerlogo"
					src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/LTLogo.png"
					height="200" width="200">
			</div>
			<div class="social-links">
				<ul>
					<li class="social-items"><a href="#"><img
							src="https://static.vecteezy.com/system/resources/previews/002/445/918/original/social-media-facebook-logo-icon-free-vector.jpg"
							height="40" width="40"></a></li>
					<li class="social-items"><a href="#"><img
							src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/instagram-square-brands.svg"
							height="30" width="30"></a></li>
					<li class="social-items"><a href="#"><img
							src="https://cdn-icons-png.flaticon.com/512/60/60580.png"
							height="27" width="27"></a></li>
					<li class="social-items"><a href="#"><img
							src="https://cdn-icons-png.flaticon.com/512/61/61109.png"
							height="27" width="27"></a></li>
				</ul>
			</div>

			<div class="quick-links">
				<ul>
					<li class="quick-items"><a href="#">Personal loan</a></li>
					<li class="quick-items"><a href="#">Home loan</a></li>
					<li class="quick-items"><a href="#">Mortage loan</a></li>
					<li class="quick-items"><a href="#"> Educational loan</a></li>
				</ul>
			</div>
		</div>
	</body>
	<br> <br> <br> <br> <br> <br> <br> <br>
	<br> <br>
</div>
</html>