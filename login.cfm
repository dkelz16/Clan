<cfoutput>
	<cfinclude template="./includes/header.cfm" >
	
	<!---Login Form--->
	<div id="loginForm">
		<form id="form1" action="./processes/processLogin.cfm" method="post" name="form1">
			<p>Username:</p> <input type="text" required="true" name="username" />
			<p>Password:</p> <input type="password" required="true" name="password" />
			<input type="submit" id="submit" name="submit" value="Login">	
		</form>
		
		<!---Provides Feedback For User (Login Success Or No Success)--->
		<div id="feedback">			
		<cftry>
			<cfif NOT isdefined(#URL.loginAttempt#)>
			<p>There Is No Such User. Try Again.</p>
			<cfelse>
			<p>Please Enter Your Credentials.</p>
		</cfif>	
			<cfcatch >
				<p>Please Enter Your Credentials.</p>
			</cfcatch>
		</cftry>
		</div>	
	</div>
	
	<!---Right Sidebar--->
	<div id="loginPageRightSideBar">
		<h1 class="contentTitle">Recent News</h1>
		<p>Aenean et dignissim dolor, in consectetur nunc. Nulla facilisi. Vestibulum eros risus, mattis in aliquet vitae, varius sit amet magna. Integer luctus, massa quis viverra pulvinar, velit odio euismod lectus, a porttitor lectus metus ut magna. Vestibulum varius mauris vitae nunc faucibus mollis. Aliquam blandit lorem sit amet erat tristique efficitur. Mauris cursus mi sit amet sem faucibus, vel viverra erat vulputate.</p>
	</div>
	
	<!---Left Sidebar--->
	<div id="loginPageLeftSideBar">
		<h1 class="contentTitle">Posts</h1>
		<p>Aenean et dignissim dolor, in consectetur nunc. Nulla facilisi. Vestibulum eros risus, mattis in aliquet vitae, varius sit amet magna. Integer luctus, massa quis viverra pulvinar, velit odio euismod lectus, a porttitor lectus metus ut magna. Vestibulum varius mauris vitae nunc faucibus mollis. Aliquam blandit lorem sit amet erat tristique efficitur. Mauris cursus mi sit amet sem faucibus, vel viverra erat vulputate.</p>
	</div>
	
	<cfinclude template="./includes/footer.cfm" >
</cfoutput>