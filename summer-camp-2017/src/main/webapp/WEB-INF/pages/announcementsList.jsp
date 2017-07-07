<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Best Announcements</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<!-- bootstrap-CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-select.css"/>">
<!-- bootstrap-select-CSS -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<!-- style.css -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/jquery-ui1.css"/>">
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
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




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
<!-- switcher-grid and list alignment -->
<script src="<c:url value="/resources/js/tabs.js"/>"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var elem = $('#container ul');
				$('#viewcontrols a').on(
						'click',
						function(e) {
							if ($(this).hasClass('gridview')) {
								elem.fadeOut(1000, function() {
									$('#container ul').removeClass('list')
											.addClass('grid');
									$('#viewcontrols').removeClass(
											'view-controls-list').addClass(
											'view-controls-grid');
									$('#viewcontrols .gridview').addClass(
											'active');
									$('#viewcontrols .listview').removeClass(
											'active');
									elem.fadeIn(1000);
								});
							} else if ($(this).hasClass('listview')) {
								elem.fadeOut(1000, function() {
									$('#container ul').removeClass('grid')
											.addClass('list');
									$('#viewcontrols').removeClass(
											'view-controls-grid').addClass(
											'view-controls-list');
									$('#viewcontrols .gridview').removeClass(
											'active');
									$('#viewcontrols .listview').addClass(
											'active');
									elem.fadeIn(1000);
								});
							}
						});
			});
</script>
<!-- //switcher-grid and list alignment -->
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<div class="agile-its-header">
				<div class="logo">
					<a href="/announcements/list"><span></span>Home</a>
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
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><span>View All Ads</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Products -->
	<div class="total-ads main-grid-border">
		<div class="container">
			<div class="ads-grid">
				<div class="agileinfo-ads-display col-md-9">
					<div class="wrapper">
						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs nav-tabs-responsive"
								role="tablist">
								<li role="presentation" class="active"><a href="#home"
									id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
									aria-expanded="true"> <span class="text">All Ads</span>
								</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home"
									aria-labelledby="home-tab">
									<div>
										<div id="container">
											<div class="view-controls-list" id="viewcontrols">
												<label>view :</label> <a class="gridview"><i
													class="glyphicon glyphicon-th"></i></a> <a
													class="listview active"><i
													class="glyphicon glyphicon-th-list"></i></a>
											</div>
											<div class="clearfix"></div>
											<ul class="list">
												<c:forEach var="announcement" items="${announcements}">
													<c:if test="${!announcement.status}">
														<a
															href="/announcements/details? 
													&id=<c:out value="${announcement.id}"/>
													&title=<c:out value="${announcement.title}"/>
													&content=<c:out value="${announcement.content}"/>
													&status=<c:out value="${announcement.status}"/>
													&createDate=<c:out value="${announcement.createDate}"/>
													&ownerEmail=<c:out value="${announcement.ownerEmail}"/>
													&ownerPhone=<c:out value="${announcement.ownerPhone}"/>
													&ownerFirstName=<c:out value="${announcement.ownerFirstName}"/>
													&ownerLastName=<c:out value="${announcement.ownerLastName}"/>
													&location=<c:out value="${announcement.location}"/>
													&categoryName=<c:out value="${announcement.categoryName}"/>">
															<li><section class="list-left">
																	<h5 class="title">
																		<c:out value="${announcement.title}" />
																	</h5>
																	<span class="name"><c:out
																			value="${announcement.ownerFirstName}" /></span> <span
																		class="name"><c:out
																			value="${announcement.ownerLastName}" /></span>
																	<p class="catpath">
																		<c:out value="${announcement.location}" />
																	</p>
																</section>
																<section class="list-right">
																	<span class="date"><c:out
																			value="${announcement.createDate}" /></span>
																</section>
																<div class="clearfix"></div></li>
														</a>
													</c:if>

												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="profile"
									aria-labelledby="profile-tab">
									<div>
										<div id="container">
											<div class="view-controls-list" id="viewcontrols">
												<label>view :</label> <a class="gridview"><i
													class="glyphicon glyphicon-th"></i></a> <a
													class="listview active"><i
													class="glyphicon glyphicon-th-list"></i></a>
											</div>
											<div class="clearfix"></div>
											<ul class="list">
												<c:forEach var="announcement" items="${announcements}">
													<a href="single.html">
														<li><section class="list-left">
																<h5 class="title">
																	<c:out value="${announcement.title}" />
																</h5>
																<span class="name"><c:out
																		value="${announcement.ownerFirstName}" /></span> <span
																	class="name"><c:out
																		value="${announcement.ownerLastName}" /></span>
																<p class="catpath">
																	<c:out value="${announcement.categoryName}" />
																</p>
															</section>
															<section class="list-right">
																<span class="date"><c:out
																		value="${announcement.createDate}" /></span> <span /></span>
															</section>
															<div class="clearfix"></div></li>
													</a>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="samsa"
									aria-labelledby="samsa-tab">

									<div id="container">
										<div class="view-controls-list" id="viewcontrols">
											<label>view :</label> <a class="gridview"><i
												class="glyphicon glyphicon-th"></i></a> <a
												class="listview active"><i
												class="glyphicon glyphicon-th-list"></i></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
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