<!DOCTYPE html>
<html>
	<cfoutput>
    	<head>
			<title>Clan Manager</title>
			<link href="./css/main.css" rel="stylesheet" type="text/css" />
		</head>
		<body>
			<!---Header Container--->
			<div id="headerContainer">
				
				<div id="siteLogo">
					<a href="index.cfm"><img id="logoImage" src="./images/clanLogo.png" ></a>
				</div>
				
				<!---Site Title Container--->
				<div id="siteTitle">
					<h1 class="contentTitle">Clan Manager v1.0</h1>
				</div>
				
				<!---Logo Container--->
				<div id="logo">
					<h1>Guardians of Darkness</h1>
				</div>
				<!---Makes A Call To Populate The Navigation Menu--->	
				<cfinvoke method="populateNavMenu" component="components.database" returnvariable="result" >
			</div>	
	</cfoutput>
    
	
	


