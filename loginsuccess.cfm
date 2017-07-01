<cfoutput>
	<cfinclude template="./includes/header.cfm" >
	
	<!---Invoke Methods--->
	<cfinvoke method="viewSpecificRecord" component="components.database" returnvariable="result">
	<cfinvoke method="getUserControlsByRank" component="components.Commands" returnvariable="controlResult">
	
	<!---Welcome User--->
	<div id="content">
		<div id="welcome">
			<h1 class="contentTitle">Welcome, #URL.username#</h1>
		</div>
		
		<!---Right Side Bar--->
		<div id="loginPageRightSideBar">
			<h1 class="contentTitle">Games Played</h1>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
			<p>Insert Games Played Here</p>
		</div>
		
		<!---Left Side Bar--->
		<div id="loginPageLeftSideBar">
			<h1 class="contentTitle">Admin Commands</h1>
			<cfloop array="#controlResult#" index="item">
				<ul>#item#</ul>
			</cfloop>
		</div>
		
		<!---Profile Heading--->
		<div id="profile">
			<h1 class="contentTitle">Profile</h1>
		</div>
	
		<!---Display Profile Info Table--->
		<div id="profileInfo">
			<table id="displayProfileInfo" title="display" cellspacing="1" cellpadding="1">
				<tr class="table">
					<th class="table">Rank:</th>
					<td class="table">#result.rankName#</td>
				</tr>
				<tr class="table">
					<th class="table">Username:</th>
					<td class="table">#result.username#</td>
				</tr>
				<tr class="table">
					<th class="table">First name:</th>
					<td class="table">#result.firstName#</td>
				</tr>
				<tr class="table">
					<th class="table">Last name:</th>
					<td class="table">#result.lastname#</td>
				</tr>
				<tr class="table">
					<th class="table">Email:</th>
					<td class="table">#result.emailAddress#</td>
				</tr>
			</table>
		</div>
	</div>
	
	<cfinclude template="./includes/footer.cfm" >
</cfoutput>