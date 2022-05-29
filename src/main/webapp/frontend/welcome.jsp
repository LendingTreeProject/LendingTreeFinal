<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>
	<h1>Hi!!! Welcome to Lending Tree App</h1>
	New User Created Successfully!!  Your details are as follows: 

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
				<th>Password</th>
				<th>Category</th>
				<th>Secrete Question 1</th>
				<th>Secrete Question 2</th>
				<th>Secrete Question 3</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${user.fname    }</td>
				<td>${user.lname    }</td>
				<td>${user.dob      }</td>
				<td>${user.gender   }</td>
				<td>${user.contact  }</td>
				<td>${user.email    }</td>
				<td>${user.uid      }</td>
				<td>${user.password }</td>
				<td>${user.category }</td>
				<td>${user.scrtQue1 }</td>
				<td>${user.scrtQue2 }</td>
				<td>${user.scrtQue3 }</td>
			</tr>
		</tbody>
	</table>

	Please Login Here
	<a href='login'>Go to Login</a>
</body>
</html>