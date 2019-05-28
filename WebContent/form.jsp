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
	<div align="center" class="card"">
		<div class="card-body" style="width: 800px">
			<form class="form-inline">

				<br>
				<form>
					<div class="input-group mb-8">
						<div class="input-group-prepend">
							<span class="input-group-text">ชื่อ สกุล</span>
						</div>
						<input type="text" class="form-control" placeholder="ชื่อ">
						<input type="text" class="form-control" placeholder="นามสกุล">
					</div>
				</form>

				<div align="left" class="container mt-3">

					<p>ที่อยู่:</p>
					<form action="/action_page.php">
						<select name="cars" class="custom-select mb-3">
							<option selected>ที่อยู่</option>
							<option value="volvo">สารคาม</option>
							<option value="fiat">กรุงเทพ</option>
							<option value="audi">บุรีรัมย์</option>
						</select>

					</form>
				</div>


				<div class="row">
					<div class="col-sm-3">
						<p align="left">เพศ</p>
						<div class="form-check" align="left">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="optradio">ชาย
							</label>
						</div>
						<div class="form-check" align="left">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="optradio">หญิง
							</label>
						</div>


					</div>
					<div class="col-sm-5">
						<p>ที่อยู่:</p>
						<form action="/action_page.php">
							<select name="cars" class="custom-select mb-3">
								<option selected>ชั้นปีที่1</option>
								<option value="fiat">ชั้นปีที่2</option>
								<option value="audi">ชั้นปีที่3</option>
								<option value="audi">ชั้นปีที่4</option>
							</select>

						</form>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label for="usr">GPA:</label> <input type="text"
								class="form-control" id="usr">
						</div>
					</div>

				</div>


				<br>
				<div align="left" class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input"
						id="customCheck" name="example1"> <label
						class="custom-control-label" for="customCheck">คนไทยหรือไม่?</label>
				</div>
				<div align="left">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>

			</form>

			<script>
				// Disable form submissions if there are invalid fields
				(function() {
					'use strict';
					window.addEventListener('load', function() {
						// Get the forms we want to add validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
				})();
			</script>
		</div>
	</div>





</body>
</html>