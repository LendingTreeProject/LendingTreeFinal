<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Showing All Queries</title>
<style type="text/css">
table {
	table-layout: auto;
	width: 100%;
}

table td {
	word-wrap: break-word;
	overflow-wrap: break-word;
}
</style>
</head>
<body>
<c:choose>
		<c:when test="${aid==null}">
			<font color="red"> <c:out value="You are Logged out!!  Please login" />
			</font>
			<a href="AgentLogin">Login Here</a>
		</c:when>
		<c:otherwise>
<jsp:include page="LoanAgentHeader.jsp" />
	<table border=1>
		<thead>
			<tr>
				<th>Request Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Dob</th>
				<th>Gender</th>
				<th>Contact No</th>
				<th>Email id</th>
				<th>User id</th>
				<th>Loan Type</th>
				<th>Loan Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="loan">
				<tr>
					<td>${loan.reqid    }</td>
					<td>${loan.fname    }</td>
					<td>${loan.lname    }</td>
					<td>${loan.dob      }</td>
					<td>${loan.gender   }</td>
					<td>${loan.contact  }</td>
					<td>${loan.email    }</td>
					<td>${loan.uid      }</td>
					<td>${loan.loantype }</td>
					<td>${loan.status   }</td>
					<c:set scope="session" var="reqid" value="${loan.reqid}"></c:set>
					<td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="agentLoginSuccess">Go to Profile</a>
	</p>
		</c:otherwise>
	</c:choose>
</body>
</html>