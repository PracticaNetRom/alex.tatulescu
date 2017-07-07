<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Post Ad</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" ><!-- bootstrap-CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-select.css" />" ><!-- bootstrap-select-CSS -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />" ><!-- fontawesome-CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/menu_sideslide.css"/>" type="text/css" media="all"><!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-select.js"/>"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
</script>
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					 <a href = "/announcements/list">Home</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><span>Post your Ad</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Post an Ad</h2>
			<div class="post-ad-form">
				<form method = "post" action = "/announcement/save">
					<label>Select Category <span>*</span></label>
					<select name = "category">
					  <option>Select Category</option>
					  <option value = "Mobiles">Mobiles</option>
					  <option value = "Electronics and Appliances">Electronics and Appliances</option>
					  <option value = "Cars">Cars</option>
					  <option value = "Bikes">Bikes</option>
					  <option value = "Furniture">Furniture</option>
					  <option value = "Pets">Pets</option>
					  <option value = "Books, Sports and hobbies">Books, Sports and hobbies</option>
					  <option value = "Fashion">Fashion</option>
					  <option value = "Kids">Kids</option>
					  <option value = "Services">Services</option>
					  <option value = "Real, Estate">Real, Estate</option>
					</select>
					<div class="clearfix"></div>
					<label>Ad Title <span>*</span></label>
					<input name="title" type="text" class="phone">
					<div class="clearfix"></div>
					<label>Ad Description <span>*</span></label>
					<textarea name="content" class="mess" placeholder="Write few lines about your product"></textarea>
					<div class="clearfix"></div>
					<div class="personal-details">
						<label>Your First Name <span>*</span></label>
						<input name="firstName" type="text" class="name">
						<div class="clearfix"></div>
						<label>Your Last Name <span>*</span></label>
						<input name="lastName" type="text" class="name">
						<div class="clearfix"></div>
						<label>Your Mobile No <span>*</span></label>
						<input name="phone" type="text" class="phone">
						<div class="clearfix"></div>
						<label>Your Email Address<span>*</span></label>
						<input name="email" type="text" class="email">
						<div class="clearfix"></div>
						<label>Select Location <span>*</span></label>
						<select name="location">
					  		<option>Select Location</option>
					  		<option value="Craiova">Craiova</option>
					  		<option value="Bucuresti">Bucuresti</option>
					  		<option value="Cluj">Cluj</option>
					  		<option value="Arad">Arad</option>
					  		<option value="Timisoara">Timisoara</option>
					  		<option value="Constanta">Constanta</option>
					  		<option value="Iasi">Iasi</option>
					  		<option value="Valcea">Valcea</option>
					  		<option value="Targu Jiu">Targu Jiu</option>
					  		<option value="Sibiu">Sibiu</option>
					  		<option value="Brasov">Brasov</option>
						</select>
						<div class="clearfix"></div>
						<label>Confirmation code <span>*</span></label>
						<input name="confirmationCode" type="text" class="name">
						<div class="clearfix"></div>
					<input type="submit" value="Post">					
					<div class="clearfix"></div>
					</div>
					</form>
					</div>
			</div>
		</div>	
	<!-- // Submit Ad -->
</body>
		<!-- Navigation-JavaScript -->
			<script src="<c:url value="/resources/js/classie.js"/>"></script>
			<script src="<c:url value="/resources/js/main.js"/>"></script>
		<!-- //Navigation-JavaScript -->
		<!-- here stars scrolling icon -->
			<script type="text/javascript">
				$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
						};
					*/
										
					$().UItoTop({ easingType: 'easeOutQuart' });
										
					});
			</script>
			<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="<c:url value="/resources/js/move-top.js"/>"></script>
			<script type="text/javascript" src="<c:url value="/resources/js/easing.js"/>"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
			<!-- start-smoth-scrolling -->
		<!-- //here ends scrolling icon -->
</html>