<%@page contentType="text/html" pageEncoding="UTF-8"
	errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="/css/myStyle.css">
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<title>MDV Offline || Home</title>
<script type="text/javascript">
	function proceed(id) {
		if (id == "Proceed") {
			document.getElementById('searchButton').click();
		}
		if (id != "Proceed") {
			document.getElementById('downloadButton').value = id;
			document.getElementById('downloadButton').click();
		}
	}

	function DisplayLoadingImage() {
		document.getElementById("compliancePopUp").style.opacity = "0.1";
		document.getElementById("divWait").style.display = "block";
	}

	function enableProceed() {
		document.getElementById("Proceed").style.display = "block";

	}
</script>
<style>
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
<body style="background-image: url(images/TableImage.jpg);"
	onload="document.getElementById('Proceed').style.display = none;">
	<div id="divWait"
		style="position: fixed; left: 36%; top: 40%; display: none">
		<table style="width: 100%; margin-left: 23%; margin-top: 5%;">
			<tr>
				<td><img id='HiddenLoadingImage' src='images/PleaseWait.gif'
					style="height: 150px;" /></td>
			</tr>
		</table>
	</div>
	<div style="width: 100%; padding-left: 32%; font-size: 35pt;color:white;">Welcome
		to MDV Offline Mode</div>
	<form action="MDVOfflineServlet" method="post" enctype="multipart/form-data">
		<input type="submit" name="searchButton" id="searchButton"
			value="search" style="display: none"> <input type="submit"
			name="downloadButton" id="downloadButton" value=""
			style="display: none">
		<%
			ArrayList<File> myList = new ArrayList<File>();
			myList = (ArrayList) session.getAttribute("fileLists");
			if (null == myList || myList.isEmpty())
			{
		%>
		<div id="compliancePopUp"
			style="top: 16%; left: 23%; width: 55%; height: 60%; background-color: white; position: fixed; border-radius: 50px;">
			<div>
				<p style="font-size: 20pt; text-align: center;">
					Please follow the steps mentioned below before running the Utility.
					<br />
				</p>
			</div>
			<div
				style="overflow-y: auto; height: 92%; background-color: darkseagreen; border-radius: 0px 0px 50px 50px">

				<p style="color: white; font-size: 18pt; padding-left: 9%;">
					1. Upload the credentials record containing username and password required to login to the Database.
				</p>
				<p style="color: white; font-size: 18pt; padding-left: 9%;">
					2. Upload the content document containing the agreement codes that are required to be executed
				</p>
				<p style="color: white; font-size: 18pt; padding-left: 9%;">
					3. Once the files are uploaded, click on proceed and the file will be processed.
					<br />
				</p>
				<p style="color: white; font-size: 18pt; padding-left: 9%;">
					4. Click on download button to download the file.
					<br />
				</p>
				<p style="color: white; font-size: 18pt; padding-left: 9%;">
					Upload Files: <input type="file" name="fileName"
						onclick="enableProceed();" multiple="multiple"
						style="height: 25px; font-size: 12pt; padding-left: 51px;" /><br />
				</p>
				<%
					if (null == request.getAttribute("FlowComplete"))
						{
				%>
				<table
					style="width: 50%; text-align: center; font-size: 18pt; margin-left: 4%;">
					<tr style="height: 10%">
						<td style="width: 30%;"><label
							style="font-size: 18pt; font-family: serif; color: white">Environment:</label>
						</td>
						<td style="padding-left: 10px; text-align: left; width: 30%;"><select
							name="env"
							style="background-color: lightgrey; width: 56%; height: 27px; font-size: 15px;">
								<option>UAT</option>
								<option>SIT</option>
								<option>DEV</option>
								<option>NFT</option>
								<option>Prod</option>
						</select></td>

					</tr>
				</table>
				<%
					}
				%>
				<h3>
					<p
						style="text-align: center; font-size: 18pt; padding-left: 20px; color: red">
						<%
							if (null != request.getAttribute("errorMessage"))
								{
									out.print(request.getAttribute("errorMessage"));
						%>
						<%
							}
								else if (null != request.getAttribute("FlowComplete"))
								{
						%>
						<a href="#"
							id="<%out.print(request.getAttribute("FlowComplete"));%>"
							style="color: red; font-style: normal; font-size: 18pt;"
							onclick="proceed(this.id);"> <%
 	out.print(request.getAttribute("FlowComplete"));
 %>
						</a>
						<%
							}
						%>
					</p>
				</h3>
				<div style="margin-top: 0%">

					<table style="width: 80%; margin-left: 11%;">
						<tr>
							<td style="width: 50%; text-align: right"><a href="Home.jsp"
								style="color: aliceblue; font-size: 16pt; padding: 10px; text-decoration: none">Dashboard</a>
								<!-- <input type="submit" name="myButton" id="myButton" style="margin-left:20%;background-color: azure;color: black;font-family: 
								serif;outline:none;font-size: 20px;padding: 3px;border-radius: 10px;width: 25%;" value="Back"> --></td>
							<td style="width: 50%; text-align: left"><a href="#"
								id="Proceed"
								style="color: aliceblue; font-size: 16pt; padding: 10px;"
								onclick="DisplayLoadingImage();proceed(this.id);">Proceed</a></td>
							<!-- <input
								type="submit" value="Upload" id="Proceed"
								style="background-color: cadetblue; border: none; font-size: 14pt; padding: 10px; color: aliceblue; cursor: pointer;"
								onclick="DisplayLoadingImage();proceed(this.id);"> -->
						</tr>
					</table>
				</div>
			</div>
			<%
				}
				else
				{
			%>

			<div id="FileListDiv"
				style="top: 16%; left: 23%; width: 55%; height: 60%; background-color: aliceblue; position: fixed; border-radius: 50px;">

				<div>
					<p style="font-size: 20pt; text-align: center;">
						Please click on the file to download <br />
					</p>
				</div>
				<div
					style="overflow-y: auto; height: 92%; background-color: darkseagreen; border-radius: 0px 0px 50px 50px">
					<table id="checkPointTable"
						style="margin: 0px auto; width: 70%; border: 1px dashed white; border-radius: 10px;">

						<tr>
							<td
								style="border-bottom: 1px solid white;font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 70%; padding-top: 5px; padding-bottom: 5px;">
								<c:out value="File Name" />
							</td>
							<td
								style="border-bottom: 1px solid white;font-weight: bold; padding-left: 15px; font-family: Lucida Sans Unicode; color: #039; width: 30%; /* background-color: #b9c9fe; */ padding-top: 5px; padding-bottom: 5px;">
								<c:out value="Action" />
							</td>
						</tr>
						<tr>
							<%
								for (int i = 0; i < myList.size(); i++)
									{
							%>
							<td
								style="border-bottom: 1px dashed white;padding-left: 15px;font-family: Lucida Sans Unicode;font-size: 12pt;">
								
									<%
										out.println(myList.get(i).getName());
									%>
								
							</td>
							<td
								style="border-bottom: 1px dashed white;padding-left: 15px;font-family: Lucida Sans Unicode;">
								
									<a href="#"
										id="<%out.print(myList.get(i).getName());%>"
										style="color: red; font-style: normal; font-size: 15pt;"
										onclick="proceed(this.id);"> 
 										Download
									</a>
								
							</td>
						</tr>
						<%
							}
						%>
					</table>
					<div style="margin-top: 10%">
					<table style="width: 80%; margin-left: 11%;">
						<tr>
							<td style="width: 50%; text-align: center"><a href="Home.jsp"
								style="color: aliceblue; font-size: 16pt; padding: 10px; text-decoration: none">Dashboard</a>
						</tr>
					</table>
				</div>
				</div>
				
			</div>
			<%
				}
			%>
	</form>
</body>
</html>