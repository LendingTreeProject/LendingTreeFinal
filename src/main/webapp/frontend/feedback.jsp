<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User LogIN</title>
        <style>
th, td {
	padding: 7px;
	background-color: none;
}
input {
	border: 1px solid blue;
}
</style>
    </head>
    <body>
       <form action="feedbackData" method="post">
			<table style="width:50%;">
                <thead>
                    <tr>
                        <th colspan="2">Help</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Enter Feedback Questionarrie</td>
                        <td><textarea name="feedback" rows="5" cols="50" maxlength="1000" placeholder="Max 1000 charecters" ></textarea>
                        </td>
                       </tr>
                       <tr>
                        <td></td><td><input type="submit" value="Submit" />
                        <input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
            </c:if></font>
    </body>
</html>