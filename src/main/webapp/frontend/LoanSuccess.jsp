<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>
	<h1>Congrats!!! Your application submitted successfully</h1>
	<br>
	<h2>Please note Request id:</h2>

	<font color="green" size="20"><c:out value="${loan.reqid}"></c:out>
	</font>
	<br>
	<table border=1>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Dob</th>
				<th>Gender</th>
				<th>Contact No</th>
				<th>Email id</th>
				<th>User id</th>
				<th>Loan Type</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${loan.fname    }</td>
				<td>${loan.lname    }</td>
				<td>${loan.dob      }</td>
				<td>${loan.gender   }</td>
				<td>${loan.contact  }</td>
				<td>${loan.email    }</td>
				<td>${loan.uid      }</td>
				<td>${loan.loantype }</td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
	<font color="yellow" size="12"> <a href='UserProfile'>Go to your Profile</a>
	</font>
	 
</body>
</html>