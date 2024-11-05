<cfcomponent>
    <cffunction name="calculate" returnType="Any">
        <cfargument  name="userIn">
        <cfset output = structNew()>
            <cfloop index="i" from="1" to="#arguments.userIn#">
                <cfif i mod 2 eq 0>
                    <cfset output[i] = "green">
                <cfelse>
                    <cfset output[i] = "blue">
                </cfif>
            </cfloop>
            <cfdump  var="#output#">
    </cffunction>
</cfcomponent>

