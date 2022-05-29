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
<% String aid = session.getAttribute("aid").toString(); %>
  <a>Welcome <% out.println(aid); %> !!!! You have logged in Successfully.</a> 
  <br>
  <br>
  <form action="PickupAgentProfile" method="post">
	<%-- <input type="hidden" name="uname" value="${session.getAttribute("uname")}"> --%> 
	<c:set scope="session" var="aid" value="${aid}"/> 
	<h3>Click below to enjoy your privileges</h3>
    <input  style="background-color: green; border: 2px; padding: 10px; font-size: 20pt; color: aqua;"  
               type="submit" name="submit" value="Your Profile" />
  </form>
   
</body>
</html>