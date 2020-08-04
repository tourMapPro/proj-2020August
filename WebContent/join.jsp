<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Join Us</title>
</head>
<body>

	<%@include file="top.html"%>.


	<div class="container">
		<div class="col-lg-6"></div>
		<div class="col-lg-6">
			<div class="jumbotron" style="padding-top: 50px; margin-top: 50px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;"> 
					Join Us</h3>
					
					<br>
					<div class="form-row">
						<input type="text" class="form-control" id="userID" name="userID"
							placeholder="ID" maxlength="20">
					</div>
					<br>
					<div class="form-row">
						<input type="email" class="form-control" id="userEmail" name="userEmail"
							placeholder="Email" maxlength="40">
					</div>
					<br />
					<div class="form-row">
						<input type="password" class="form-control" id="userPassword"
							name="userPassword" placeholder="Password" maxlength="20">
					</div>

					<br> <input type="submit" class="btn btn-info form-control"
						value="회 원 가 입">
				</form>
			</div>
		</div>
	</div>

</body>
</html>