<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "struct">
        <cfargument name = "userIn" type = "numeric">
        <cfset local.output = structNew()>
        
            <cfloop index = "i" from = "1" to = "#arguments.userIn#">
                <cfif i MOD 2 EQ 0>
                    <cfset local.output[i] = "green">
                <cfelse>
                    <cfset local.output[i] = "blue">
                </cfif>
            </cfloop>
            <cfreturn local.output>
    </cffunction>
</cfcomponent>

