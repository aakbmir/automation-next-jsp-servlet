<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>Automation Next For Data|| Dashboard</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="assets/js/modernizr-2.6.2.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')
</script>
<script type="text/javascript">
	function removeSessionAttributes() {
<%session.removeAttribute("fileLists");
			session.removeAttribute("AccountOrderDetailsList");
			session.removeAttribute("errorAddingKeyword");
			session.removeAttribute("keywordAddedSuccess");
			session.removeAttribute("keywordAddedFailure");%>
	}
</script>
</head>

<body class="">
	<header class="main-header">
		<nav class="navbar-static-top">
			<div class="navbar-main">
				<div class="container">
					<div class="navbar-header"></div>
					<ul class="nav navbar-nav" style="width: 100%">

						<li style="left: 40.5%;"><a class="is-active"
							href="Home.jsp"
							style="text-align: center; font-size: 16pt; width: 100%; font-family: Dosis, sans-serif;">
								Automation Next For Data!</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<form action="AboutServlet" method="post">
		<div id="homeCarousel" class="carousel slide carousel-home"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#homeCarousel" data-slide-to="1"></li>
				<li data-target="#homeCarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="assets/images/3a.jpg" alt="">
					<div class="container">
						<div class="carousel-caption">
							<h2 class="carousel-title bounceInDown animated slow">
								<p
									style="font-family: serif; color: azure; text-transform: initial;">
									Everything that You need,</p>
								<p
									style="font-family: serif; color: azure; text-transform: initial;">You
									get here!</p>
							</h2>

						</div>
					</div>
				</div>

				<div class="item ">
					<img src="assets/images/2.jpg" alt="">
					<div class="container">
						<div class="carousel-caption">
							<h2 class="carousel-title bounceInDown animated slow"
								style="font-family: serif; text-transform: initial;">Migrated
								Data Validation</h2>
							<h4 class="carousel-subtitle bounceInUp animated slow"
								style="font-family: serif; text-transform: initial;">let's
								do it online!</h4>
							<input id="searchButton" type="submit" value="Read More"
								name="MDV"
								class="btn btn-lg btn-secondary hidden-xs bounceInUp animated slow" />
						</div>
					</div>
				</div>

				<div class="item ">
					<img src="assets/images/3.jpg" alt="">
					<div class="container">
						<div class="carousel-caption">
							<h2 class="carousel-title bounceInDown animated slow"
								style="font-family: serif; text-transform: initial;">Migrated
								Data Traceability</h2>
							<h4 class="carousel-subtitle bounceInUp animated slow"
								style="font-family: serif; text-transform: initial;">Fast
								track and Efficient!</h4>
							<input id="searchButton" type="submit" value="Read More"
								name="MDT"
								class="btn btn-lg btn-secondary hidden-xs bounceInUp animated slow" />

						</div>
					</div>
				</div>

			</div>

			<a class="left carousel-control" href="#homeCarousel" role="button"
				data-slide="prev"> <span class="fa fa-angle-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#homeCarousel" role="button"
				data-slide="next"> <span class="fa fa-angle-right"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>

		</div>
	</form>
	<div class="wrapper row2">
		<section class="hoc container clear">
			<div class="sectiontitle" style="margin-top: 25px">
				<h6 class="heading">Select The application to run</h6>
				<p>Please read the pre-conditions before proceeding</p>
			</div>
			<ul class="nospace group services">
				<li class="one_quarter first" style="width: 20%; margin-left: 17%;">
					<article>
						<a href="MDVOnlineLogin.jsp"><i class="fa fa-3x fa-pie-chart"></i></a>
						<h6 class="heading font-x1">
							<a href="MDVOnlineLogin.jsp">Migrated data validation</a>
						</h6>
						<p>Online</p>
					</article>
				</li>

				<li class="one_quarter" style="width: 20%">
					<article>
						<a href="MDVOfflineDashboard.jsp"><i class="fa fa-3x fa-cogs"></i></a>
						<h6 class="heading font-x1">
							<a href="MDVOfflineDashboard.jsp">Migrated data validation</a>
						</h6>
						<p>Offline</p>
					</article>
				</li>

				<li class="one_quarter" style="width: 20%">
					<article>
						<a href="MDTOnlineLogin.jsp"><i class="fa fa-3x fa-database"></i></a>
						<h6 class="heading font-x1">
							<a href="MDTOnlineLogin.jsp">Migrated Data Traceability</a>
						</h6>
						<p>Online</p>
					</article>
				</li>

			</ul>



			<div class="clear"></div>
		</section>
	</div>

	<!-- Bootsrap javascript file -->
	<script src="assets/js/bootstrap.min.js"></script>

</body>
</html>