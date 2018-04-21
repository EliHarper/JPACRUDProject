<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Add Distillery</title>

<div class="container">
	<div class="row">
		<div class="span12">
			<div class="head">
				<div class="row-fluid">
					<div class="span12">
						<div class="span6">
							<h1 class="muted">Add to the list!</h1>
						</div>
					</div>
				</div>

				<div class="navbar">
					<div class="navbar-inner">
						<div class="container">
							<ul class="nav">
								<li><a
									href="http://localhost:8080/CruddyWebProject/index.do">Home</a>
								</li>
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

							<h3>Please enter the information of the distillery you would
								like to add:</h3>

							<br><br>

							<form action="addDistillery.do" method="POST">
								Name: &emsp;&emsp;&thinsp;&thinsp;&thinsp;&thinsp;<input type="text" name="name"> <br>
								Type: &emsp;&emsp;&emsp;<input type="text" name="type">
								<br> Latitude: &emsp;<input type="text" name="latitude">
								<br> Longitude: <input type="text" name="longitude">
								<br> <input type="hidden" value="${distillery.name}"
									name="name"> <input type="hidden"
									value="${distillery.type}" name="type"> <input
									type="hidden" value="${distillery.latitude}" name="latitude">
								<input type="hidden" value="${distillery.longitude}"
									name="longitude">
									
									<br>
									
								<button type="button" class="btn btn-primary">Add
									Distillery</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>