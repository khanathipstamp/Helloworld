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
<body>
	<div align="center">
		<jsp:include page="include/header.jsp"></jsp:include>

	</div>
	<script type="text/javascript">
		$(function() {

			// 			document.getElementById("sear").innerHTML = "";
			// 			var ce = 1;
			// 			for (var i = 0; i < data.length; i++) {
			// 				if (data[i].title.includes(document.getElementById("w").value)) {
			// 					var div = document.createElement("div");
			// 					div.innerHTML = data[i].body;
			// 					document.getElementById("sear").appendChild(div);
			// 					console.log(data[i].body);

			// 				} else {
			// 					ce = ce - 1;
			// 				}
			// 			}
			// 			if (ce == -2) {
			// 				var div = document.createElement("div");
			// 				div.innerHTML = "ไม่พบค้นหา";
			// 				document.getElementById("sear").appendChild(div);
			// 				;
			// 			}

			//////////////////////////////////////////////////////////////////////////
			$(function() {
				var data = [
						{
							title : "A 1234",
							body : "<div><h1 >Tour Japanese</h1></div>",// 
							image : "<img src='images/to.jpg 'width='700' height='500'>'"
						},
						{
							title : "B 5678",
							body : "<div><h1>Tour English</h1></div>",
							image : "<img src='images/e.jpg 'width='700' height='500'>'"
						}, {
							title : "C 91011",
							body : "<div><h1>ฮั่นแน่3</h1></div>"
						} ];
				$("#search").click(
						function() {
							$("#sear").html('');
							var n = 1;
							for (var i = 0; i < data.length; i++) {
								if (data[i].title.includes($("#w").val())) {
									var content = "<div class=\"card\"><h2>"
											+ data[i].title + "</h2><img>"
											+ data[i].image;
									$("#sear").append(content);
									n++;

								}
								n--;
							}
							
							if (n==-2) {
								$("#sear").append("ไม่พบการค้นหา  :"+$("#w").val());
							}
							
							 $("div").animate({left: '50px'});
							 $("div").animate({riht: '50px'});
						});
			});

		});
	</script>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<input id="w" class="form-control mr-sm-2" type="text"
				placeholder="Search">
		</div>
		<div class="col-sm-2">
			<button id="search" class="btn btn-success" type="submit">Search</button>
		</div>

	</div>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-4">
			<div id="sear"></div>
		</div>

	</div>


</body>
</html>