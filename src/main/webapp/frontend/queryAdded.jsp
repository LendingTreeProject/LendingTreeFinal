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
	<h1> Your Query added successfully</h1>
	<h4>Please note your Ticket id for future reference</h4>
	 <% String ticket_id =  request.getAttribute("ticket_id").toString(); %>  

<font color="Green">
            <c:out value= "${ticket_id}" />
            </font>
</body>
</html>