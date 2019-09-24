<%@page contentType="text/html" pageEncoding="UTF-8"
	errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="/css/myStyle.css">
<%@page import="mdvOnline.MDVSanityTest"%>
<%@page import="mdvOnline.MDVDashboardData"%>
<%@page import="java.util.*"%>
<title>MDV || Dashboard</title>
<script type="text/javascript">
	
	function hello(){
	<% 
	session.removeAttribute("agrCodes");
	%>
	}
	function showPopup(id)
	{
	/* document.getElementById('TopLeftHeader').style.display = "none"; */
	document.getElementById('TopRightHeader').style.display = "none";
	document.getElementById('BottomLeftHeader').style.display = "none";
	document.getElementById('BottomRightHeader').style.display = "none";
	document.getElementById('compliancePopUp').style.display = "none";
	document.getElementById('sanityPopup').style.display = "none";
	if(id=="CompliancePiechart")
	{
		document.getElementById('compliancePopUp').style.display = "block";
	}
	if(id=="SanityPiechart")
	{
	document.getElementById('sanityPopup').style.display = "block";
	}
	
	}

	function hidePopup()
	{
	document.getElementById('compliancePopUp').style.display = "none";
	document.getElementById('sanityPopup').style.display = "none";
	/* document.getElementById('TopLeftHeader').style.display = "block"; */
	document.getElementById('TopRightHeader').style.display = "block";
	document.getElementById('BottomLeftHeader').style.display = "block";
	document.getElementById('BottomRightHeader').style.display = "block";
	}
	
</script>
<style>
html, body {
	height: 90%;
}

#tableContainer-1 {
	position: fixed;
	margin-top: 5%;
	margin-left: 38%;
	height: 80%;
	width: 85%;
	display: table;
}

#tableContainer-2 {
	vertical-align: middle;
	display: table-cell;
	height: 100%;
}

#myTable {
	margin: 0 auto;
}
</style>
</head>
<body style="background-color: ghostwhite;">
	<form action="AgrCodeServlet" method="post">
		<%
			ArrayList<MDVSanityTest> myList = new ArrayList<MDVSanityTest>();
			myList = (ArrayList) session.getAttribute("sanityTestList");
			ArrayList<MDVDashboardData> dashboardDetailsList = new ArrayList<MDVDashboardData>();
			dashboardDetailsList = (ArrayList) session.getAttribute("dashboardDetailsList");
			
			
		%>
		<!-- <div id="TopHeader"
			style="margin-top: 0px;width: 100%;position: fixed;height: 5%;background-color: cadetblue;">
			<table style="width: 100%; margin-left: 0%;">
				<tr height="50px;">
					<td width="70%" style="color: black; font-weight: bold;">Welcome
						to Data Migration Dashboard</td>
				</tr>
			</table>
		</div> -->
		<div id="compliancePopUp" style="left: 13%;width: 80%;height: 96%;background-color: ghostwhite;position: fixed;display:none">
		<div style=" overflow-y: auto;height: 90%;">
		<%if(dashboardDetailsList != null && !dashboardDetailsList.isEmpty())
		{
		 %>
		<table id="checkPointTable"
				style="background-color: white; /* background-image: url(images/Background.png); */ /* margin: 0px auto; */ width: 100%; /* border: 1px solid; */ height: 80%;">
				
				<tr>
					<td
						style="border-left: 1px solid;  font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 20%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Defect ID" />
					</td>
					<td
						style="border-left: 1px solid;  font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 20%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Migrated Accounts" />
					</td>
					<td
						style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 20%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Impacted Accounts" />
					</td>
					<td
						style="border-left: 1px solid;  font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 20%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Compliance %" />
					</td>
					<td
						style="border-left: 1px solid; font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 20%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Priority" />
					</td>

				</tr>

				<tr>
					<%
						for (int i = 0; i < dashboardDetailsList.size(); i++)
						{
					%>
					<td
						style="border-radius: 10px; background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">


						<% 
							out.println(dashboardDetailsList.get(i).getDefectID());
						%>
					</td>

					<td
						style="border-radius: 10px; background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">
						<%
							out.println(dashboardDetailsList.get(i).getMigratedAccounts());
						%>
					</td>
					<td
						style="background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green; border-radius: 10px;">
						<%
							out.println(dashboardDetailsList.get(i).getImpactedAccounts());
						%>
					</td>
					<td
						style="border-radius: 10px; background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">


						<% 
							out.println(dashboardDetailsList.get(i).getCompliance());
						%>
					</td>

					<td
						style="border-radius: 10px; background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">
						<%
							out.println(dashboardDetailsList.get(i).getPriority());
						%>
					</td>
					
				</tr>
				<%
					}
				%>
			</table>
			<%} %>
		</div>
		<table style="width:100%" ><tr><td style="width:100%;text-align:center" ><a href="#" style="text-decoration:none" onclick="hidePopup();" >Close</a></td> </tr> </table>
		</div>
		<div id="LeftHeader"
			style="margin-top: -1%;left: 0%;height: 100%;width: 6%;position: fixed;background-color: cadetblue;">
			<table style="width:100%" >
			
			<tr style="text-align: center;height: 70px;font-size: larger;color: white;" >
					<td style="border-bottom: 1px solid white;" >
					Dashboard
					</td>
				</tr>
				<tr>
					<td>
					<a href="Home.jsp">
					<img id="piechart" src="images/Home.png" alt="AVATAR" style="margin-left: 26%;width: 40px;margin-top: 10px;" title="Home" ></a>
					</td>
				</tr>
				<tr>
					<td>
					<img  onclick="showPopup(this.id);" title="Complaince Report" id="CompliancePiechart" src="images/Compliance.png" alt="AVATAR" style="cursor: pointer;width: 40px;margin-left: 28%;margin-top: 25%;height: 40px;" >
					</td>
				</tr>
				<tr>
					<td>
					<img  onclick="showPopup(this.id);"
						id="SanityPiechart" title="Sanity Report" src="images/Sanity.png" alt="AVATAR" style="cursor: pointer;margin-top: 25%;width: 40px;margin-left: 23%;height: 40px;" >
					
					</td>
				</tr>
				<tr>
					<td>
					<a href="MDVOnlineAgreement.jsp" >
					<img
						id="AccountScreen" title="Account Level Summary" onclick="hello();" src="images/Account.png" alt="AVATAR" style="cursor: pointer;margin-top: 25%;width: 40px;margin-left: 23%;height: 40px;" ></a>
					
					</td>
				</tr>
				
			</table>

		</div>

		<!-- <div id="TopLeftHeader"
			style="left: 7%;height: 48%;width: 46%;position: fixed;background-color: white;top: 1%;">


			<table id="myTable"
				style="text-align: center; /* border: 1px dotted; */ width: 6%; margin-left: 6%;margin-top:25px;">
				<tr height="50px;">
					<td rowspan="2" width="100%" style="text-align: center;"><img 
						 src="images/PieChart.png" alt="AVATAR"></td>

				</tr>
			</table>
		</div> -->

		<div id="TopRightHeader"
			style="left: 26.5%;height: 48%;width: 46%;position: fixed;background-color: white;top: 1%;">


			<table id="myTable"
				style="text-align: center; /* border: 1px dotted; */ width: 6%; margin-left: 8%;margin-top:25px;">
				<tr height="50px;">
					<td rowspan="2" width="100%" style="text-align: center;"><img
						src="images/BarChart.png" id="barchart" alt="AVATAR"></td>

				</tr>
			</table>
		</div>

		<div id="BottomLeftHeader"
			style="left: 7%;height: 49%;width: 46%;position: fixed;background-color: white;top: 50%;">

			<table id="myTable"
				style="text-align: center; /* border: 1px dotted; */ width: 6%; margin-left: 6%;margin-top:25px;">
				<tr height="50px;">
					<td rowspan="2" width="100%" style="text-align: center;"><img
						id="piechart" src="images/PieChart.png" alt="AVATAR"></td>

				</tr>
			</table>
		</div>

		<div id="BottomRightHeader"
			style="left: 53.5%;height: 49%;width: 46%;position: fixed;background-color: white;top: 50%;">
			
			<table id="myTable"
				style="text-align: center; /* border: 1px dotted; */ width: 6%; margin-left: 8%;margin-top:25px;">
				<tr height="50px;">
					<td rowspan="2" width="100%" style="text-align: center;"><img  src="images/SanityPieChart.png" alt="AVATAR"></td>

				</tr>
			</table>
			</div>
<div id="sanityPopup" style="left: 13%;width: 80%;height: 96%;background-color: ghostwhite;position: fixed;display:none">
		<div style=" overflow: auto;height: 80%;">
		
		<table id=""
				style="background-color: white; /* background-image: url(images/Background.png); */ /* margin: 0px auto; */ width: 95%; /* border: 1px solid; */ height: 95%;">

				<tr>
					<td colspan="3"
						style="text-align: center; font-weight: bold; /* padding-left: 15px; */ font-family: Lucida Sans Unicode; color: #039; width: 70%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Sanity Check Report" />
					</td>

				</tr>
				</table>
		
		<%if(myList !=null && !myList.isEmpty()){%>
			<table id="checkPointTable"
				style="background-color: white; /* background-image: url(images/Background.png); */ /* margin: 0px auto; */ width: 95%; /* border: 1px solid; */ height: 95%;">

				
				<tr>
					<td
						style="font-family: Lucida Sans Unicode; color: #039; width: 65%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Issue" />
					</td>
					<td
						style="border-left: 1px solid; /* font-weight: bold;*/ padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 20%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Accounts Impacted" />
					</td>
					<td
						style="border-left: 1px solid; /*font-weight: bold;*/ padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 15%; /* background-color: #b9c9fe; */ padding-top: 3px; padding-bottom: 3px;">
						<c:out value="Outcome" />
					</td>

				</tr>

				<tr>
					<%
						for (int i = 0; i < myList.size(); i++)
						{
					%>
					<%if(myList.get(i).isSanityResults()=="Pass") { %>
					<td
						style="border-radius: 10px; background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">


						<% 
							out.println(myList.get(i).getSanityTestDescription());
						%>
					</td>

					<td
						style="border-radius: 10px; background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">
						<%
							out.println(myList.get(i).getSanityAccountsImpacted());
						%>
					</td>
					<td
						style="background-color: forestgreen; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green; border-radius: 10px;">
						<%
							out.println(myList.get(i).isSanityResults());
						%>
					</td>
					<% } else { %>
					<td
						style="border-radius: 10px; background-color: indianred; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">


						<% 
							out.println(myList.get(i).getSanityTestDescription());
						%>
					</td>

					<td
						style="border-radius: 10px; background-color: indianred; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green;">
						<%
							out.println(myList.get(i).getSanityAccountsImpacted());
						%>
					</td>
					<td
						style="background-color: indianred; color: white; padding-left: 15px; font-family: Lucida Sans Unicode; font-size: 13px; border-top: 1px solid green; border-left: 1px solid green; border-radius: 10px;">
						<%
							out.println(myList.get(i).isSanityResults());
						%>
					</td>
					<% }%>
				</tr>
				<%
					}
				%>
			</table>
			<%} %>
			</div>
			<table style="width:100%" ><tr><td style="width:100%;text-align:center" ><a href="#" style="text-decoration:none" onclick="hidePopup();" >Close</a></td> </tr> </table>
		</div>
	</form>
</body>
</html>