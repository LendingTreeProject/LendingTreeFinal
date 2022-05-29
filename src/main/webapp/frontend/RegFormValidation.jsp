<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
 
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication page</title>
  </head>
  <body>
  
    <c:if test="${ empty param.fname and empty param.lname and empty param.dob and empty param.gender and empty param.email and empty param.uid and empty param.pass }">
      <c:redirect url="register" >
              <c:param name="errMsg" value="Please Enter All the fields" />
      </c:redirect>
     </c:if>
           <%--  <c:redirect url="userCreated" >
              <c:param name="errMsg" value="New User Created Successfully" />
            </c:redirect> --%>
     
         <c:choose>
           <c:when test="${param.contact>999999999 or param.contact < 1111111111}">
            <c:param name="errMsg" value="Please Enter valid contact number" />
           </c:when> --%>
           <c:when test="${empty param.fname}">
                <c:param name="errMsg" value="Please Enter First name" />
           </c:when>
           <c:when test="${empty param.lname}">
                <c:param name="errMsg" value="Please Enter Last Name" />
           </c:when>
           <c:when test="${empty param.dob}">
                <c:param name="errMsg" value="Please Enter Date of birth" />
           </c:when>
           <c:when test="${empty param.gender}">
                <c:param name="errMsg" value="Please Enter gender" />
           </c:when>
           <c:when test="${empty param.email}">
                <c:param name="errMsg" value="Please Enter valid email id" />
           </c:when>
            <c:when test="${empty param.uid}">
                <c:param name="errMsg" value="Please Enter user id" />
           </c:when>
           <c:when test="${empty param.pass}">
                <c:param name="errMsg" value="Please Enter Password" />
           </c:when>
           <c:when test="${empty param.category}">
                <c:param name="errMsg" value="Please Enter category" />
           </c:when>
          <c:otherwise>
            <c:redirect url="userCreated" >
              <c:param name="errMsg" value="New User Created Successfully" />
            </c:redirect>
          </c:otherwise>
        </c:choose> 
  </body>
</html>