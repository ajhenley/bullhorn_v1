<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Bullhorn Newsfeed</title><!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>	
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
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Bullhorn</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="#">Link <span class="sr-only">(current)</span></a></li>
	        <li><a href="#">Link</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Link</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
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
	<footer>
        <p>© 2017<a style="color:#0a93a6; text-decoration:none;" href="#"> BootSnipp And TomGeek76</a>, All rights reserved 2016-2017.</p>
    </footer>
</body>
</html>