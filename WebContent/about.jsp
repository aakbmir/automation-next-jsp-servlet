<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>About</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<script src="assets/js/modernizr-2.6.2.min.js"></script>
</head>

<body style="background-color: gainsboro">
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
	<div style="background-color: gainsboro; padding: 10px"></div>
	<div class="main-container">
		<div class="container">
			<%
				if (request.getAttribute("ID").equals("MDV")) {
			%>
			<div class="row fadeIn animated">
				<div>
					<h2 class="title-style-2" style="text-align: center">Migrated
						Data Validation</h2>
					<div class="col-md-6">
						<img src="assets/images/2.jpg" style="height: 0%; margin-top: 3%"
							alt="" class="img-responsive">
					</div>
					<div class="col-md-6" style="margin-top: 15px;">
						<p>Whether we are migrating from legacy systems to a new
							system, from one vendor's software to another's, or from
							on-premises to the cloud, Data Migration has become one of the
							most challenging initiatives in an IT industry. Data Migration
							happens for an assortment of reasons including server or capacity
							gear substitutions, maintenance or upgrades, application
							migration, website consolidation, disaster recovery, or data
							center relocation. One problem they all tend to involve is a high
							level of risk due to the volume and criticality of the data.</p>

						<p>The Migrated Data Validation(MDV) tool is an automated tool
							that enables the client to check the health of the data migrated
							between different environments. The tool validates the migrated
							data in the target environment by executing SQL queries created
							and saved in Database. The tool also provides the graphical
							representation of the quantitative analysis which has been
							performed on migrated data. E.g. Number of accounts migrated in
							different target environments, Sanity Test Report and Defects Fix
							Ratio. Apart from providing the high-level bird's eye view, the
							tool also empowers the client to discover and validate the
							strength and health of individual accounts too. This tool can be
							leveraged in various testing environments where the testing is
							performed on the migrated data.</p>

						<p>There are two versions of the tool. MDV online and MDV
							offline. Both these tools are very easy to understand and use.
							The MDV online version has user interaction and shows graphical
							representation of the overall accounts migrated along with the
							other details. The details of the accounts can be exported to a
							pdf file for references. The offline version has minimum user
							interaction as it reads the necessary details from a text file
							and generates an excel sheet as final output with the necessary
							details.</p>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<%
				}
			%>


			<%
				if (request.getAttribute("ID").equals("MDT")) {
			%>

			<div class="row fadeIn animated">
				<div>
					<h2 class="title-style-2" style="text-align: center">Migrated
						Data Traceability</h2>
					<div class="col-md-6">
						<img src="assets/images/3.jpg" style="height: 0%; margin-top: 3%"
							alt="" class="img-responsive">
					</div>
					<div class="col-md-6" style="margin-top: 15px;">
						<p>Successful data migration is one of the critical success
							factor for any transformation program. Whether we are migrating
							from legacy systems to a new system, from one vendor's software
							to another's, or from on-premises to the cloud, Data Migration
							has become one of the most challenging initiatives in an IT
							industry. Data Migration happens for an assortment of reasons
							including server or capacity gear substitutions, maintenance or
							upgrades, application migration, website consolidation, disaster
							recovery, or data center relocation. One problem they all tend to
							involve is a high level of risk due to the volume and criticality
							of the data.</p>

						<p>Migrated Data Traceability tool captures the migrated data
							in various stages involved in migration and provide details to
							client to validate the data and check for any discrepancies
							happened while migration. This tool processes queries stored in
							database for an input provided and as an output, a record is
							generated which contains the relevant data from all the various
							stages of the mentioned parameters. Moreover, it tells user at
							what stage divergence has occurred so that they can check the
							root cause for the variation occurred.</p>

						<p>This tool is a web-based application which is user friendly
							and easy to understand. As an output, an excel file is generated
							with different tabs of data and in a single sheet data is present
							of 5 different stages. Section 3 covers the UI navigation and the
							analysis of output generated.</p>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>
