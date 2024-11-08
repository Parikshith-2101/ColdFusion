<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "struct">
        <cfargument name = "userIn1" type = "String">
        <cfargument name = "userIn2" type = "String">

        <cfloop collection = "#session.output#" item = "item">
            <cfif item EQ arguments.userIn1>
                <cfreturn "#arguments.userIn1# already present , Cannnot add again">
            </cfif>
        </cfloop>
        <cfset session.output[arguments.userIn1] = arguments.userIn2>

        <cfreturn session.output> 
    </cffunction>
</cfcomponent>

