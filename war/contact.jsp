<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>Event-Go | Contact :: w3layouts</title>
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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<section class="top-w3ls">
	<!-- top bar -->
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-7 top-w3ls1">
				  <p class="top-p1">Find events surrounding you </p>
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
						<a class="navbar-brand" href="index.jsp"><h1>Event-Go</h1></a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">Home</a></li>
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
<!-- /navigation -->
<!-- inner pages banner section -->
<section class="banner-inner">
	
</section>
<!-- /inner pages banner section -->
<!-- inner headers -->
<section class="inner-header">
    <div class="container">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Contact Us</h2>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
	</div>
</section>
<!-- /inner headers -->    
<!-- map -->
<div class="map">
	<iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120" style="border:0" allowfullscreen></iframe>
</div>
<!-- /map -->
<!-- contact section -->
<section class="contact-w3ls">
	<div class="container">
		<h3 class="text-center w3layouts w3 w3l w3ls agileits agileinfo wthree w3-agileits">Write To Us</h3>
		<div class="row">
			<form action="#" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Full Name:</label>
                            <input type="text" class="form-control" name="name" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Phone Number:</label>
                            <input type="tel" class="form-control" name="phone" id="phone" required data-validation-required-message="Please enter your phone number.">
							<p class="help-block"></p>
						</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Email Address:</label>
                            <input type="email" class="form-control" name="email" id="email" required data-validation-required-message="Please enter your email address.">
							<p class="help-block"></p>
						</div>
                    </div>
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Subject:</label>
                            <input type="text" class="form-control" name="subject" id="subject" required data-validation-required-message="Please enter Subject.">
                            <p class="help-block"></p>
                        </div>
                    </div>
				</div>
				<div class="col-lg-12">	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Message:</label>
                            <textarea rows="10" cols="100" class="form-control" name="message" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
							<p class="help-block"></p>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Send Message</button>
				</div>	
            </form>            
        </div>	
		<div class="row contact-row">
			<div class="col-md-4 contact-grid1-left">
				<div class="contact-grid1-left1">
					<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					<h4>Contact By Email</h4>
					<p>If you have any questions don't hesitate to contact us!</p>
					<ul>
						<li>Mail1: <a href="mailto:info@example.com">contact1@eventgo.com</a></li>
						<li>Mail2: <a href="mailto:info@example.com">contact2@eventgo.com</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 contact-grid1-left">
				<div class="contact-grid1-left1">
					<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
					<h4>Contact By Phone</h4>
					<p>If you have any questions don't hesitate to contact us!</p>
					<ul>
						<li>Phone: +33 665111111</li>
						<li>Fax:+33 665111111</li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 contact-grid1-left">
				<div class="contact-grid1-left1">
					<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
					<h4>Looking For Address</h4>
					<p>If you have any questions don't hesitate to contact us!</p>
					<ul>
						<li>Address: 30-32 Avenue de la Republique</li>
						<li>Villejuif, France.</li>
					</ul>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>	
</section>			
<!-- /contact section -->
<!-- footer section -->
<section class="footer">
	<a href="#myPage" title="To Top" class="top">
		<span class="glyphicon glyphicon-chevron-up"></span>
	</a>
	<a href="index.jsp" class="logo">Event-Go</a>
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
		<p class="copyright">&copy; 2017 Event-Go. All rights reserved | Design by PA6 Team</p>
	</div>
</section>
<!-- /footer section -->
<!-- back to top -->
<a href="#0" class="cd-top">Top</a>
<!-- /back to top -->
<!-- js files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<!-- js for back to top -->
<script src="js/top.js"></script>
<!-- /js for back to top -->
<!-- contact form -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>	
<!-- /contact form -->		
<!-- scroll to top -->
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $("section.footer a[href='#myPage']").on('click', function(event) {

   // Make sure this.hash has a value before overriding default behavior
  if (this.hash !== "") {

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){

      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
      });
    } // End if
  });
})
</script>
<!-- /scroll to top -->
<!-- js for pricing table -->
<script src="js/pricetable.js"></script>
<!-- /js for pricing table -->
<!-- js for info -->
<script src="js/wmBox.js"></script>
<script src="js/info.js"></script>
<!-- /js for info -->
<!-- js for search button -->
<script src="js/classie.js"></script>
<script src="js/uisearch.js"></script>
<script>
	new UISearch( document.getElementById( 'sb-search' ) );
</script>
<!-- /js for search button -->
<!-- js for banner files -->
<script src="js/jquery.pogo-slider.min.js"></script>
<script src="js/main.js"></script>
<!-- /js for banner files -->
<!-- js for pricing table pop up -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
		});
	});
</script>
<!-- /js for pricing table pop up -->

<!-- /js files -->
</body>
</html>