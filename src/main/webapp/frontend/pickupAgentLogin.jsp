<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User LogIN</title>
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
<font color="red"><c:if test="${not empty param.errMsg}">
			<c:out value="${param.errMsg}" />
		</c:if></font>
	<form action="pickupagentLoginValidation" method="post">
		<table style="width: 50%;">
			<thead>
				<tr>
					<th colspan="2">Login</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Agent Id</td>
					<td><input type="text" name="aid" value="" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" value="" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Login" /> <input type="reset"
						value="Reset" /></td>
				</tr>
				<tr>
				<td >New Agent?<br> <a href="AgentRegistration">Register Here</a></td>
					<td >Forget Password? <br> <a href="agentForgetPass">Click Here</a></td>
					<td >Forget Agent Id?  <br> <a href="agentForgetUID">Click Here</a></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>