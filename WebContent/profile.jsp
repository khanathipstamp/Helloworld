<%@page import="com.model.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
<script type="text/javascript"
	src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body background="images/p.jpg">
	<div align="center" >
		<h1 style="background-color: DodgerBlue;">ProFile</h1>

	</div>
	<div align="center" >
		<div align="center" class="card" style="width:30rem;">
			<img src="images/icon55.png" alt="Flowers in Chania" width="300"
				height="300">
		</div>
		<div align="center" class="card" style="width: 30rem;">

			<%
				UserModel user = (UserModel) session.getAttribute("user");
			%>
			<table>
				<tr>
					<th>name</th>
					<th><%=user.getName()%>
					</td>


				</tr>
				<tr>
					<th>surname</th>

					<th><%=user.getSurname()%>
					</td>

				</tr>
				<tr>
					<th>Email</th>


					<th><%=user.getEmail()%>
					</td>

				</tr>
				<tr>
					<th>Password</th>

					<th><%=user.getPass()%>
					</td>
				</tr>


			</table>
		</div>
	</div>
</body>
</html>