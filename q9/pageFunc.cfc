<cfcomponent>

    <cffunction name="calculate" returnType = "Any">
        <cfargument name="userIn1">
        <cfargument name="userIn2">
        <cfset userIn1 = arguments.userIn1>
        <cfset userIn2 = arguments.userIn2>

        <cfloop collection="#session.output#" item="item">
            <cfif #item# EQ userIn1>
                <cfreturn "#userIn1# already present , Cannnot add again">
            </cfif>
        </cfloop>
        <cfset session.output[#userIn1#] = #userIn2#>

        <cfreturn session.output>
      
    </cffunction>

</cfcomponent>

