<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Bank</title>
    <link rel="icon" href="https://image.freepik.com/free-vector/illustration-touch-screen-hand-gesture_53876-5607.jpg">
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

        .border1 {
            border: 1px solid black;
        }

        .h-100 {
            height: 100%;
        }

        /* .bg-dark {
            background-color: #272732;
        }

        .bg-light {
            background-color: #1F1F28;
        } */

        /* .navbar {
            border-radius: 0;
            margin: 0;
        } */

        .nav-pills>li.active>a, 
        .nav-pills>li.active>a:focus,
        .nav-pills>li.active>a:hover {
            color: #000;
            background-color: #fff;
            border-radius: 0px;
        }

        .nav {
            float: right;
            font-size: 1.6rem;
        }

        .nav li {
            padding: 0 1rem;
            color: #337ab7;
            font-weight: 600;
        }

        .nav>li>a:hover {
            background-color: #fff;
            color: #000;
            font-weight: 600;
        }

        .login {
            min-height: 40%;
            width: 100%;
            position: absolute;
            bottom: 0;
            background-color: #1F1F28;
            color: #fff;
            padding: 0;
        }

        .container-fluid {
            position: relative;
            margin: 0;
            padding: 0;
        }

        .details {
            width: 100%;
            padding: 0;
        }

        .welcome {
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .welcome img {
            width: 600px;
        }

        .note {
            width: 30%;
            flex-direction: column;
            margin-right: 10%;
        }

        .note h4 {
            line-height: 2.5rem;
        }

        .login {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .login-cards {
            margin-top: 2%;
            display: flex;
        }

        .client {
            margin: 0 3rem;
        }

        .supplier {
            margin: 0 3rem;
        }

        .btn-bank {
            width: 300px;
            padding: 2rem;
            font-size: 1.6rem;
            background-color: transparent;
            color: #fff;
            border: 1px solid #fff;
        }

        .btn-bank a {
            text-decoration: none;
            color: #fff;
        }

        .btn-bank:hover {
            background-color: rgba(0, 0, 0, 0.5);
            border: none;
        }

        .admin {
            margin-top: 2%;
        }

        .admin a {
            text-decoration: none;
            color: #337ab7;
        }

        .admin a:hover {
            color: #22527b;
        }

        .admin h5 {
            font-size: 1.6rem;
            letter-spacing: 1px;
        }
        
        .about img {
            width: 500px;
        }
        
        .note ul {
            font-size: 1.6rem;
        }
    </style>
</head>
<body>
    <div class="container-fluid h-100">
        <nav class="navbar">
            <ul class="nav nav-pills">
                <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
                <li><a data-toggle="pill" href="#contact">Contact</a></li>
                <li><a data-toggle="pill" href="#about">About</a></li>
            </ul>
        </nav>
        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <div class="container details">
                    <div class="welcome">
                        <div class="note">
                            <h1><b>Supplier Finance</b></h1>
                            <h4>The idea work by automating transactions and tracking invoice approval and settlement processes, from initiation to completion.</h4>
                        </div>
                        <img src="https://image.freepik.com/free-vector/two-business-partners-handshaking_74855-6685.jpg" alt="welcome">
                    </div>
                </div>
            </div>
            <div id="contact" class="tab-pane fade">
                <div class="container details">
                    <div class="welcome">
                        <div class="note">
                            <h1><b>Contact Us.</b></h1>
                            <h4>Use <b>example@abcbank.com</b> to contact us.</h4>
                        </div>
                        <img src="https://image.freepik.com/free-vector/email-marketing-internet-chatting-24-hours-support_335657-3009.jpg" alt="welcome">
                    </div>
                </div>
            </div>
            <div id="about" class="tab-pane fade">
                <div class="container details">
                    <div class="welcome about">
                        <div class="note">
                            <h1><b>About Us.</b></h1>
                            <h4>We are group of three members.</h4>
                            <ul>
                                <li>Chathushka the <b>Master Mind</b></li>
                                <li>Sanjula the <b>Innocent Editor</b></li>
                                <li>Jeseel the <b>Peace Maker</b></li>
                            </ul>
                        </div>
                        <img src="https://image.freepik.com/free-vector/business-team-putting-together-jigsaw-puzzle-isolated-flat-vector-illustration-cartoon-partners-working-connection-teamwork-partnership-cooperation-concept_74855-9814.jpg" alt="welcome">
                    </div>
                </div>
            </div>
        </div>        
        <div class="container login">
            <div class="login-desc">
                <h3>Connect with Supplier Finance.</h3>
            </div>
            <div class="login-cards">
                <div class="client">
                    <button class="btn-bank"><a href="client-login">Client</a></button>
                </div>
                <div class="supplier">
                    <button class="btn-bank"><a href="supplier-login">Supplier</a></button>
                </div>
            </div>
            <div class="admin">
                <h5>Authorized user? <a href="admin-login">Login</a> here!</h5>
            </div>
        </div>
    </div>
</body>
</html>