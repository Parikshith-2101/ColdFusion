<cfcomponent>

    <cffunction name="calculate" access="public" returnType = "String">
        <cfargument name="rating" type="numeric">
        <cfset local.result = "">
        <cfswitch expression = "#arguments.rating#">
            <cfcase value = 5>
                <cfset local.result = "Very good">
            </cfcase>
            <cfcase value = 4>
                <cfset local.result = "Good">
            </cfcase>
            <cfcase value = 3>
                <cfset local.result = "Fair">
            </cfcase>
            <cfcase value = 1,2>
                <cfset local.result = "Ok">
            </cfcase>
            <cfdefaultcase>
                <cfset local.result = "Invalid input. Please enter a number between 1 and 5.">
            </cfdefaultcase>
        </cfswitch>
        <cfreturn local.result>
    </cffunction>

</cfcomponent>


