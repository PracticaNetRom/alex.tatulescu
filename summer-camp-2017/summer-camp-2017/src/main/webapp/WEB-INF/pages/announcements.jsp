<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Announcement List</title>
</head>
<body>
	<ul>
		<c:forEach var="announcement" items="${announcements}">
			<li>Id: <c:out value="${announcement.id}" /></li>
			<li>Title: <c:out value="${announcement.title}" /></li>
			<li>Content: <c:out value="${announcement.content}" /></li>
			<li>Status: <c:out value="${announcement.status}" /></li>
			<li>Confirmation Code: <c:out
					value="${announcement.confirmationCode}" /></li>
			<li>Create Date: <c:out value="${announcement.createDate}" /></li>
			<li>Expire Date: <c:out value="${announcement.expireDate}" /></li>
			<li>Owner Email: <c:out value="${announcement.ownerEmail}" /></li>
			<li>Owner First Name: <c:out
					value="${announcement.ownerFirstName}" /></li>
			<li>Owner Last Name: <c:out
					value="${announcement.ownerLastName}" /></li>
			<li>Owner Phone: <c:out value="${announcement.ownerPhone}" /></li>
			<li>Category Name: <c:out value="${announcement.categoryName}" /></li>
			<li>Category Description: <c:out
					value="${announcement.categoryDescription}" /></li>
			<br>
			<br>
		</c:forEach>
	</ul>
</body>
</html>

