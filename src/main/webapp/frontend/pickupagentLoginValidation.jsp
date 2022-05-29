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
    <c:if test="${ empty param.aid or empty param.pass}">
      <c:redirect url="pickupAgentLogin" >
              <c:param name="errMsg" value="Please Enter AgentId and Password" />
      </c:redirect>
    </c:if>
    <c:if test="${not empty param.aid and not empty param.pass}">
      <s:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/banking"
                       user="student" password="qwerty"/>
      <s:query dataSource="${ds}" var="selectQ">
        select count(*) as kount from agent
        where aid='${param.aid}'
        and password='${param.pass}'
      </s:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="aid"
                   value="${param.aid}"/>
            <c:redirect url="pickupagentLoginSuccess"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="pickupAgentLogin" >
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
      </c:forEach>
    </c:if>
  </body>
</html>