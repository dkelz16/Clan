<cfcomponent>
	<cfoutput>
		<cffunction name="getUserControlsByRank" access="public" output="true" returntype="Any">
			<cfset myArray = Arraynew(1) />
			
			<cfif #URL.rank# lt 3>
				<cfset #myArray.append("<a id='command' href='./forms/addMember.cfm?cmd=add'>Add Member</a>")#/>	
				<cfset #myArray.append("<a id='command' href='dbGuru.cfm?cmd=delete'>Delete Member</a>")#/>	
				<cfset #myArray.append("<a id='command' href='dbGuru.cfm?cmd=promote'>Promote Member</a>")#/>	
				<cfset #myArray.append("<a id='command' href='dbGuru.cfm?cmd=demote'>Demote Member</a>")#/>
				<cfset #myArray.append("<a id='command' href='dbGuru.cfm?cmd=changeaccount'>Change Account Info</a>")#/>
				<cfset #myArray.append("<a id='command' href='dbGuru.cfm?cmd=viewall'>View All Members</a>")#/>
				<cfset #myArray.append("<a id='command' href='dbGuru.cfm?cmd=viewspecific'>View Specific Member</a>")#/>
			 <cfelse>
		
			</cfif>
			<cfreturn myArray>
		</cffunction>
		
	</cfoutput>
</cfcomponent>