<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<title>Details About the Annnoucement</title>

<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/commentbox.css"/>"
	rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- bootstrap-CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-select.css"/>">
<!-- bootstrap-select-CSS -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<!-- style.css -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.min.css"/>" />
<!-- fontawesome-CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/menu_sideslide.css"/>"
	type="text/css" media="all">
<!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("
	load", function() { setTimeout(hideURLbar, 0); }, false); functionhideURLbar(){ window.scrollTo(0,1); } 





</script>
<!-- //meta tags -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- js -->
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-select.js"/>"></script>
<script>
	$(document).ready(function() {
		var mySelect = $('#first-disabled2');

		$('#special').on('click', function() {
			mySelect.find('option:selected').prop('disabled', true);
			mySelect.selectpicker('refresh');
		});

		$('#special2').on('click', function() {
			mySelect.find('option:disabled').prop('disabled', false);
			mySelect.selectpicker('refresh');
		});

		$('#basic2').selectpicker({
			liveSearch : true,
			maxOptions : 1
		});
	});
</script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/flexslider.css"/>" media="screen" />
<!-- flexslider css -->
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<h1>
						<a href="/announcements/list">Home</a>
					</h1>
				</div>
				<div class="agileits_search">
					<a class="post-w3layouts-ad" href="/announcements/saveForm">Post
						Free Ad</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!--single-page-->
	<div class="single-page main-grid-border">
		<div class="container">
			<div class="product-desc">
				<div class="col-md-6 product-view">
					<h2></h2>
					<p>
						<i class="glyphicon glyphicon-map-marker"></i>
						<c:out value="${location}" />
						|
						<c:out value="${createDate}" />
						,
						<c:out value="${id}" />
					</p>
					<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								controlNav : "thumbnails"
							});
						});
					</script>
					<!-- //FlexSlider -->
					<div class="product-details">
						<h4>
							<span class="w3layouts-agileinfo">Title </span> :
							<c:out value="${title}" />
							<div class="clearfix"></div>
						</h4>
						<h4>
							<span class="w3layouts-agileinfo">Summary</span> :
							<p>
								<c:out value="${content}" />
							</p>
							<div class="clearfix"></div>
						</h4>

					</div>
				</div>
				<div class="col-md-5 product-details-grid">
					<div class="item-price">
						<div class="product-price">
							<p class="p-price">Category :</p>
							<h3 class="rate">
								<c:out value="${categoryName}" />
							</h3>
							<div class="clearfix"></div>
						</div>
						<div class="condition">
							<p class="p-price">Sold By :</p>
							<c:out value="${ownerFirstName}" />
							<c:out value="${ownerLastName}" />
							<div class="clearfix"></div>
						</div>
						<div class="condition">
							<p class="p-price">Status :</p>
							<c:out value="${status}" />
							<div class="clearfix"></div>
						</div>

					</div>
					<div class="interested text-center">
						<h4>
							Interested in this Ad?<small> Contact the Seller!</small>
						</h4>
						<p>
							<i class="glyphicon glyphicon-earphone"></i>
							<c:out value="${ownerPhone}" />
						</p>
						<p>
							<i class="glyphicon glyphicon-envelope"></i>
							<c:out value="${ownerEmail}" />
						</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//single-page-->
	<footer>
		<div class="container">
			<!-------Wrap------------>
			<div id="wrap">
				<div id="main">
					<div class="row">
						<div class="col-md-5">
							<h3 class="heading">Comments and Responses</h3>
						</div>
					</div>
				</div>

				<!------------Form Start---------->

				<div id='form'>
					<div class="row">
						<div class="col-md-12">

							<form action="/comments/submit" method="POST" id="commentform">

								<div id="comment-name" class="form-row">
									<input type="text" placeholder="Name (required)" name="dname"
										id="name">
								</div>
								<div id="comment-message" class="form-row">
									<textarea name="comment" placeholder="Message" id="comment"></textarea>

									<input type='hidden' name='announcementId' id='articleid'
										value='<c:out value="${id}"/>' />
								</div>
								<input type="submit" name="dsubmit" id="commentSubmit"
									value="Submit Comment">
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<a class="btn btn-primary" href="/comments/list">Show Comments<span
				class="glyphicon glyphicon-chevron-right"></span>
			</a> <br /> <br />


			<c:forEach var="X" items="${comments}">
				<c:set var="node" value="${X}" scope="request" />
				<jsp:include page="commentInside.jsp" />
			</c:forEach>
		</div>
	</footer>
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
			containerID: '
										toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
			easingType: 'linear' 
			};
		 */

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript"
	src="<c:url value="/resources/js/move-top.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/easing.js"/>"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- //here ends scrolling icon -->
</html>