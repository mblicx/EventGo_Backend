<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
 <%
String uid = request.getParameter("uid");
String pid;

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
<head>
	  <title>EventGo backoffice | Home :: w3layouts</title>
	  <!--mobile apps-->
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <meta name="keywords" content="Terrain Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	  <script type="application/x-javascript"> 
	  addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	  function hideURLbar(){ window.scrollTo(0,1); }; 
	  function timeC(){
		    var a=document.getElementById("start_date");
		    var c=document.getElementById("end_date");
		    var d=document.getElementById("start_time");
		    var e=document.getElementById("end_time");
		    var b=document.getElementById("btn");
		    if(a.value>=c.value||d.value>=e.value)
		    {
		       	alert("End date/time can't before the start!");
		        return false;
		    }
		    return true;
		    };
		</script>
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
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.GoogleDriver"
     url="jdbc:google:mysql://eventgo-161225:europe-west1:eventgosql/eventgo"
     user="root"  password="kid1412"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT place_id,address from place;
</sql:query>

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
						  <a class="navbar-brand" href="index.jsp"><h1>Event-Go</h1></a>
					  </div>
					  <div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="contact.jsp">Contact</a></li>
                            <li class="active"><a href="<%=url%>">Manage</a></li>
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

<section class="contact-w3ls">
	<div class="container">
		<h3 class="text-center w3layouts w3 w3l w3ls agileits agileinfo wthree w3-agileits">Insert events</h3>
<form action="AddServlet" onsubmit="return timeC();" method="post" novalidate>
				<table border="1" bordercolor="#EB5425" align=center> 
					<tr>
						<td>User_id:</td><td><input type="text" name="user_id" class="form-control"
							value="<%=uid %>" style='font-size:18px' width=200 readonly/></td>
					</tr>
					<tr>
						<td>Event_name:</td><td><input type="text" name="event_name" class="form-control" required data-validation-required-message="Please enter your event name."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr> 
					<td>Place_id:</td><td><select name="place_id" style='font-size:14px' width=200 class="form-control">
					<c:forEach var="row" items="${result.rows}" > 
						<option value="${row.place_id}"><c:out value="${row.address}"/></option>						
                	</c:forEach>
					</select>
	  				</td>  
					<tr>
						<td>Start_date:</td><td><input type="date" id="start_date" name="start_date" class="form-control" required data-validation-required-message="Please enter start date."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>End_date</td><td><input type="date"  id="end_date" name="end_date" class="form-control" required data-validation-required-message="Please enter end date."
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td>Start_time:</td><td><input type="time" id="start_time" name="start_time" step="10" class="form-control" required data-validation-required-message="Please enter start time."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>End_time</td><td><input type="time" id="end_time" name="end_time" step="10" class="form-control" required data-validation-required-message="Please enter end time."
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td>State:</td><td><input type="text" name="state" value="0" class="form-control" 
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>Type_id:</td><td><input type="text" name="type_id" class="form-control" required data-validation-required-message="Please enter type id."
							style='font-size:18px' width=200/></td>
					</tr>
					<tr>
						<td>Description:</td><td><input type="text" name="description" class="form-control" required data-validation-required-message="Please enter description."
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td>Charge:</td><td><input type="text" id="charge" name="charge" class="form-control" required data-validation-required-message="Please enter charge."
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td>Image:</td><td><input type="file" name="image" accept="image/*" class="form-control"
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td>Icon:</td><td><input type="file" name="icon" accept="image/*" class="form-control"
							style='font-size:18px'/></td>
					</tr>
					<tr>
						<td colspan=2 align=center><input id="btn" type="submit" name="Submit" onclick="timeC();"
							value="ADD" style='font-size:18px' width=200/></td>
					</tr>
				</table>
				</form>
				<button type="submit" class="btn btn-primary"><a href="<%=url%>?uid=<%=uid%>">RETURN</a></button>
	</div>
</section>
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
		  <p class="copyright">&copy; 2016 Event-Go. All rights reserved | Design by PA6 Team</a></p>
	  </div>
  </section>
  <!-- /footer section -->

</body>
</html>