<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authentication page</title>
</head>
<body>
	<c:if test="${ empty param.pass1 or empty param.pass2}">
		<c:redirect url="resetPassword">
			<c:param name="errMsg"
				value="Please Enter both the fields for Password" />
		</c:redirect>
	</c:if>
	<c:if test="${not empty param.pass1 and not empty param.pass2}">
		<c:choose>
			<c:when test="${param.pass1==param.pass2}">
				<s:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/banking" user="student"
					password="qwerty" />
				<s:update dataSource="${ds}" var="count">
             update user set password='${param.pass1}' where uid='${param.uid}'
            </s:update>
				<%-- <c:forEach items="${updateQ.ROW_COUNT()}" var="r"> --%>
					<c:choose>
						<c:when test="${count gt 0}">
							<c:redirect url="login">
								<c:param name="errMsg" value="Password Reset Successfull!! Please Login" />
							</c:redirect>
						</c:when>
						<c:otherwise>
							<c:redirect url="resetPassword">
								<c:param name="errMsg" value="password does not match" />
							</c:redirect>
						</c:otherwise>
					</c:choose>
				<%-- </c:forEach> --%>
			</c:when>
		</c:choose>
	</c:if>
</body>
</html>