<%@page import="mdvOnline.MDVSeverity"%>
<%@page import="mdvOnline.MDVCheckPoint"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
	errorPage="Error.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/style.css">

<%@page import="mdvOnline.MDVAgreementCode"%>
<%@page import="mdvOnline.MDVAgreement"%>
<%@page import="java.util.*"%>

<title>Agreement Details</title>
<script type="text/javascript">
function doFunction(agrCode)
	{
		document.getElementById('hiddenText').value = agrCode;
	}
	</script>
</head>

<body>
	<div id="agrCodeId" style="margin-top: 0px; height: 20%">

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

		<form action="printServlet" method="post">
			<%
				ArrayList<MDVCheckPoint> myList = new ArrayList<MDVCheckPoint>();
				myList = (ArrayList) session.getAttribute("checkPointList");
				MDVSeverity critical = (MDVSeverity) session.getAttribute("critical");
				MDVSeverity major = (MDVSeverity) session.getAttribute("major");
				MDVSeverity minor = (MDVSeverity) session.getAttribute("minor");
				MDVSeverity totalDetails = (MDVSeverity) session.getAttribute("totalDetails");
			%>
			<table style="width: 100%; margin-left: 0%;">
				<tr height="50px;">
					<td rowspan="1" width="15%"><img src="images/SmallLogo.png"
						style="margin-left: 10px;" alt="AVATAR"></td>
					<td rowspan="1" width="30%"
						style="font-weight: bold; text-align: right">
						<table style="border: 1px dotted; width: 86%;">
							<tr>
								<td colspan="2"
									style="background-image: url(images/Background.png); font-weight: bold; /* border: 1px solid; */ text-align: center;">Account
									Summary</td>
							</tr>
							<tr>
								<td rowspan="1"
									style="width: 50%; text-align: left; font-weight: bold; /* border-left: 1px solid black; */ border-bottom: 1px solid black; padding-left: 20px;">Agreement
									Code</td>
								<td rowspan="1"
									style="width: 50%; text-align: center; border-left: 1px solid black; border-bottom: 1px solid black; padding-left: 20px;">
									<%
										out.println(request.getAttribute("agrCode"));
									%>
								</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; /* border-left: 1px solid black; */ border-bottom: 1px solid black; padding-left: 20px;">Total</td>
								<td
									style="text-align: center; border-left: 1px solid black; border-bottom: 1px solid black; padding-left: 20px;">
									<%
										out.println(totalDetails.getTotalDefects());
									%>
								</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; /* border-left: 1px solid black; */ border-bottom: 1px solid black; padding-left: 20px;">Defect
									Passed</td>
								<td
									style="text-align: center; border-left: 1px solid black; border-bottom: 1px solid black; padding-left: 20px;">
									<%
										out.println(totalDetails.getPassDefects());
									%>
								</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; /* border-left: 1px solid black;  border-bottom: 1px solid black;*/ padding-left: 20px;">Defect
									Failed</td>
								<td
									style="text-align: center; border-left: 1px solid black; /*border-bottom: 1px solid black;*/ padding-left: 20px;">
									<%
										out.println(totalDetails.getFailDefects());
									%>
								</td>
							</tr>

						</table>
					</td>
					<td width="40%">
						<table style="margin-left: 10%; width: 60%; border: 1px dotted;">
							<tr>
								<td colspan="4"
									style="background-image: url(images/Background.png); font-weight: bold; /* border: 1px solid; */ text-align: center;">Defect
									Severity</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; /* border-left: 1px solid; */ border-bottom: 1px solid;"
									width="32%"></td>
								<td
									style="text-align: center; font-weight: bold; border-left: 1px solid; border-bottom: 1px solid;"
									width="20%">Critical</td>
								<td
									style="text-align: center; font-weight: bold; border-left: 1px solid; border-bottom: 1px solid;"
									width="20%">Major</td>
								<td
									style="text-align: center; font-weight: bold; border-left: 1px solid; border-bottom: 1px solid;"
									width="20%">Minor</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; border-bottom: 1px solid black; /* border-left: 1px solid; */ padding-left: 20px;">Total</td>
								<td
									style="text-align: center; border-left: 1px solid; border-bottom: 1px solid black;">
									<%
										out.println(critical.getTotalDefects());
									%>
								</td>
								<td
									style="text-align: center; border-left: 1px solid; border-bottom: 1px solid black;">
									<%
										out.println(major.getTotalDefects());
									%>
								</td>
								<td
									style="text-align: center; border-left: 1px solid; border-bottom: 1px solid black;"
									width="33%">
									<%
										out.println(minor.getTotalDefects());
									%>
								</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; /* border-left: 1px solid black; */ border-bottom: 1px solid black; padding-left: 20px;">Passed</td>
								<td
									style="text-align: center; border-left: 1px solid black; border-bottom: 1px solid black;">
									<%
										out.println(critical.getPassDefects());
									%>
								</td>
								<td
									style="text-align: center; border-left: 1px solid black; border-bottom: 1px solid black;">
									<%
										out.println(major.getPassDefects());
									%>
								</td>
								<td
									style="text-align: center; border-left: 1px solid black; border-bottom: 1px solid black;"
									width="33%">
									<%
										out.println(minor.getPassDefects());
									%>
								</td>
							</tr>
							<tr>
								<td
									style="text-align: left; font-weight: bold; /* border-left: 1px solid black; */ padding-left: 20px;">Failed</td>
								<td style="text-align: center; border-left: 1px solid black;">
									<%
										out.println(critical.getFailDefects());
									%>
								</td>
								<td style="text-align: center; border-left: 1px solid black;">
									<%
										out.println(major.getFailDefects());
									%>
								</td>
								<td style="text-align: center; border-left: 1px solid black;"
									width="33%">
									<%
										out.println(minor.getFailDefects());
									%>
								</td>
							</tr>

						</table>
					</td>
					<%
						if (null != myList && !myList.isEmpty())
						{
					%>
					<td rowspan="1" width="15%"><input id="viewDetails"
						style="font-family: Poppins-Medium; border-radius: 7px; color: white; cursor: pointer; background-color: cadetblue; width: 25%%; height: 29px; font-size: 17px;"
						onclick="doFunction(<%=request.getAttribute("agrCode")%>);"
						type="submit" value="Print" /> <input type="hidden"
						name="agreementCode" id="hiddenText" value=""> <span
						style="color: red"> <%
 	if (null != request.getAttribute("PDFGenerated"))
 		{
 			out.println(request.getAttribute("PDFGenerated"));
 		}
 %>
					</span></td>
					<%
						}
					%>
				</tr>
			</table>
		</form>
	</div>

	<div id="checkPointsId" style="margin-top: 3%; height: 72%;">
		<form action="printServlet" method="post">
			<div style="height: 100%; overflow: auto;">
				<%
					if (null != myList && !myList.isEmpty())
					{
				%>
				<table id="checkPointTable"
					style="background-image: url(images/Background.png); margin: 0px auto; width: 100%; border: 1px dashed;">

					<tr>
						<td
							style="font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 6%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
							<c:out value="Defect ID" />
						</td>
						<td
							style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 80%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
							<c:out value="Description" />
						</td>
						<td
							style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 7%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
							<c:out value="Severity" />
						</td>
						<td
							style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 7%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
							<c:out value="Outcome" />
						</td>
					</tr>
					<tr>
						<%
							for (int i = 0; i < myList.size(); i++)
								{
						%>
						<td
							style="padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid; border-left: 1px solid;">
							<%
								out.println(myList.get(i).getDefectID());
							%>
						</td>
						<td
							style="padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid; border-left: 1px solid;">
							<%
								out.println(myList.get(i).getDescriptionDetail());
							%>
						</td>
						<td
							style="padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid; border-left: 1px solid;">
							<%
								out.println(myList.get(i).getDefectPriority());
							%>
						</td>
						<td
							style="padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid; border-left: 1px solid;">
							<%
								out.println(myList.get(i).getCheckPointValue());
							%>
						</td>

					</tr>
					<%
						}
					%>
				</table>
			</div>
			<%
				}
				else
				{
			%>
			<p
				style="font-size: 50px; font-family: serif; text-align: center; color: Red; margin-top: 10%;">
				No Records found</p>
			<%
				}
			%>
		</form>
	</div>
</body>
</html>