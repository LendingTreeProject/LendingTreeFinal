<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Feedback</title>
</head>
<body>

	<c:choose>
		<c:when test="${feedback == false}">
			<font color="red"> <c:out value="feedback Details not deleted" />
			</font>
		</c:when>
		<c:when test="${feedback == true}">
			<font color="Green"> <c:out value="feedback Details deleted Succesfully" />
			</font>
		</c:when>
		<c:otherwise>

			<table border=1>
				<thead>
					<tr>
						<th>Feedback Id</th>
						<th>Solution</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><c:out value="${feedback_id}" /></td>

						<td><form action="feedsolution" method="post">
								<input type="hidden" name="feedback_id"
									value="<c:out value="${feedback_id}" />">
								<textarea name="data" rows="5" cols="50" maxlength="1000"
									placeholder="Max 1000 charecters">
                Enter Your Feedback Here:
                </textarea>
								<input type="submit" value="submit" name=""submit">
							</form></td>
					</tr>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
</body>
</html>