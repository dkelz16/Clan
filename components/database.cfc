<!---                         
                              
Database Interaction Component
                              
                          --->
<cfcomponent  >
	
	<!---Add A Record To The Database--->
	<cffunction name="addRecord" access="public" output="false">
	<cfquery name="add" datasource="clan">
		INSERT INTO member
		(userName, password, firstName, lastName, emailAddress, rank, rankName)
		VALUES
		('#FORM.username#','#FORM.password#','#FORM.firstname#','#FORM.lastname#','#FORM.email#','#FORM.rank#', '#FORM.rankname#');
	</cfquery>
	</cffunction>
	
	<!---Delete A Record To The Database--->
	<cffunction name="deleteRecord" access="public" output="false">
		
	</cffunction>
	
	<!---Update A Record In The Database--->
	<cffunction name="updateRecord" access="public" output="true">
		
	</cffunction>
	
	<!---View All Records In The Database--->
	<cffunction name="viewAllRecords" access="public" output="true">
		
	</cffunction>
	
	<!---View A Specific Member In The Database--->
	<cffunction name="viewSpecificRecord" access="public" output="false" returntype="query" >
		
		<cfquery name="userData" datasource="clan">
			SELECT userName, firstName, lastName, rank, rankName, dateAdded, emailAddress
			FROM member
			WHERE userName = <cfqueryparam  value="#URL.username#">
		</cfquery>
		<cfreturn userData>
	</cffunction>
	
	<!---Populate The Navigation Menu With Links--->
	<cffunction name="populateNavMenu" access="public" returntype="query" output="true">
		<cfquery name="qLinks" datasource="clan" >
			SELECT url, displayname
			FROM links
			ORDER BY id
		</cfquery>
		
		<!---Loops Through Query And Displays Each Link--->
		<div id="linkDiv">
			<cfloop query="qLinks">
				<ul class="link">
					<a href="#qLinks.url#">#qLinks.displayName#</a>
				</ul>
			</cfloop>
		</div>
		<cfreturn qLinks>
	</cffunction>
	
	<!---Validates User Login Database--->
	<cffunction name="validateLoginInfo" output="true" access="public">
		<cfquery name="isValid" datasource="clan">
			SELECT userName, password, rank, id
			FROM member
			WHERE <cfqueryparam value="#FORM.username#" cfsqltype="cf_sql_varchar"> = userName
			AND <cfqueryparam value="#FORM.password#" cfsqltype="cf_sql_varchar"> = password
		</cfquery>
		
		<!---Redirect To Logged In View If Record Is Found
			 If Record Is Not Found, Redirect To Login Page --->
		<cfif isValid.recordCount gt 0>
			<cflocation url="./../loginsuccess.cfm?rank=#isValid.rank#&username=#isValid.userName#" >
			<cfelse>
				<cflocation url="./../login.cfm?loginAttempt=true" >
		</cfif>
	</cffunction>
	
</cfcomponent>