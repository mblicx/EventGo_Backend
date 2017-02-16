<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>

<head>
	  <title>Event-Go | Logup</title>
	  <!--mobile apps-->
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <meta name="keywords" content="Terrain Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	  <!-- fonts -->
	  <link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
	  <link href='//fonts.googleapis.com/css?family=Titillium+Web:400,200,300,600,700,900' rel='stylesheet' type='text/css'>
	  <!--link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css"-->
	  <!-- /fonts -->
	  <!-- css files -->
	  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	  <link href="css/pricetable.css" rel="stylesheet" type="text/css" media="all" />
	  <link href="css/main.css" rel="stylesheet" type="text/css" media="all" />
	  <link href="css/pogo-slider.min.css" rel="stylesheet" type="text/css" media="all" />
	  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	  <!-- /css files -->
	  <!-- js files -->
	  <script src="js/modernizr.js"></script>
	  <!-- /js files -->
  </head>

</head>
<body>

  <section class="top-w3ls">
	  <!-- top bar -->
	  <div class="top-bar">
		  <div class="container">
			  <div class="row">
				  <div class="col-lg-7 col-md-7 top-w3ls1">
					  <p class="top-p1">Find events surrounding you</p>
				  </div>
				  <div class="col-lg-5 col-md-5 top-w3ls2">
					  <ul class="top-contacts">
						  <li class="top-hover"><p><span class="glyphicon glyphicon-envelope"></span> <a href="mailto:support@company.com">service@eventgo.com</a></p>
						  <li class="top-unhover"><p><span class="glyphicon glyphicon-phone-alt"></span> +33 665111111</p>
					  </ul>
				  </div>
			  </div>
		  </div>
	  </div>
	  <!-- /top bar -->
	  <!-- navigation -->
	  <div class="navbar-wrapper">
		  <div class="container">
			  <nav class="navbar navbar-inverse navbar-static-top">
				  <div class="container">
					  <div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							  <span class="sr-only">Toggle navigation</span>
							  <span class="icon-bar"></span>
							  <span class="icon-bar"></span>
							  <span class="icon-bar"></span>
						  </button>
						  <a class="navbar-brand" href="index.html"><h1>Event-Go</h1></a>
					  </div>
					  <div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="contact.jsp">Contact</a></li>
                            <li><a href="login.jsp">Manage</a></li>
						</ul>
					  </div>
				  </div>
			  </nav>
			  <div class="search-box">
				  <div id="sb-search" class="sb-search">
					  <form action="#" method="post">
						  <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
						  <input class="sb-search-submit" type="submit" value="">
						  <span class="sb-icon-search"> </span>
					  </form>
				  </div>
			  </div>
		  </div>
	  </div>
  </section>

<!-- contact section -->
<section class="contact-w3ls">
	<div class="container">
		<h3 class="text-center w3layouts w3 w3l w3ls agileits agileinfo wthree w3-agileits">Welcom to Event-Go</h3>
        
	<form action="LogupServlet" method="post">
      <h3>User Name:</h3> <input type="text" id="user_name" name="user_name" class="form-control"/><br><br>
      <h3>Password:</h3> <input type="password" id="password" name="password" class="form-control"/><br><br>
      <h3>User_type:</h3> <select name="user_type" class="form-control">
      				<option value="customer">customer</option>
      				<option value="manager">manager</option>
      			 </select><br><br>		   
 		
      <input id="btn" type="submit" onclick="btnck();" value="SIGN UP" />
      </form>  
	</div>
</section>
  <!-- footer section -->
  <section class="footer">
	  <a href="#myPage" title="To Top" class="top">
		  <span class="glyphicon glyphicon-chevron-up"></span>
	  </a>
	  <a href="index.html" class="logo">Event-Go</a>
	  <div class="container">
		  <div class="row">
			  <div class="col-lg-6 col-md-6 col-sm-6 footer-w3ls1">
				  <ul class="footer-links1 cl-effect-4">
					  <li><a href="about.jsp">About</a></li>
				  </ul>
			  </div>
			  <div class="col-lg-6 col-md-6 col-sm-6 footer-w3ls2">
				  <ul class="footer-links2 cl-effect-4">
					  <li><a href="contact.jsp">Contact</a></li>
				  </ul>
			  </div>
		  </div>
		  <ul class="social-icons1">
			  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			  <li><a href="#"><i class="fa fa-whatsapp"></i></a></li>
			  <li><a href="#"><i class="fa fa-youtube"></i></a></li>
		  </ul>
		  <p class="copyright">&copy; 2016 Event-Go. All rights reserved | Design by PA6 Team</a></p>
	  </div>
  </section>
  <!-- /footer section -->
<script>
function btnck(){
    var a=document.getElementById("user_name");
    var c=document.getElementById("password");
    var b=document.getElementById("btn");
    if(a.value=="" || c.value==""){
        alert("It can't be empty");}
    else{
        alert("Success");}
    }
</script>

</body>

</html>