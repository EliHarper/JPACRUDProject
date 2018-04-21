<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<title>Distilleries :D</title>

<div class="container">
	<div class="row">
		<div class="span12">
			<div class="head">
				<div class="row-fluid">
					<div class="span12">
						<div class="span6">
							<h1 class="muted">Who wants some whiskey?</h1>
						</div>
					</div>
				</div>

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
			</div>
		</div>
	</div>
</div>

</head>
<body>


	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="head">
					<div class="row-fluid">
						<div class="span12">
							<div class="span6">
								<c:forEach var="d" items="${distilleries}">
										<c:if test="${d.id % 2 == 0}">
											</form>
											<form action="show.do" method="GET">
												<input type="hidden" value="${d.id}" name="id">
												<button type="button" class="btn btn-default">${d.name}</button>
										</c:if>
										<c:if test="${d.id % 2 == 1}">
											<form action="show.do" method="GET">
												<input type="hidden" value="${d.id}" name="id">
												<button type="button" class="btn btn-info">${d.name}</button>
											</form>
										</c:if>
										<br>
										<br>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>