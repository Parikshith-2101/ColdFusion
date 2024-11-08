<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "String">
        <cfargument name = "userIn" type = "string">
        <cfset local.result = "No number divisible by 3">

        <cfloop list = "#arguments.userIn#" item = "i">
            <cfif i MOD 3 NEQ 0 OR i EQ 0>
                <cfcontinue>
            </cfif>
            <cfset local.result = listAppend(local.result, i)>
        </cfloop>
        
        <cfreturn local.result>

    </cffunction>
</cfcomponent>


