<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div align="center">
	<jsp:include page="include/header.jsp"></jsp:include>

</div>
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
<body background="images/p.jpg">
	<div align="center">
		<div align="center">


			<div align="center" class="card" style="width: 20rem;">
				<h1>calculator</h1>
				num1:<br> <input type="number" name="num1" id="num1"> <br>
				num2: <input type="number" name="num2" id="num2"><br> 
				<input type="button" class="btn btn-secondary btn-lg "onclick="	add(num1,num2)" value="+"> 
				<br> 
				<input type="button" class="btn btn-secondary btn-lg "onclick="	lete(num1,num2)" value="-">
				 <br> 
				<input type="button" class="btn btn-secondary btn-lg" onclick=" mul(num1,num2)" value="*">
				<br> 
				<input type="button" class="btn btn-secondary btn-lg "onclick=" div(num1,num2)" value="/">
				<br>
				<div align="center">
					<p class="please" id="errerms" :none></p>
					<br> <br>
				</div>
			</div>
		</div>

	</div>
</body>
</html>