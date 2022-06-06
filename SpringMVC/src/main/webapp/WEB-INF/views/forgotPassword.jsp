

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="css/reg.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FORGOT PASSWORD</title>
</head>
<body>

	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
	%>
	<script type="text/javascript">
		alert("${msg}")
	</script>

	<%
		}
	%>





	<form action="forgotPassword" method="post">
		<div class="container register">
			<div class="row">
				<div class="col-md-3 register-left">
					<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />

				</div>
				<div class="col-md-9 register-right">
					<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">

					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<h3 class="register-heading">Forgot Passwpord</h3>
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" name="username" class="form-control"
											placeholder="ENTER USERNAME *" value="" required />
									</div>

									<div class="form-group">
										<select class="form-control" name="question" required>
											<option class="hidden" selected disabled>Please
												select your Sequrity Question</option>
											<option value="What is your Birthdate?">What is your
												Birthdate?</option>
											<option value="What is Your old Phone Number">What
												is Your old Phone Number</option>
											<option value="What is your Pet Name?">What is your
												Pet Name?</option>
											<option value="What is your fav color?">What is your
												fav color?</option>
										</select>
									</div>

									<div class="form-group">
										<input type="text" name="answer" class="form-control"
											placeholder="ENTER ANSWER *" value="" required />
									</div>

									<div class="form-group">
										<input type="text" name="newPassword" class="form-control"
											placeholder="ENTER NEW PASSWORD*" value="" required />
									</div>

									<div class="form-group">
										<input type="text" name="confirmPassword" class="form-control"
											placeholder="ENTER CONFIRM PASSWORD *" value="" required />
									</div>
									<input type="submit" class="btnRegister"
										value="Forgot Password" />

								</div>

							</div>

						</div>

					</div>

				</div>
			</div>
		</div>

		</div>
	</form>
</body>
</html>