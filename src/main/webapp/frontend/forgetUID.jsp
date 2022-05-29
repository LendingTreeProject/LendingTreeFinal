<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forget UID</title>
<style>
th, td {
	padding: 7px;
	background-color: none;
}

input {
	border: 1px solid blue;
}
</style>
</head>
<body>
	<form action="resetUID" method="get">
		<table style="width: 50%;">
			<thead>
				<tr>
					<th colspan="2">Forget UID</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><h3>Please answer below questions and enter contact
							number</h3></td>
				</tr>
				<tr>
					<td>Your favorite color</td>
					<td><input type="text" name="scrtQue1" value="" required /></td>
				</tr>
				<tr>
					<td>Your favorite game</td>
					<td><input type="text" name="scrtQue2" value="" required /></td>
				</tr>
				<tr>
					<td>Your favorite actor</td>
					<td><input type="text" name="scrtQue3" value="" required /></td>
				</tr>
				<tr>
					<td>Contact Number</td>
					<td><input type="text" name="contact" value="" required /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /> <input
						type="reset" value="Reset" /></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>