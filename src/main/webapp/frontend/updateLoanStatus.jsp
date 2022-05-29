<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Status Updated Successfully</h3>
	<h3>Loan request id  <c:out value="${reqid}"></c:out> is in <c:out value="${status}"></c:out> Status</h3>
<br>
<br>
<!--<font color="yellow" size="8"> <a href='AgentProfile'>Go to
			your Profile</a>
	</font>-->
</body>
</html>