<jsp:include page="prevent.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="resources/css/reg.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD EMPLOYEE</title>
</head>
<body>

	<%
		String msg = (String) request.getAttribute("msg");
		if(msg!=null){
		%>	
			<script type="text/javascript">
			alert("${msg}")
		</script>

	<%		
		}
	%>

	

	

	<form action="updateEmployee" method="post">
		<div class="container register">
			<div class="row">
				<div class="col-md-3 register-left">
					<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
					<h3>Welcome</h3>
					<p>You are 30 seconds away from earning your own money!</p>
				</div>
				<div class="col-md-9 register-right">
					<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">

					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<h3 class="register-heading">Profile</h3>
							<div class="row register-form">
								<div class="col-md-6">
								
								<div class="form-group">
										<input type="hidden" name="id" class="form-control"
											placeholder="ENTER ID *" value="${employee.id}" required  readonly="readonly" />
									</div>
									<div class="form-group">
										<input type="text" name="username" class="form-control"
											placeholder="ENTER USERNAME *" value="${employee.username}" required  readonly="readonly"/>
									</div>
									<div class="form-group">
										<input type="text" name="password" class="form-control"
											placeholder="ENTER PASSWORD *" value="${employee.password}" required />
									</div>
									<div class="form-group">
										<input type="text" name="phone" class="form-control"
											placeholder="ENTER PHONe " value="${employee.phone}" />
									</div>
									<div class="form-group">
										<input type="text" name="department" class="form-control"
											placeholder="ENTER DEPARTMENT *" value="${employee.department}" required />
									</div>

								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" name="city" class="form-control"
											placeholder="ENTER CITY " value="${employee.city}" />
									</div>
									<div class="form-group">
										<select class="form-control" name="type" required>
										<option value="${employee.type}">${employee.type}</option>
											
											<option value="admin">ADMIN</option>
											<option value="employee">EMPLOYEE</option>

										</select>
									</div>
									<div class="form-group">
										<select class="form-control" name="question" required>
										<option value="${employee.question}">${employee.question}</option>
											
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
											placeholder="ENTER ANSWER *" value="${employee.answer}" required />
									</div>
									<input type="submit" class="btnRegister" value="Update" />
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