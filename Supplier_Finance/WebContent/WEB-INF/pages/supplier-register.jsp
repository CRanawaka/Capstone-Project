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
<title>Register | Supplier</title>
<script>
		
function validateForm() {
	var username=document.supplierForm.username.value;
	var password=document.supplierForm.password.value;
	var name=document.supplierForm.name.value;  
	var address=document.supplierForm.address.value;
	var email=document.supplierForm.email.value; 
	var atpos = email.indexOf("@");
	var dotpos = email.lastIndexOf(".");
	var creditNo=document.supplierForm.creditNo.value; 
	var creditInfo=document.supplierForm.creditInfo.value;
	if (username==null || username==""){  
		alert("Username can't be blank");  
		return false;  
	}
	if (password==null || password==""){  
		alert("Password can't be blank");  
		return false;  
	}
	
	if (name==null || name==""){  
		alert("Name can't be blank");  
		return false;  
	} if(name.length <3) {
		alert("Name must be at least 3 characters long");
		return false; 
	} if(name.length >30) {
		alert("Name must be less than 30 characters long");
		return false; 
	}
	if (address==null || address==""){  
		alert("Address can't be blank");  
		return false;  
	}
	if (email==null || email==""){  
		alert("Email can't be blank");  
		return false;  
	} if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length) {
    alert("Please enter valid email ID")
    return false;
 }
	if (creditNo==null || creditNo==""){  
		alert("Credit No can't be blank");  
		return false;  
	}
	if (creditInfo==null || creditInfo==""){  
		alert("credit Info can't be blank");  
		return false;  
	}
}
	</script>
</head>
<body>
	<div class="container register-container">
		<h2>
			Register<br>
			<small>Supplier Finance</small>
		</h2>
		<div class="form-group">
			<h4>
				<span id="error" class="label label-warning"></span>
			</h4>
		</div>
		<form:form action="savesupplier" method="POST" id="supplierForm" name="supplierForm" onsubmit="return(validateForm())">
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<form:input path="username" type="text"
						class="form-control box-left" id="username" placeholder="Username"
						name="username" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-lock"></span>
					</div>
					<form:input path="password" type="password"
						class="form-control box-left" id="password" placeholder="Password"
						name="password" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					<form:input path="name" type="text" class="form-control box-left"
						id="name" placeholder="Name" name="name" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-home"></span>
					</div>
					<form:input path="name" type="text" class="form-control box-left"
						id="address" placeholder="Address" name="address" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-home"></span>
					</div>
					<form:select path="city" class="form-control box-left" id="city"
						name="city">
						<option value="default">City</option>
						<option value="colombo">Colombo</option>
						<option value="kandy">Kandy</option>
						<option value="galle">Galle</option>
						<option value="kurunegala">Kurunegala</option>
						<option value="anuradhapura	">Anuradhapura</option>
						<option value="jaffna">Jaffna</option>
						<option value="ratnapura">Ratnapura</option>
						<option value="trincomalee">Trincomalee</option>
						<option value="badulla">Badulla</option>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-home"></span>
					</div>
					<form:input path="state" type="text" class="form-control box-left"
						id="state" placeholder="State" name="state" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-home"></span>
					</div>
					<form:select path="province" class="form-control box-left"
						id="province" name="province">
						<option value="default">Province</option>
						<option value="western">Western</option>
						<option value="central">Central</option>
						<option value="southern">Southern</option>
						<option value="north-western">North Western</option>
						<option value="north-central">North Central</option>
						<option value="northern">Northern</option>
						<option value="sabaragamuwa">Sabaragamuwa</option>
						<option value="eastern">Eastern</option>
						<option value="uva">Uva</option>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-home"></span>
					</div>
					<form:select path="country" class="form-control box-left"
						id="country" name="country">
						<option value="default">Country</option>
						<option value="srilanka">Sri Lanka</option>
						<option value="india">India</option>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-envelope"></span>
					</div>
					<form:input path="email" type="text" class="form-control box-left"
						id="email" placeholder="Email" name="email" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-phone"></span>
					</div>
					<form:input path="mobile" type="text" class="form-control box-left"
						id="mobile" placeholder="Mobile Number" name="mobile" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-credit-card"></span>
					</div>
					<form:input path="creditNo" type="text" class="form-control box-left"
						id="creditNo" placeholder="Credit Account Number" name="creditNo" />
				</div>
			</div>
			<div class="form-group">
				<div class="register-item">
					<div class="icon">
						<span class="glyphicon glyphicon-piggy-bank"></span>
					</div>
					<form:input path="creditInfo" type="text"
						class="form-control box-left" id="creditInfo"
						placeholder="Credit Information" name="creditInfo" />
				</div>
			</div>
			<button type="submit" class="btn btn-success btn-login">Submit</button>
			&emsp;
			<button type="reset" class="btn btn-success btn-login">Clear</button>
		</form:form>

	</div>
</body>
</html>