<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.footer {
	background-color: rgb(240, 238, 231);
}

.footerlogo {
	margin-left: 650px;
}

.inner-footer {
	margin: 0;
	padding: 0;
	background-color: #272727;
}

.outer-footer {
	padding: 10px;
	text-align: center;
	font-size: 18px;
	background-color: #3f3f3f;
}

#top-section-content h1 {
	font-size: 4em;
	font-weight: 300;
	color: black;
	text-align: center;
	margin-top: 0;
	padding-top: 10px;
	margin-bottom: 0px;
}
</style>
</head>
<body>
	<jsp:include page="adminheader.jsp" />
	<br>
	<br>
	<div id="top-section-content">
		<h1>ADMIN PROFILE</h1>
	</div>
	<br>
	<br>
	<div class="form_bg">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-8 col-md-8 col-sm-offset-8 col-sm-6">
					<form action="adminReports" method="post" class="form_horizontal">
						<h3 class="title">Report Generation</h3>

						<div class="form-group">
							From Date: <input type="date" name="fromdate" min="1950-01-01"
								max="2003-01-01" required>
						</div>


						<div class="form-group">
							To Date: <input type="date" name="todate" min="1950-01-01"
								max="2003-01-01" required>
						</div>


						Status:
						<td><input type="radio" name="status" value="approve" />Approve<br>
						<input type="radio" name="status" value="reject" />Reject<br>
						<input type="radio" name="status" value="pending" />Keep it
						pending<br>
					</td>
				</div>
				

				<button class="btn signin">SEARCH</button>


				</form>
			</div>
		</div>
	</div>
	</div>

	<a href="/adminReports"> Click here to get loan applications </a>
	<br>
	<br>
	<div class="footer">
		<div class="footer-content">
			<img class="footerlogo"
				src="https://mywebappbucket072.s3.ap-south-1.amazonaws.com/LTLogo.png"
				height="200" width="200">
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>