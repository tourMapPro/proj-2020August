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

<title>LOGIN</title>
</head>
<body>

	<%@include file="top.html"%>.


	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login()">LOGIN</button>
				<button type="button" class="togglebtn" onclick="register()">JOIN</button>
			</div>
			<div class="social-icons">
				<img src="fb.png" alt="facebook"> <img src="tw.png"
					alt="twitter"> <img src="gl.png" alt="google">
			</div>

			<form id="login" method="post" action="loginAction.jsp"
				class="input-group">
				<input type="text" class="input-field" id="userID" name="userID"
					placeholder="User ID" required> <input type="password"
					class="input-field" placeholder="Enter Password" required><br />

				<button class="submit">LOGIN</button>
			</form>

			<form id="register" method="post" action="joinAction.jsp"
				class="input-group">
				<input type="text" class="input-field" id="userID" name="userID"
					placeholder="User ID" required> <input type="email"
					class="input-field" id="userEmail" name="userEmail"
					placeholder="Your Email" required> <input type="password"
					class="input-field" id="userPassword" name="userPassword"
					placeholder="Enter Password" required><br />

				<button class="submit">REGISTER</button>
			</form>
		</div>
	</div>
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "120px";
		}
	</script>

</body>
</html>