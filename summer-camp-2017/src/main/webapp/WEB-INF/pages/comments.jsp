<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comment List</title>
</head>
<body>

	<ul>
		<c:forEach var="comments" items="${commentList}">
			<li>Id: <c:out value="${comment.id}" /></li>
			<li>Announcement Id : <c:out value="${comment.announcementId}" /></li>
			<li>Content: <c:out value="${comment.content}" /></li>
			<li>Name: <c:out value="${comment.name}" /></li>
			<li>Create Date: <c:out value="${announcement.createDate}" /></li>
			<br>
			<br>
		</c:forEach>
	</ul>

</body>
</html>