<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> Your Feedback added successfully</h1>
	<h4>Please note your Feedback id for future reference</h4>
	 <% String feedback_id =  request.getAttribute("feedback_id").toString(); %>  

<font color="Green">
            <c:out value= "${feedback_id}" />
            </font>
</body>
</html>