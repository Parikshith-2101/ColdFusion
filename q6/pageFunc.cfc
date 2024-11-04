<cfcomponent>

    <cffunction name="calculate" returnType = "Any">
        <cfargument name="userIn1">
        <cfargument name="userIn2">
        <cfset userIn1 = arguments.userIn1>
        <cfset userIn2 = arguments.userIn2>

        
        <cfset output = structNew()>
        <cfset output[#userIn1#] = #userIn2#>

        <cfreturn output>
      
    </cffunction>

</cfcomponent>


