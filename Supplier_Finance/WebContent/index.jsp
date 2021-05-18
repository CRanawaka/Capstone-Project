<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
  * {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
  }

  .navigation {
    width: 100%;
    background-color: #5cb85c;
  }

  .navigation ul {
    display: flex;
    align-items: center;
    list-style: none;
  }

  .navigation li {
    width: 10%;
    text-align: center;
  }

  .navigation li:hover {
    border-radius: 0;
  }

  .navigation a {
    font-size: 1.4rem;
    line-height: 3rem;
    font-weight: 600;
    text-decoration: none;
    color: #000;
  }

  .content {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

  .content h1 {
    margin: 3rem 0 5rem 0;
  }

  .logins {
    display: flex;
  }

  .login {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0 3rem;
  }

  .btn-login {
    margin: 1rem 0;
    padding: 1rem;
    width: 150px;
    line-height: 2rem;
    color: #000;
    font-size: 1.5rem;
  }

  .btn-login:hover {
    background-color: #fff;
    color: #000;
    border: 1px solid #000;
  }

  .nav-pills>li.active>a, 
  .nav-pills>li.active>a:focus,
  .nav-pills>li.active>a:hover {
      color: #000;
      background-color: #fff;
      border-radius: 0px;
  }

  .nav-pills>li>a:hover {
    background-color: #5cb85c;
    border-radius: 0;
  }
  
  .home-container {
  	margin: 0 auto;
  	width: 80%;
  }
</style>
</head>
<body>
  <div class="navigation">
    <ul class="nav nav-pills">
      <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
      <li><a data-toggle="pill" href="#login">Login</a></li>
      <li><a data-toggle="pill" href="#contact">Contact</a></li>
    </ul>
  </div>
  <div class="content">
    <h1> Welcome ABC Bank</h1>
    <div class="tab-content">
      <div id="home" class="tab-pane fade in active">
        <div class="home-container">
        	<h3>Home</h3>
        	<p>Supplier finance is a concept, describing a set of technology-based solutions that aim to lower financing costs and improve business efficiency for buyers (or clients) and sellers (or suppliers) linked in a sales transaction. The idea work by automating transactions and tracking invoice approval and settlement processes, from initiation to completion.</p>
        </div>
      </div>
      <div class="tab-pane fade" id="login">
        <div class="logins">
          <div class="login">
            <img src="images/user.png" width="100" height="100" alt="" hspace="20">
            <a href="client-login"><button type="button" class="btn btn-success btn-login">User</button></a>
          </div>
          <div class="login">
            <img src="images/sup.png" width="100" height="100" alt="" hspace="20">
            <a href="supplier-login"><button type="button" class="btn btn-success btn-login">Supplier</button></a>
          </div>
          <div class="login">
            <img src="images/admin.png" width="100" height="100" alt="" hspace="20">
            <a href="admin"><button type="button" class="btn btn-success btn-login">Admin</button></a>
          </div>
        </div>
      </div>
      <div id="contact" class="tab-pane fade">
        <h3>Contact</h3>
        <p>Chathushka Imalsha</p>
        <p>Hasitha Eranga</p>
        <p>Jeseel Jamaldeen</p>
        <p>Sanjula Premasiri</p>
      </div>
    </div>
  </div>
</body>
</html>