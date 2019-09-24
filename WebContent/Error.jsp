<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="images/icons/error.ico" />
<link rel="stylesheet" type="text/css" href="css/myStyle.css">
<title>Error Page</title>

</head>

<BODY class="scrollbar"
	style="height: 90%; background-position: center; background-repeat: no-repeat; background-size: cover;">
	<%
		session.removeAttribute("username");
		session.removeAttribute("pass");
		session.removeAttribute("environment");
		session.invalidate();
	%>
	<div class=" error">
		<div align="center">
			<span class="login100-form-title p-b-40"> <img
				src="images/Logo.png" alt="AVATAR">
			</span>
		</div>
		<h1>
			<p
				style="font-size: 50px; font-family: serif; text-align: center; color: black; margin-top: 10%;">
				404 - This page does not Exist. Just like World Peace</p>
		</h1>
		<br /> <br />
		<div align="center">
			<table style="align: center">
				<tr height="50px;">
					<td width="100%"><a href="Home.jsp" style="color: black">
							Login Here</a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>