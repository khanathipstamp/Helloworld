<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<body id="body">


	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<p id="text1" style="background-color: #00FA00">Hello World</p>
			<p id="p" style="background-color: #back">Hello IT-405</p>
		</div>

	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<input class="form-control" text="text" name="inputname" id="myname"
				value="click">
		</div>
		<div class="col-sm-4"></div>

	</div>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<input class="form-control" text="text" name="inputname2" id="myname"
				value="click">
		</div>
		<div class="col-sm-4">
			<button type="button" id="sentext" class="btn btn-primary">Primary</button>
		</div>

	</div>


	<img style="position: absolute;" width="128" height="128" id="icon"
		src="images/nicol.png">

	<script type="text/javascript">
		$(function() {

			$(document).keypress(function(e) {
				console.log(e.keyCode);
				if (e.keyCode == 115) {
					$("#icon").animate({
						'top' : '+=10'
					}, 100);
				} else if (e.keyCode == 119) {
					$("#icon").animate({
						'top' : '-=10'
					}, 100);
				} else if (e.keyCode == 97) {
					$("#icon").animate({
						'left' : '-=10'
					}, 100);
				} else if (e.keyCode == 100) {
					$("#icon").animate({
						'left' : '+=10'
					}, 100);
				}
			});

			var count = 0;

			$("#text1").hover(function() {
				count++;
				$(this).css('background-color', '#00FA00');
				$("#text1").text($("input[name=inputname]").val() + count);
			}, function() {
				count++;
				$(this).css('background-color', '#FA0000');

			});

			// 			$("#body").keyup(function() {
			// 				$("#p").css('background-color', 'red');
			// 			});
			// 			$("#body").	keydown(function() {
			// 				$("#p").css('background-color', 'Green');
			// 			});
			// 			$("#text1").hover(function() {
			// 				$(this).css('background-color','#00FA00');	
			// 			},(function() {
			// 				$(this).css('background-color','#FA0000');	
			// 			});
			// 			$("#text1").mouseleave(function name() {
			// 				$(this).css('background-color','#0000DA');	
			// 			});

			$("#sentext").click(function() {
				var name = $("input[name=inputname]").val();
				var surname = $("input[name=inputname2]").val();
				// 				$("#text1").text("Hello", +name + " " + surname);
				$("#text1").append("Hello," + name + " " + surname);

				// 								alert("clicked");
			});
		});
	</script>
</body>
</html>