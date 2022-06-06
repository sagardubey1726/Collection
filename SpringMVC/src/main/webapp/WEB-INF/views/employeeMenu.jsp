<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="css/reg.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<%
		String username=(String)session.getAttribute("username");
	%>
<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" style="color: red">JavaByKiran</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			
			<li class="nav-item"><a class="nav-link" href="listOfEmployees">List Of
					Employee</a></li>
			<li class="nav-item"><a class="nav-link" href="profile?username=<%=username%>"><%=username %></a>
			</li>
			<li class="nav-item"><a class="nav-link " href="logout">logout</a>
			</li>
		</ul>
	</div>
	</nav>


</body>
</html>