<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
</style>
<div align="center">
	<jsp:include page="include/header.jsp"></jsp:include>
</div>
<div align="center">
	<meta charset="ISO-8859-1">
	<title>Welcom to MyWorld</title>
</head>
<body background="images/p.jpg">
	<script type="text/javascript">
		function checkUser() {
			var user = document.getElementById("user");
			var pass = document.getElementById("pass");
			if (user != "god" && pass != "1234") {
				document.getElementById("errerms").style.display = "";
				document.getElementById("errerms").innerHTML = "Try again ";
				name.focus();
				return false;
			}
		}
	</script>
	<form action="${pageContext.request.contextPath}/login" method="Post">

		<div class="container">

			<div class="card" style="width: 400px">
				<img class="card-img-top" src="images/f.png" alt="Card image"
					style="width: 100%">
				<div class="card-body">
					<h4 class="card-title">khanathip rachprakhan</h4>
					<p class="card-text">Some example text some example text. John
						Doe is an architect and engineer</p>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#exampleModal">Login</button>

					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Login</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form onsubmit="return checkUser()"
										action="${pageContext.request.contextPath}/login"
										method="Post">
										<div div align="center">

											Username:<br> <input type="text"
												class="btn btn-outline-primary" name="email" id="user"><br>

											Password:<br> <input type="Password"
												class="btn btn-outline-primary" name="Password" id="pass"><br>
											<br>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>

												<input type="submit" class="btn btn-primary" value="Login">
											</div>
										</div>
								</div>
							</div>
						</div>

					</div>
					<br>
					</style>
</body>

</div>

</html>
