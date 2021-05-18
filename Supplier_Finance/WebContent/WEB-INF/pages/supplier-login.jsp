<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Supplier Finance | Login</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- Created CSS  -->
<style type="text/css"><%@ include file = "/WEB-INF/pages/style/style.css" %></style>


<script>
	function checkError() {
		var qryString = window.location.search;
		var urlParam = new URLSearchParams(qryString);
		var msg = urlParam.get('msg');
		var username = urlParam.get('username');
		var password = urlParam.get('password');
		if (msg == "client") {
			document.getElementById('error').className = "label label-warning";
			document.getElementById('error').innerHTML = "Invalid Client username or password.";
		} else if (msg == "supplier") {
			document.getElementById('error').className = "label label-warning";
			document.getElementById('error').innerHTML = "Invalid Supplier username or password.";
		} else if (msg == "success") {
			document.getElementById('error').className = "label label-success";
			document.getElementById('error').innerHTML = "Register complete successfully.";
			document.getElementById('detail').className = "label label-primary";
			document.getElementById('detail').innerHTML = "Your username: "
					+ username + " & " + "password: " + password;
		}
	}
</script>
<title>Login | Supplier</title>
</head>
<body>
	<div class="container login-container">
		<h2>
			Login<br/>
			<small>Supplier</small>
		</h2>
		<form:form action="supplierlogin" method="post">
			<div class="form-group">
				<h4>
					<span id="error"></span>
				</h4>
				<h4>
					<span id="detail"></span>
				</h4>
			</div>
			<div class="form-group">
				<div class="form-item">
					<div class="icon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<form:input path="username" type="text"
						class="form-control box-left" id="username" placeholder="Username"
						name="username" />
				</div>
			</div>
			<div class="form-group">
				<div class="form-item">
					<div class="icon">
						<span class="glyphicon glyphicon-lock"></span>
					</div>
					<form:input path="password" type="password"
						class="form-control box-left" id="password" placeholder="Password"
						name="password" />
				</div>
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="remember" /> Remember
					me</label>
			</div>
			<button type="submit" class="btn btn-success btn-login">Submit</button>
			<div class="form-group">
				<p class="p-sign">
					New user? <a href="supplier-register">Sign up</a> here
				</p>
			</div>
		</form:form>
	</div>
</body>
</html>