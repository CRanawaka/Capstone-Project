<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Supplier</title>
    <link rel="icon" href="./images/icon.png">
    <!-- Boostrap Framework -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap');

        * {
            margin: 0;
            font-family: "Quicksand", sans-serif;
        }

        html, body {
            height: 100%;
        }

        .h-100 {
            height: 100%;
        }

        .border {
            border: 1px solid black;
        }

        .bg-light {
            background-color: #1F1F28;
        }

        .menu {
            padding: 3rem;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            color: #000;
        }

        .menu span {
            font-size: 6rem;
        }

        .menu span a {
            text-decoration: none;
            color: #000;
        }
        .menu h3 {
            font-size: 4rem;
            letter-spacing: 5px;
        }

        .menu h4 {
            font-size: 3rem;
            letter-spacing: 2.5px;
        }

        .menu p {
            margin-top: 2%;
            font-size: 1.6rem;
        }

        .login-img {
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .login-img img {
            width: 450px;
        }

        .info {
            display: flex;
            flex-direction: column;
        }

        .details {
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .client-login {
            width: 60%;
            color: #fff;
        }

        .form-item {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 1.6rem;
        }

        .form-control {
            padding: 3rem;
            text-align: center;
            font-size: 1.6rem;
            border: none;
            border-radius: 0;
            box-shadow: rgba(0, 0, 0, 0.5);
            margin-top: 2%;
            font-weight: 600;
        }

        .checkbox {
            margin-top: 8%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .btn-login {
            width: 100%;
            padding: 2rem;
            margin-top: 5%;
            color: white;
            background-color: transparent;
            border: 1px solid #fff;
        }

        .btn-login:hover {
            background-color: rgba(0, 0, 0, 0.5);
            border: 1px solid rgba(0, 0, 0, 0.5);
        }

        .p-sign {
            margin: 8% auto;
            text-align: center;
            font-size: 1.6rem;
        }

        .p-sign a {
            text-decoration: none;
        }
        
        .error {
        	display: flex;
        	align-items: center;
            justify-content: center;
        }
    </style>
    <script>
		function checkError() {
			var qryString = window.location.search;
			var urlParam = new URLSearchParams(qryString);
			var msg = urlParam.get('msg');
			if (msg == "success") {
				document.getElementById('error').className = "label label-success";
				document.getElementById('error').innerHTML = "Supplier register successfully.";
			}
			if (msg == "supplier") {
				document.getElementById('error').className = "label label-warning";
				document.getElementById('error').innerHTML = "Invalid supplier username or password";
			}
		}
	</script>
</head>
<body onload="checkError()">
    <div class="container-fluid h-100">
        <div class="row h-100">
            <div class="col-lg-8 h-100 menu">
                <span><a href="index.jsp">&#8617;</a></span>
                <div class="info">
                    <h3>LOGIN</h3>
                    <h4>Supplier</h4>
                    <p>User your supplier registered <b>username</b> and <b>password</b> to log in.</p>
                </div>
                <div class="login-img">
                    <img src="https://image.freepik.com/free-vector/distribution-hemp-products-abstract-concept-vector-illustration-retail-cannabis-business-marijuana-sales-market-order-online-hemp-extract-food-supplement-wholesale-abstract-metaphor_335657-1443.jpg" alt="login">
                </div>
            </div>
            <div class="col-lg-4 h-100 details bg-light">
                <div class="client-login">
                    <form:form action="supplierlogin" method="post">
                        <div class="form-group error">
                            <h4>
                                <span id="error"></span>
                            </h4>
                        </div>
                        <div class="form-group">
                            <div class="form-item">
                                <form:input path="username" type="text"
                                    class="form-control" id="username" placeholder="Username"
                                    name="username" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-item">
                                <form:input path="password" type="password"
                                    class="form-control" id="password" placeholder="Password"
                                    name="password" />
                            </div>
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name="remember" /> Remember
                                me</label>
                        </div>
                        <button type="submit" class="btn-login">Submit</button>
                        <div class="form-group">
                            <p class="p-sign">
                                New user? <a href="supplier-register">Sign up</a> here
                            </p>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>