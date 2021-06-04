<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Bank | Supplier Register</title>
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
            justify-content: center;
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
            /* align-items: center; */
            overflow: auto;
        }

        .client-register {
            width: 80%;
            color: #000;
            margin-top: 3%;
        }

        .form-item {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 1.6rem;
        }

        .form-control {
            padding: 2.5rem;
            text-align: center;
            font-size: 1.6rem;
            border: none;
            border-radius: 0;
            margin-top: 2%;
            font-weight: 600;
            color: #fff;
            background-color: rgba(0, 0, 0, 0.2);
        }

        .font-white {
            color: #fff;
            text-align: left;
            margin-bottom: 2%;
            display: flex;
        }

        .login-btn {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-login {
            width: 100%;
            padding: 1.5rem;
            background-color: transparent;
            border: 1px solid #fff;
            color: #fff;
        }

        .btn-login:hover {
            background-color: rgba(0, 0, 0, 0.5);
            border: 1px solid rgba(0, 0, 0, 0.5);
        }

        .select {
            padding: 0.3rem;
        }

        .font {
            color: #fff;
            padding: 1.6rem;
            height: max-content;
        }
    </style>
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
			if (name==null || name==""){  
				document.getElementById('bank').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('personal').innerHTML = "Name required!";  
				return false;  
			} if(name.length <3) {
				document.getElementById('bank').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('personal').innerHTML = "Name must be at least 3 characters long";
				return false; 
			} if(name.length >30) {
				document.getElementById('bank').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('personal').innerHTML = "Name must be less than 30 characters long";
				return false; 
			}
			if (address==null || address==""){  
				document.getElementById('bank').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('personal').innerHTML = "Address can't be blank";  
				return false;  
			}
			if (email==null || email==""){  
				document.getElementById('bank').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('personal').innerHTML = "Email required!";  
				return false;  
			} if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length) {
				document.getElementById('bank').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('personal').innerHTML = "Please enter valid email address";
		    	return false;
		 	}
			if (creditNo==null || creditNo==""){  
				document.getElementById('personal').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('bank').innerHTML = "Credit number required!";  
				return false;  
			}
			if (creditInfo==null || creditInfo==""){  
				document.getElementById('personal').innerHTML = "";
				document.getElementById('credential').innerHTML = "";
				document.getElementById('bank').innerHTML = "Credit information required!";  
				return false;  
			}
			if (username==null || username==""){ 
				document.getElementById('bank').innerHTML = "";
				document.getElementById('personal').innerHTML = "";
				document.getElementById('credential').innerHTML = "Username required!";
				return false;  
			}
			if (password==null || password==""){  
				document.getElementById('bank').innerHTML = "";
				document.getElementById('personal').innerHTML = "";
				document.getElementById('credential').innerHTML = "Password required!";
				return false;  
			}
		}
	</script>
</head>
<body>
    <div class="container-fluid h-100">
        <div class="row h-100">
            <div class="col-lg-4 h-100 menu">
                <span><a href="supplier-login">&#8617;</a></span>
                <div class="info">
                    <h3>REGISTER</h3>
                    <h4>Supplier</h4>
                    <p>Fill all required fileds. Also create a unique <b>username</b> and strong <b>password</b>.</p>
                </div>
                <div class="login-img">
                    <img src="https://image.freepik.com/free-vector/registration-form-login-user-interface-man-stands-front-inputted-secure-data-which-is-displayed-big-screen-mobile-phone-isometric-flat-illustration-ui-banner-app_198695-66.jpg" alt="login">
                </div>
            </div>
            <div class="col-lg-8 h-100 details bg-light">
                <div class="client-register">
                    <!-- form goes here -->
                    <form:form action="savesupplier" method="POST" id="supplierForm" name="supplierForm" onsubmit="return (validateForm())">
                        <fieldset>
                            <legend class="font-white">Personal Details:&emsp;<h4><span id="personal" class="label label-warning"></span></h4></legend>
                            <div class="form-group">
                                <div class="register-item">
                                    <form:input path="name" type="text" class="form-control"
                                        id="name" placeholder="Name" name="name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="register-item">
                                    <form:input path="address" type="text" class="form-control"
                                        id="address" placeholder="Address" name="address" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="register-item">
                                            <form:select path="city" class="form-control font" id="city"
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
                                    <div class="col-lg-4">
                                        <div class="register-item">
                                            <form:select path="province" class="form-control font"
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
                                    <div class="col-lg-4">
                                        <div class="register-item">
                                            <form:select path="country" class="form-control font" id="country" name="country">
                                                <option value="default">Country</option>
                                                <option value="srilanka">Sri Lanka</option>
                                                <option value="india">India</option>
                                            </form:select>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="register-item">
                                            <form:input path="email" type="text" class="form-control"
                                                id="email" placeholder="Email" name="email" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="register-item">
                                            <form:input path="mobile" type="text" class="form-control"
                                                id="mobile" placeholder="Mobile Number" name="mobile" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend class="font-white">Credit Details:&emsp;<h4><span id="bank" class="label label-warning"></span></h4></legend>
                            <div class="form-group">
                                <div class="register-item">
                                    <form:input path="creditNo" type="text" class="form-control"
                                        id="creditNo" placeholder="Credit Account Number" name="creditNo"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="register-item">
                                    <form:input path="creditInfo" type="text"
                                        class="form-control" id="creditInfo"
                                        placeholder="Credit Information" name="creditInfo"/>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                        <legend class="font-white">Credentials:&emsp;<h4><span id="credential" class="label label-warning"></span></h4></legend>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="register-item">
                                            <form:input path="username" type="text"
                                                class="form-control" id="username" placeholder="Username"
                                                name="username" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="register-item">
                                            <form:input path="password" type="password"
                                                class="form-control" id="password" placeholder="Password"
                                                name="password"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <div class="row">
                            <div class="col-lg-6  login-btn">
                                <button type="submit" class="btn-login">Submit</button>
                            </div>
                            <div class="col-lg-6  login-btn">
                                <button type="reset" class="btn-login">Clear</button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>