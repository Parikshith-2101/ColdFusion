<cfcomponent>

    <cffunction name="calculate" returnType = "String">
        <cfargument name="rating" type="numeric">

        <cfif arguments.rating EQ 5>
            <cfreturn "Very good">
        <cfelseif arguments.rating EQ 4>
            <cfreturn "Good">
        <cfelseif arguments.rating EQ 3>
            <cfreturn "Fair">
        <cfelseif arguments.rating EQ 1 OR arguments.rating EQ 2>
            <cfreturn "Ok">
        <cfelse>
            <cfreturn "Invalid input. Please enter a number between 1 and 5.">
        </cfif>

    </cffunction>

</cfcomponent>

