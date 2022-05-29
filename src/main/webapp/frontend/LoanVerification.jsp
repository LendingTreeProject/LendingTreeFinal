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
	<jsp:include page="agentHeader.jsp" />
	<c:choose>
		<c:when test="${list==null}">
			<font color="red"> <c:out value="Data Deleted Successfully" />
			</font>
		</c:when>
		<c:otherwise>
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
						<th>Loan status</th>
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
							
							<c:set scope="session"  var="reqid" value="${loan.reqid}"></c:set>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
	<br>
	<h2>Choose your action</h2>

	<form action="updateLoanStatus" method="post">
		<table style="width: 50%;">
			<thead>
				<tr>
					<th colspan="2">Please Choose your action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Status</td>
					<td><input type="radio" name="action" value="approve" />Approve<br>
						<input type="radio" name="action" value="reject" />Reject<br>
						<input type="radio" name="action" value="pending" />Keep it
						pending<br>
						<input type="radio" name="action" value="pick_up" />Pick-up<br>
                        <input type="radio" name="action" value="verification_dept" />Verification<br>
                        <input type="radio" name="action" value="legal_dept" />Legal<br>
                    </td>
            
				</tr>
				<tr>
					<td><input type="hidden" name="reqid" value="${loan.reqid}" /></td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /> <input
						type="reset" value="Reset" /></td>
				</tr>
				</tbody>
		</table>
	</form>

	<!-- <br>
	<font color="yellow" size="12"> <a href='AgentProfile'>Go to
			your Profile</a>
	</font> -->
</body>
</html>