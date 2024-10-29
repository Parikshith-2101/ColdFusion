<cfcomponent>

    <cffunction name="calculate" returnType = "String">
        <cfargument name="rating" type="numeric">
        
        <cfset rating = arguments.rating>
        <cfswitch expression = #rating#>
            <cfcase value = 5>
                <cfreturn "Very good">
            </cfcase>
            <cfcase value = 4>
                <cfreturn "Good">
            </cfcase>
            <cfcase value = 3>
                <cfreturn "Fair">
            </cfcase>
            <cfcase value = 1,2>
                <cfreturn "Ok">
            </cfcase>
            <cfdefaultcase>
                <cfreturn "Invalid input. Please enter a number between 1 and 5.">
            </cfdefaultcase>
        </cfswitch>

    </cffunction>

</cfcomponent>


