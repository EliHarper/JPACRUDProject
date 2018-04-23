<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Time to Plan a Trip?</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
</head>
<body>
	<div>
		<h5>${distillery.name}</h5>
		<br> <br>
		<p>
		<h6>${distillery.type}</h6>
		</p>
	</div>

	<form action="result.do" method="GET">
		<c:if test="${not empty distillery}">
		Distillery ID: ${distillery.id}<br>
		Name: <input type="text" name="name" value="${distillery.name}">
			<br> 
		Type: <input type="text" name="type" value="${distillery.type}">
			<br>
		Latitude: <input type="text" name="latitude"
				value="${distillery.latitude}">
			<br>
		Longitude: <input type="text" name="longitude"
				value="${distillery.longitude}">
			<br>
		</c:if>

		<input type="hidden" name="id" value="${distillery.id}" /> <input
			type="submit" class="btn btn-primary" value="Update Distillery">
	</form>

	<br>
	<br>

	<form action="index.do" method="GET">
		<input type="submit" class="btn btn-success" value="Back to Home">
	</form>

	<br>
	<br>

	<form action="delete.do" method="POST">
		<input type="hidden" name="id" value="${distillery.id}" /> <input
			type="submit" class="btn btn-danger" value="Delete Distillery">
	</form>


	<br>
	<br>
	<br>

	<h3>${distillery.name}'s Location:</h3>
	<iframe
		src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d12294.412555788791!2d${distillery.longitude}!3d${distillery.latitude}!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1524343863196"
		width="100%" height="400" frameborder="0" style="border: 0"
		allowfullscreen></iframe>

</body>
</body>
</html>