<%@page contentType="text/html" pageEncoding="UTF-8"
	errorPage="Error.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="/css/myStyle.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<title>Accounts Tracking || Home</title>

<script type="text/javascript">





function validate(e){
document.getElementById('downloadButton').value = "";
}
function countChars(textbox)
	{
	var wage= document.getElementById("textbox");
	wage.addEventListener("keydown",function(e){
if(e.keyCode ==13){
validate(e);}});
		var count = document.getElementById(textbox).value.length;
		if (count >= 1)
		{
		document.getElementById('submitButton').style.backgroundColor="azure";
		document.getElementById('downloadButton').value = "";
			document.getElementById('submitButton').disabled = false;
		}
		else
		{
		document.getElementById('submitButton').style.backgroundColor="darkgrey";
		document.getElementById('downloadButton').value = "";
			document.getElementById('submitButton').disabled = true;
		}
	}
	
	function DisplayLoadingImage(){
         document.getElementById("divWait").style.display = "block";
         
    }
    
    function proceed(id) {
			document.getElementById('downloadButton').value = id;
			document.getElementById('downloadButton').click();
	}

	
</script> 
</head>
<body style="background-image:url(images/BGimage1.jpg);" onload="document.getElementById('submitButton').disabled=true;document.getElementById('divWait').style.display = none;">
	<form action="MDTHomePageServlet" method="post">
	<div id="divWait"
		style="position: fixed; left: 36%; top: 40%; display: none">
		<table style="width: 100%;margin-left: 63%;margin-top: 5%;">
			<tr>
				<td><img id='HiddenLoadingImage' src='images/Wait.gif'
					style="height: 10%;" /></td>
			</tr>
			<tr>
				<td style="padding-left: 27px;font-size: 23pt;color:white;" >Please Wait</td>
			</tr>
		</table>
	</div>
	<input type="submit"
			name="downloadButton" id="downloadButton" value=""
			style="display: none">
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
		<div id="divHolder" style="margin-top: 0px; height: 20%">
			<table style="width: 100%;margin-left: 0%;">
				<tr height="50px;">
					<td rowspan="1" width="30%" style="">
						<img src="images/ETLLogoSmall1.jpg" style="border-radius: 10px;width:120px;height:120px;"
							alt="AVATAR"></td>
					<td width="40%" style="color:black; font-weight:bold;">
						<label style="font-size: 24px;font-family: serif;color:white;">
						Agreement Code:</label> 
						 <input type="text" onKeyUp="countChars('textbox')"
							name="textbox" id="textbox" name="agrCode" 
							style="margin-left: 20px;width: 30%;margin-top:3%;margin-bottom:3%;font-size: 20px;"/>
							
						<!-- <input type="text" onKeyUp="countChars('textbox')"
							name="textbox" id="textbox"  rows="4" cols="50" name="agrCode" 
							style="margin-left: 228px; width: 51%; line-height: 30px; font-size: 20px; padding-left:6px; padding-right:4px;"/> -->
					
							<br/><input type="submit" name="submit" id="submitButton" onclick="DisplayLoadingImage();" value="Search"
								style="background-color:darkgrey;width: 120px;p;padding: 5px;border-radius: 8px;font-size: 18px;color: blue;outline:none;margin-left: 38%;"/>
								</td>
								<td width="30%" >
								
<%-- 								<label style="font-size: 24px;font-family: serif;color:white;">Execution Time:${fileLoc}</label>
								<br/>
								<input type="submit" name="abc" id="abc" style="width: 120px;p;padding: 5px;border-radius: 8px;font-size: 18px;color: blue;outline:none;margin-left: 38%;visibility:hidden"/> --%>
								</td>
				</tr>
			</table>
		</div>
		<div style="top: 35%;width: 100%;height: 79%;">
		<%
				if (null != session.getAttribute("showAccountOrders"))
				{
			%> 
		
		<div style="overflow: auto;width: 90%;margin: auto;height:100%" >
		<table style=" border: 1px; border-style: solid; width: 100%;background-color:white;">
			<tr style="background-color: darkcyan;color: white;text-align: left;">
				<th colspan="2" style="width:44%;font-size: 15pt;padding:5px;"> Agreement code: &nbsp;&nbsp;&nbsp;${aggrementCode}</th>
				<th colspan="2" style="font-size: 15pt;padding:5px;">Excel Output: &nbsp;&nbsp;&nbsp;<a href="#" id="<%out.print(request.getAttribute("fileLoc"));%>"
							style="color:white;font-style: normal; font-size: 15pt;"
							onclick="proceed(this.id);"><%out.print(request.getAttribute("fileLoc"));%></a></th>
			</tr>
			<tr style="background-color:grey;">
				<td style="border-left: 1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;border-top: 1px solid black;"> Seq No. </th>
				<td style="border-top: 1px solid black;border-left: 1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> Financier Table Name</th>
				<td style="border-top: 1px solid black;border-left: 1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> Table Description</th>
				<td style="border-left: 1px solid black;border-top: 1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> Status</th>
			</tr>
			
			<c:forEach items="${accountDetailsList}" var="accDetail" varStatus="counter">
			 <tr>
			 <td style="border-left:1px solid black;border-top:1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> <c:out value="${counter.count}"></c:out></td>
			 <td style="border-left:1px solid black;border-top:1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> <c:out value="${accDetail.tableName}"></c:out></td>
			 <td style="border-left:1px solid black;border-top:1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> <c:out value="${accDetail.tableDesc}"></c:out></td>
			 <td style="border-left:1px solid black;border-top:1px solid black;font-size:18px;font-family:serif;padding: 5px;padding-left:5px;"> <c:out value="${accDetail.status}"></c:out></td>
			 </tr>
			
			</c:forEach>
		
		</table>
		</div>
		<%
			}
		%> 
		</div>
		 
	</form>
</body>
</html>