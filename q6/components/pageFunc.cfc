<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "struct">
        <cfargument name="userIn1" type = "String">
        <cfargument name="userIn2" type = "String">

        <cfset local.output = structNew()>
        <cfset local.output[arguments.userIn1] = arguments.userIn2>

        <cfreturn local.output>     
    </cffunction>
</cfcomponent>


