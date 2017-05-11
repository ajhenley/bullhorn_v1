<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Bullhorn Newsfeed</title><!-- Latest compiled and minified CSS -->
	<jsp:include page="bootstrap.jsp"></jsp:include>
	<style>
		/* Footer */
	
		footer{
		   background-color: #424558;
		    position: fixed;
		    bottom: 0;
		    left: 0;
		    right: 0;
		    height: 35px;
		    text-align: center;
		    color: #CCC;
		}
		
		footer p {
		    padding: 10.5px;
		    margin: 0px;
		    line-height: 100%;
		}
	</style>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
		<c:forEach var="toot" items="${toots}">
			<div class="panel panel-default">
			  <div class="panel-body">
			    ${toot.tootsbody }
			  </div>
			  <div class="panel-footer"><b>${toot.tootssender }</b> - <fmt:formatDate value="${toot.tootsdatetime}" pattern="MMM dd, YYYY  HH:mm"/></div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>