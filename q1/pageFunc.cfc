<cfcomponent>

    <cffunction name="calculate" access="public" returnType = "String">
        <cfargument name="rating" type="numeric">
        <cfset local.result = "">

        <cfif arguments.rating EQ 5>
            <cfset local.result = "Very good">
        <cfelseif arguments.rating EQ 4>
            <cfset local.result = "Good">
        <cfelseif arguments.rating EQ 3>
            <cfset local.result = "Fair">
        <cfelseif arguments.rating EQ 1 OR arguments.rating EQ 2>
            <cfset local.result = "Ok">
        <cfelse>
            <cfset local.result = "Invalid input. Please enter a number between 1 and 5.">
        </cfif>
        
        <cfreturn local.result>
    </cffunction>

</cfcomponent>

