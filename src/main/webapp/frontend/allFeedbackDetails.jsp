<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Showing All Queries</title>
<style type="text/css">
table {
	table-layout: fixed;
	 width: 100%; 
}

td.fitwidth {
    width: 1px;
   /*  white-space: nowrap;  */
     word-wrap: break-word;        
    overflow-wrap: break-word;  
}

</style>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>Feedback Id</th>
				<th>Feedback Questionarrie</th>
				<th>Posted Date</th>
				<th>Feedback</th>
				<th>Add/Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="query">
				<tr>
					<td><c:out value="${query.feedback_id}" /></td>
					<td class="fitwidth"><c:out
								value="${query.feedback_query}" /></td>
					<td class="fitwidth"><c:out value="${query.date_posted}" /></td>
					<td class="fitwidth"><c:out
								value="${query.feedback_data}" /></td>
					<td class="fitwidth"><a
						href="ManageFeedback?action=update&feedback_id=<c:out value="${query.feedback_id}"/>">Update</a></td>
					<td class="fitwidth"><a
						href="ManageFeedback?action=delete&feedback_id=<c:out value="${query.feedback_id}"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
	</p>
</body>
</html>