<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Bank</title>
    <link rel="icon" href="./images/icon.png">
    <!-- Boostrap Framework -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Genaral CSS */
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@600&display=swap');

        * {
            margin: 0;
            padding: 0;
            font-family: "Quicksand", sans-serif;
        }
        html, body {
            height: 100%;
        }
        .border {
            border: 1px solid black;
        }
        .h-100 {
            height: 100%;
        }
        /* .bg-dark {
            background-color: #272732;
        } */

        /* .bg-light {
            background-color: #1F1F28;
        } */

        /* .navbar {
            border-radius: 0;
            margin: 0;
        } */


        .navbar-fixed-top {
            background-color: #272732;
            display: flex;
            justify-content: flex-end;
        }
        .navbar {
            float: right;
            margin: 0;
        }
        .navbar li {
            padding: 0 1rem;
        }
        .navbar a {
            color: #fff;
        }
        .nav>li>a:focus, .nav>li>a:hover {
            color: #337ab7;
            background-color: transparent;
        }
        .container-fluid {
            padding: 0;
        }

        /* Dashboard CSS */
        /* #dashboard {
            background-color: #d3d3d3;
            background-image: linear-gradient(to right, #d3d3d3, #fff);
        } */
        .dashboard {
            height: 600px;
        }
        .w-100 {
            width: 100%;
        }
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .intro-img {
            background-image: linear-gradient(to right, #e3e3e3, #fff);
        }
        .intro {
            padding: 5rem;
        }
        .title-img{
            width: 300px;
        }

        /* Upload CSS */
        .upload {
            height: 600px;
            width: 100%;
        }
        .upload-img {
            background-image: linear-gradient(to left, #e3e3e3, #fff);
        }
        .intro-upload {
            width: 50%;
        }
        .form-control {
            border-radius: 0;
        }
        .upload-file input[type=file] {
            display: none;      
        }
        .file {
            cursor:pointer;
        }
        .btn-upload {
            width: 100%;
            padding: 1rem;
            background-color: transparent;
            color: #000;
            border: 1px solid #000;
            border-radius: 0;
        }
        .btn-upload:hover {
            color: #337ab7;
        }

        /* View CSS */
        .view {
            height: 600px;
        }
        .view-img {
            background-image: linear-gradient(to right, #e3e3e3, #fff);
        }
        .btn-view {
            width: 300px;
            margin-top: 2%;
            padding: 1rem;
            background-color: transparent;
            border: 1px solid #000;
        }
        .view-center {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .view-cover-img {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .view-cover {
            width: 500px;
        }

        /* Logout CSS */
        .logout {
            height: 600px;
        }
        .log-img {
            background-image: linear-gradient(to left, #e3e3e3, #fff);
        }
        .btn-logout {
            width: 300px;
            margin-top: 2%;
            padding: 1rem;
            background-color: transparent;
            border: 1px solid #000;
        }
        .logout-center {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .logout-cover-img {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .logout-cover {
            width: 500px;
        }

        /* Footer CSS */
        #footer {
            background-color: #272732;
        }
        .footer {
            width: 100%;
            height: 5rem;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <section id="navigation">
        <div class="container-fluid">
            <nav class="navbar navbar-fixed-top">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#dashboard">Dashboard</a></li>
                    <li><a href="#upload">Upload</a></li>
                    <li><a href="#view">View</a></li>
                    <li><a href="#logout">Logout</a></li>
                </ul>
            </nav>
        </div>
    </section>

    <!-- Content -->
    <section id="dashboard">
        <div class="container w-100 dashboard">
            <div class="row h-100">
                <div class="col-lg-6 h-100 center intro-img">
                    <div class="intro">
                        <h1>Dashboard</h1>
                        <h4>User can upload, view invoices and generate reports.</h4>
                    </div>
                </div>
                <div class="col-lg-6 h-100">
                    <div class="dashboard-img">
                        <img src="https://image.freepik.com/free-vector/site-stats-concept-illustration_114360-1509.jpg" alt="dashbord-image">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Upload -->
    <section id="upload">
        <div class="container w-100 upload">
            <div class="row h-100">
                <div class="col-lg-6 h-100">
                    <div class="title-img">
                        <img src="https://image.freepik.com/free-vector/video-upload-concept-illustration_114360-4702.jpg" alt="dashbord-image">
                    </div>
                </div>
                <div class="col-lg-6 h-100 center upload-img">
                    <div class="intro-upload text-center">
                        <h1>Upload</h1>
                        <h4>Fill the details to upload the invoice.</h4>
                        <form action="#" method="post">
                            <div class="form-group">
                                <div class="upload-item">
                                    <input path="suppierCode" type="text" class="form-control"
                                        id="supplier-code" placeholder="Supplier Code" name="supplier-code" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="upload-item">
                                    <input path="invoiceNumber" type="text" class="form-control"
                                        id="invoice-number" placeholder="Invoice Number" name="invoice-number" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="upload-item">
                                    <input path="invoice-date" type="date" class="form-control"
                                        id="invoice-date" name="invoice-date" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="upload-item">
                                    <input path="invoiceAmount" type="text" class="form-control"
                                        id="invoice-amount" placeholder="Invoice Amount" name="invoice-amount" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="upload-item">
                                    <select class="form-control" id="currency" name="currency">
                                        <option value="default">Currency</option>
                                        <option value="usd">USD ($)</option>
                                        <option value="gbp">GBP (£)</option>
                                        <option value="eruo">Euro (&euro;)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="upload-item upload-file center">
                                    <input type="file" name="upload-invoice" id="upload-invoice" hidden/>
                                    <label for="upload-invoice" class="form-control file">Upload Invoice</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="upload-item">
                                    <button type="submit" class="btn-upload">Upload</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- View -->
    <section id="view">
        <div class="container w-100 view">
            <div class="row h-100">
                <div class="col-lg-6 h-100 center view-img">
                    <div class="intro view-center">
                        <h1>View</h1>
                        <h4>Use the given button to view uploaded invoices.</h4>
                        <a href="#"><button type="button" class="btn-view">View Invoices</button></a>
                    </div>
                </div>
                <div class="col-lg-6 h-100 center">
                    <div class="view-cover-img">
                        <img src="https://image.freepik.com/free-vector/man-with-laptop-analyzing-infographics-diagram-bar-chart-report-flat-vector-illustration-analysis-marketing-project-manager_74855-8454.jpg" class="view-cover" alt="view-image">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Logout -->
    <section id="logout">
        <div class="container w-100 logout">
            <div class="col-lg-6 h-100">
                <div class="center">
                    <img src="https://image.freepik.com/free-vector/access-control-system-abstract-concept_335657-3180.jpg" class="logout-cover" alt="view-image">
                </div>
            </div>
            <div class="row h-100">
                <div class="col-lg-6 h-100 center log-img">
                    <div class="intro logout-center">
                        <h1>Logout</h1>
                        <h4>Want to logout?</h4>
                        <a href="#"><button type="button" class="btn-logout">Logout</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <section id="footer">
        <div class="footer">
            <p>All Right Reserved. &copy; 2021</p>
        </div>
    </section>
</body>
</html>