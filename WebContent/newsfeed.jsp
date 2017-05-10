<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bullhorn Newsfeed</title>
</head>
<body>
	<table>
		<c:forEach var="toot" items="${toots}">
			<tr>	
				<td><h2>${toot.tootsbody }</h2></td>	
				<td>${toot.tootssender }</td>	
				<td>Jan 1st, 5pm</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>