<%@page contentType="text/html" pageEncoding="UTF-8"
	errorPage="Error.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/style.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="mdvOnline.MDVAgreement"%>
<%@page import="java.util.*"%>
<%
	ArrayList<MDVAgreement> myList = new ArrayList<MDVAgreement>();
%>
<link rel="stylesheet" type="text/css" href="/css/myStyle.css">
<title>Agreement Level || Home</title>
<script type="text/javascript">
function validateAgrCode(){
	var agrCodeInput= document.getElementById("textbox");
	var numbers = /^\d+((;\d*)*)?$/;
    if(agrCodeInput.value.match(numbers))
    {
    	return true;
    }
    else
    {
		alert('Please enter only Numeric values as Agreement Code');
    return false;
    }
}

	function doFunction(d)
	{
		document.getElementById('hiddenText').value = d;
	}

	function countChars(textbox)
	{
		var count = document.getElementById(textbox).value.length;
		if (count >= 1)
		{
			document.getElementById('searchButton').disabled = false;
		}
		else
		{
			document.getElementById('searchButton').disabled = true;
		}
	}
	
	function DisplayLoadingImage(){
         document.getElementById("divWait").style.display = "block";
    }
	
</script>
</head>

<body style="background-color: ghostwhite;"
	onload="document.getElementById('searchButton').disabled=true;">
	<div id="divWait"
		style="position: fixed; left: 36%; top: 40%; display: none">
		<table style="width: 100%; margin-left: 23%; margin-top: 5%;">
			<tr>
				<td><img id='HiddenLoadingImage' src='images/PleaseWait.gif'
					style="height: 150px;" /></td>
			</tr>
		</table>
	</div>
	<header class="main-header">
		<nav class="navbar-static-top">
			<div class="navbar-main">
				<div class="container">
					<div class="navbar-header">
					</div>
					<ul class="nav navbar-nav" style="width:100%" >
					
						<li style="left: 40.5%;" ><a class="is-active" href="Home.jsp"
							style="text-align: center;font-size: 16pt;width: 100%;font-family: Dosis, sans-serif;">
								Automation Next For Data!</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div id="divHolder" style="margin-top: 0px;">
		<form action="AgrCodeServlet" method="post"
			onsubmit="return validateAgrCode()">
			<table style="width: 100%; margin-left: 0%;">
				<tr height="50px;">
					<td rowspan="2" width="23%"><a href="MDVOnlineDashboard.jsp">
							<img src="images/SmallLogo.png" alt="AVATAR">
					</a></td>
					<td width="17%"
						style="font-family: serif; color: black; font-weight: bold;">Enter
						the Agreement Code</td>
					<td width="18%"><textarea onKeyUp="countChars('textbox')"
							style="font-family: initial;"
							placeholder="For multiple Agreement codes use semiColon(;) eg: 321119864;321119865"
							id="textbox" rows="4" cols="50" name="agrCode"></textarea></td>
					<td width="15%" align="left" style="padding-left: 10px"><input
						id="searchButton" type="submit" value="Search" name="Hidden"
						style="font-family: Poppins-Medium; border-radius: 7px; color: white; cursor: pointer; background-color: cadetblue; width: 80px; height: 29px; font-size: 17px;" /></td>
					<td width="27%"></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="checkPointsId" style="">
		<form action="AgreementDetailsServlet" method="post">
			<%
				myList = (ArrayList) session.getAttribute("agrCodes");
				if (null != myList && !myList.isEmpty())
				{
			%>
			<table id="checkPointTable"
				style="background-image: url(images/Background.png); margin: 0px auto; width: 100%; border: 1px dashed;">
				<tr>
					<td
						style="font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 22%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
						<c:out value="S.No" />
					</td>
					<td
						style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 38%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
						<c:out value="Agreement Code" />
					</td>
					<td
						style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 40%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
						<c:out value="Details" />
					</td>
				</tr>
				<tr>
					<%
						for (int i = 0; i < myList.size(); i++)
							{
					%>
					<td
						style="font-weight: bold; border-top: 1px solid; padding: 4px; font-family: Lucida Sans Unicode; font-size: 13px; PADDING-LEFT: 15PX;">
						<%
							out.println(myList.get(i).getCounter());
						%>
					</td>
					<td
						style="font-weight: bold; border-top: 1px solid; padding: 4px; font-family: Lucida Sans Unicode; font-size: 13px; PADDING-LEFT: 15PX; border-left: 1px solid;">
						<%
							out.println(myList.get(i).getAgreementCode());
						%>
					</td>
					<td
						style="font-weight: bold; border-top: 1px solid; padding: 4px; font-family: Lucida Sans Unicode; font-size: 13px; PADDING-LEFT: 15PX; border-left: 1px solid;">

						<%
							if (!myList.get(i).getDetails().contains("Duplicate Agreement Code as sequence") && (!myList.get(i).getDetails().contains("Agreement Code does not exist in DB")))
									{
						%> <input id="ViewDetails" type="submit" value="Validate"
						style="font-family: Poppins-Medium; border-radius: 7px; color: white; cursor: pointer; background-color: cadetblue; width: 100px; height: 29px; font-size: 17px;"
						onclick="DisplayLoadingImage();doFunction(<%=myList.get(i).getAgreementCode()%>);" />
						<input type="hidden" name="agrCode" id="hiddenText" value="">
						<%
							}
									if (myList.get(i).getDetails().contains("Duplicate Agreement Code as sequence") || myList.get(i).getDetails().contains("Agreement Code does not exist in DB"))
									{
										out.println(myList.get(i).getDetails());
									}
						%>
					</td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				}
			%>
		</form>
	</div>
</body>
</html>