<cfcomponent>

    <cffunction name="calculate" returnType = "struct">
        <cfargument name="userIn1" type = "String">
        <cfargument name="userIn2" type = "String">
        <cfset session.output[arguments.userIn1] = arguments.userIn2>
        <cfreturn session.output>     
    </cffunction>

</cfcomponent>
