<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MDV Online || Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-b-20">
				<form class="login100-form validate-form" action="MDVLoginServlet"
					method="post">
					<span class="login100-form-title p-b-40"> <img
						src="images/Logo.png" alt="AVATAR">
					</span> <span class="container-login100-form-btn"> Please Enter Financier DB
						Credentials </span>
					<div class="wrap-input100 validate-input m-t-40 m-b-35"
						data-validate="Enter username">
						<input class="input100" type="text" name="username"> <span
							class="focus-input100" data-placeholder="Username"></span>
					</div>
					<div class="wrap-input100 validate-input m-t-40 m-b-35"
						data-validate="Enter password">
						<input class="input100" type="password" name="pass"> <span
							class="focus-input100" data-placeholder="Password"></span>
					</div>
					<div class="wrap-input100 validate-input m-t-40 m-b-35"
						data-validate="Enter Environment">
						<input class="input100" type="text" name="environment"> <span
							class="focus-input100" data-placeholder="Environment (SIT/UAT)"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Login</button>
						<button style="visibility:hidden" >Space</button>
						<a href="Home.jsp" style="text-decoration: none" class="login100-form-btn" id="sdf">Dashboard</a>
					</div>
					<div class="container-login100-form-btn"
						style="height: 20px; color: red; margin-top: 25px;">
						<%
					    if(null !=request.getAttribute("errorMessage"))
    					{
        					out.println(request.getAttribute("errorMessage"));
    					}
						%>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>