<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
<script type="text/javascript"
	src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body background="images/p.jpg">

	<jsp:include page="include/header.jsp"></jsp:include>
	<script type="text/javascript">
		function checkUser() {
			var user = document.getElementById("user");
			var pass = document.getElementById("pass");
			if (user.value != "god" && pass.value != "1234") {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "Try again ";
				name.focus();
				return false;
			}
		}
	</script>
	<form action="${pageContext.request.contextPath}/login" method="Post">
		<br> <br> <br>
		<div align="center">
			<div align="center" class="card" style="width: 20rem;">
				<div class="card-header">Login</div>
				<form onsubmit="return checkuser()"
					action="${pageContext.request.contextPath}/login" method="Post">
					<div div align="center">

						Username:<br> <input type="text"
							class="btn btn-outline-primary" name="email"><br>

						Password:<br> <input type="Password"
							class="btn btn-outline-primary" name="Password"><br>
						<br> <input type="submit" class="btn btn-primary"
							value="Login"> <br> <br>
						<div class="card-footer">|</div>

					</div>
			</div>
	</form>
</html>