<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Accounts Tracking || Login</title>
</head>
<body
	style="background-image: url(images/BGimage1.jpg); background-position: center;">
	<form action="MDTLoginServlet" method="post">
		<div style="top: 10%; position: absolute; left: 44%;">

			<span> <img src="images/MatOnlineLogo.jpg" alt="EMT Image"
				style="border-radius: 20px;" />
			</span>
		</div>
		<div>
			<div
				style="width: 30%; position: absolute; right: 32%; top: 55%; background-color: cadetblue; height: 32%; border-radius: 20px;">
				<table
					style="width: 90%; position: absolute; margin-left: 9%; height: 100%; margin-top: 10px">
					<tr style="height: 10%">
						<td style="width: 30%;"><label
							style="font-size: 20px; font-family: serif; color: white;">
								User Id </label></td>
						<td style="width: 55%;"><input type="text" name="userId"
							id="userId"
							style="width: 90%; line-height: 22px; font-size: 15px; border-radius: 10px;" /></td>
						<td style="width: 15%">
							<%
								if (null != request.getAttribute("errorMessage"))
								{
							%> <img src="images/ErrorImage.jpg" alt="EMT Image"
							style="height: 22px; border-radius: 15px;" /> <%
 	}
 %>
						</td>
					</tr>
					<tr style="height: 10%">
						<td style="width: 30%;"><label
							style="font-size: 20px; font-family: serif; color: white;">Password</label>
						</td>
						<td style="width: 55%;"><input type="password" name="pswrd"
							id="pswrd"
							style="width: 90%; line-height: 22px; font-size: 15px; border-radius: 10px;" /></td>
						<td style="width: 10%">
							<%
								if (null != request.getAttribute("errorMessage"))
								{
							%> <img src="images/ErrorImage.jpg" alt="EMT Image"
							style="height: 22px; border-radius: 15px;" /> <%
 	}
 %>
						</td>
					</tr>
					<tr style="height: 15%">
						<td style="width: 30%;"><label
							style="font-size: 20px; font-family: serif; color: white;">Env</label>
						</td>
						<td style="width: 55%;"><select name="env"
							style="width: 90%; height: 27px; font-size: 15px; border-radius: 10px;">
								<option>PIPE-D</option>
								<option>PIPE-C</option>
								<option>POC</option>
						</select>
						<td style="width: 15%">
							<%
								if (null != request.getAttribute("errorMessage"))
								{
							%> <%
 	}
 %>
						</td>
					</tr>
					<tr style="height: 10%">
						<td colspan="2">
							<table style="width: 100%">
								<tr>
									<td style="width: 50%"><a href="Home.jsp" style="border: none; cursor: pointer; background-color: cadetblue; color: white; font-family: serif; outline: none; font-size: 25px; text-decoration:none;padding: 3px; border-radius: 22px; width: 50%;">Dashboard</a></td>
									<td colspan="1" style="width: 50%;"><input type="submit"
										name="myButton" id="myButton"
										style="border: none; cursor: pointer; background-color: cadetblue; color: white; font-family: serif; outline: none; font-size: 25px; padding: 3px; border-radius: 22px; width: 50%;"
										value="Login">
										<%
								 		if (null != request.getAttribute("errorMessage"))
 											{
 										%>
										<p
											style="width: 250px; color: red; font-size: 22px; font-family: serif; position: absolute;">Invalid
											credential.</p> 
											<%} %></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
</html>