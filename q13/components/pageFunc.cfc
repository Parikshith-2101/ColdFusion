<cfcomponent>
    <cffunction name="calculate" access = "public" returnType = "String">

        <cfargument name="stringIn" type = "String">
        <cfargument name="userIn" type = "String">

        <cfset local.result = listValueCountNoCase(arguments.stringIn, arguments.userIn ," ")>
        
        <cfreturn local.result> 
    </cffunction >
</cfcomponent>


