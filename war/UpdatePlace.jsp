<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
 <%
String pid = request.getParameter("pid");
 String uid = request.getParameter("uid");
 String url="";
 String url1="ManageEvents.jsp?uid=";
 String url2="ShowEvent.jsp?uid=";
 if(uid.equals("1")){
	 url=url1+uid;
 }else{
	 url=url2+uid;
 }
%>
<html>
<head>

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
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="contact.jsp">Contact</a></li>
                            <li><a href="<%=url%>">Manage</a></li>
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
  
	  <title>EventGo backoffice | Home :: w3layouts</title>
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
<body>

<section class="contact-w3ls">
	<div class="container">
		<h3 class="text-center w3layouts w3 w3l w3ls agileits agileinfo wthree w3-agileits">Update place</h3>
<form action="UpdatePlaceServlet" method="post">	
				<table border="2" bordercolor="#EB5425" align=center> 
	
					<tr>
						<td>Place_id:</td><td><input type="text" name="place_id" class="form-control"
							value="<%=pid %>" style='font-size:18px' width=200 readonly"/></td>
					</tr>
					<tr>
						<td>Coordinates_y:</td><td><input type="text" name="coordinates_y" class="form-control" required data-validation-required-message="Please enter your event name."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>Coordinates_x:</td><td><input type="text" name="coordinates_x" class="form-control" required data-validation-required-message="Please enter start date."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>Postcode:</td><td><input type="text" name="postcode" class="form-control" required data-validation-required-message="Please enter end date."
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td>Address:</td><td><input type="text" name="address" step="10" class="form-control" required data-validation-required-message="Please enter start time."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>Manager_id:</td><td><input type="text" name="user_id" step="10" class="form-control" required data-validation-required-message="Please enter start time."
							value="<%=uid %>" style='font-size:18px' width=200/></td>
					</tr>
					
					<tr>
					
						<td colspan=2 align=center><input type="submit" name="Submit" 
							value="UPDATE" style='font-size:18px' width=200/></td>
					</tr>
				</table>
				</form>
				
				<button type="submit" class="btn btn-primary"><a href="<%=url%>">RETURN</a></button>
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

</body>
</html>