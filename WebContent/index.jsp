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
</style>
<div align="center">
	<jsp:include page="include/header.jsp"></jsp:include>

</div>
<div align="center">
	<meta charset="ISO-8859-1">
	<title>Welcom to MyWorld</title>
</head>
<body background="images/p.jpg" >
	<script type="text/javascript">
		function add(x, y) {
			var num1 = parseInt(x.value);
			var num2 = parseInt(y.value);
			document.getElementById("errerms").innerHTML = num1 + num2;
		}
		function lete(x, y) {
			var num1 = parseInt(x.value);
			var num2 = parseInt(y.value);
			document.getElementById("errerms").innerHTML = num1 - num2;
		}
		function div(x, y) {
			var num1 = parseInt(x.value);
			var num2 = parseInt(y.value);
			document.getElementById("errerms").innerHTML = num1 / num2;
		}
		function mul(x, y) {
			var num1 = parseInt(x.value);
			var num2 = parseInt(y.value);
			document.getElementById("errerms").innerHTML = num1 * num2;
		}
	</script>

	</style>
	<div align="center" class="card" style="width: 50rem;">
	<div align="center" class="card" style="width: 20rem;">
				<img src="images/icon55.png" alt="Flowers in Chania" width="100"
					height="200">
			</div>
		<div align="center" class="card" style="width: 20rem;">
			
			
		 num1:<br> <input type="number" name="num1"
				id="num1"> <br> num2: <input type="number"
				name="num2" id="num2"><br> <input
				type="button" class="btn btn-secondary btn-lg onclick="
				add(num1,num2)" value="+"> <br> <input type="button"
				class="btn btn-secondary btn-lg onclick=" lete(num1,num2)" value="-">
			<br> <input type="button"
				class="btn btn-secondary btn-lg onclick=" mul(num1,num2)" value="*">
			<br> <input type="button"
				class="btn btn-secondary btn-lg onclick=" div(num1,num2)" value="/">
			<br> <br> <br> <br> <br>
			<div align="center">
				<p class="please" id="errerms" :none></p>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>

</div>

</html>
