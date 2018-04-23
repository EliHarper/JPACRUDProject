<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<style>
	body, html {
    height: 100%;
}
.bg { 
    /* The image used */
    background-image: url("http://mygiveonthings.com/wp-content/uploads/2016/03/christiansandbooze.jpg");

    /* Half height */
    height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
                    
</style>

<title>Distilleries :D</title>

<h1 class="muted">Who wants some whiskey?</h1>

<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<ul class="nav">
				<li><a
					href="http://localhost:8080/CruddyWebProject/toAddDistillery.do">Add
						Distillery</a></li>
			</ul>
		</div>
	</div>
</div>

</head>
<body>

	<div class="bg"></div>

    <p class="py-5 text-center"></p>
	

	<div class="container-fluid">
	<table>
		<tr>
		<col width="300">
		<col width="300">
		<col width="300">
		<col width="300">
		<c:forEach var="distillery" items="${distilleries}">
		<td align="center">
			<form action="show.do" method="GET">
				<c:if test="${distillery.id % 2 == 0}">
					<input type="hidden" name="id" value="${distillery.id}">
					<input type="submit" class="btn btn-info"
						value="${distillery.name}">
				</c:if>
				<c:if test="${distillery.id % 2 == 1}">
					<input type="hidden" name="id" value="${distillery.id}">
					<input type="submit" class="btn default" value="${distillery.name}">
				</c:if>
				<c:if test="${distillery.id % 5 == 0 }">
					<tr>
				</c:if>
			</form>
		</c:forEach>
	</table>
	</div>
	<br>

</body>
</html>