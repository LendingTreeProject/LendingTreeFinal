<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pick up agents</title>
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
<jsp:include page="agentHeader.jsp" />
	<table border=1>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Dob</th>
				<th>Gender</th>
				<th>Contact No</th>
				<th>Email id</th>
				<th>Agent id</th>
				<th>Department</th>
				<th>Category</th>
				<th>Verify</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="agent">
				<tr>
					<td>${agent.fname    }</td>
					<td>${agent.lname    }</td>
					<td>${agent.dob      }</td>
					<td>${agent.gender   }</td>
					<td>${agent.contact  }</td>
					<td>${agent.email    }</td>
					<td>${agent.aid      }</td>
					<td>${agent.dept }</td>
					<td>${agent.category }</td>
					<td><a
						href="assigntoPickUpAgent?aid=<c:out value="${agent.aid}"/>&reqid=<c:out value="${reqid}"/>">Assign</a></td>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="AgentProfile">Go to Profile</a>
	</p>
		</c:otherwise>
	</c:choose>
</body>
</html>