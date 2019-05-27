<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
<script type="text/javascript"
	src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
<style>
.please {
	color: red;
	font-size: 40px;
}

#rcorners1 {
	border-radius: 25px;
	background: hsla(9, 100%, 64%, 0.6);
	padding: 20px;
	width: 200px;
	height: 30px;
}

#rcorners2 {
	border-radius: 25px;
	background: hsla(9, 100%, 64%, 0.6);
	padding: 20px;
	width: 200px;
	height: 30px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body background="images/p.jpg">
	<div align="center">
		<jsp:include page="include/header.jsp"></jsp:include>

	</div>

	<script type="text/javascript">
		function checkinput() {
			var name = document.getElementById("name");
			var surname = document.getElementById("surname");
			var password = document.getElementById("password");
			var repassword = document.getElementById("repassword");
			var email = document.getElementById("email");
			var tel = document.getElementById("tel");
			// 		 alert("please Enter name "+name);
			// 		 return false;
			if (name.value == "") {
				// 			 alert("please Enter name");
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "please Enter name";
				name.focus();
				return false;
			}
			if (surname.value == "") {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "please Enter surname";
				surname.focus();
				return false;
			}
			if (password.value == "") {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "please Enter password";
				password.focus();
				return false;
			}
			if (repassword.value != password.value) {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "please Enter repassword";
				repassword.focus();
				return false;
			}
			if (email.value == "") {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "please Enter Email";
				email.focus();
				return false;
			}
			if (tel.value == "") {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "please Enter Telphone";
				tel.focus();
				return false;
			}

			return true;

		}
	</script>
	<div align="center">
		<div class="card" style="width: 30rem;">
			<div class="card-header">
				<div>
					<img src="${pageContext.request.contextPath }/images/dairy.jpg"
						width="430">

					<h1>Register</h1>
					<p>Hello, You can sign up for work here.</p>
				</div>
			</div>
			<div align="center">
				<p id="errerms" class="please" style="" :none></p>
			</div>

			<form onsubmit="return checkinput()"
				action="${pageContext.request.contextPath}/register1" method="Post">
				<div align="center">
					Name:<br> <input type="text" class="btn btn-outline-dark"
						name="name" id="name"> <br> Surname:<br> <input
						type="text" class="btn btn-outline-dark" name="surname"
						id="surname"> <br> Password:<br> <input
						type="text" class="btn btn-outline-dark" name="password"
						id="password"> <br> Repassword:<br> <input
						type="text" class="btn btn-outline-dark" name="repassword"
						id="repassword"> <br> Email:<br>
					<input type="email" class="btn btn-outline-dark" name="email"
						id="email"> <br> Tel.:<br> <input type="text"
						class="btn btn-outline-dark" name="tel" id="tel"> <br>
					<br> <input type="submit" class="btn btn-lg btn-primary"
						value="Submit"> | <input type="Reset"
						class="btn btn-secondary btn-lg" value="Reset"> <br>
					<br>
				</div>

			</form>
		</div>
	</div>
</body>
</html>