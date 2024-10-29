<cfcomponent>

    <cffunction name="calculate" returnType = "String">
        <cfargument name="userIn" type="numeric">
        
        <cfset userIn = arguments.userIn>
        
        <cfset Array = listToArray(userIn)>

        <cfreturn Array>

    </cffunction>

</cfcomponent>


