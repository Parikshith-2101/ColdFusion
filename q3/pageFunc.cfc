<cfcomponent>

    <cffunction name="calculate" returnType = "String">
        <cfargument name="userIn" type = "string">
        <cfset local.result = "">
        <cfset userIn = arguments.userIn>

        <cfloop list="#userIn#" item="i">
            <cfif i MOD 3 NEQ 0 OR i EQ 0>
            <cfcontinue>
            </cfif>
            <cfset local.result = listAppend(local.result, i)>
        </cfloop>
        
        <cfreturn local.result>

    </cffunction>

</cfcomponent>


