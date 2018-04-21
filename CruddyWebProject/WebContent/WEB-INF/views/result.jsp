<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Distillery Updated!</title>
<h2>${distillery.name} Has Been Successfully Updated</h2>
</head>
<body>

		Distillery ID: ${distillery.id}<br>
		Name: ${distillery.name}"<br> 
		Type: ${distillery.type} <br>
		Latitude: ${distillery.latitude} <br>
		Longitude: ${distillery.longitude}<br>
		
		<form action="index.do" method="GET">
		<input type="submit" value="Back to Home">
		</form>

</body>
</html>