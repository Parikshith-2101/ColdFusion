<cfcomponent>
    <cffunction name="calculate" returnType="Any">
         <cfif not isDefined("cookie.VisitsCounter")>
            <cfcookie name="VisitsCounter" value="1">
        <cfelse>
            <cfcookie name="VisitsCounter" value="#cookie.VisitsCounter + 1#">
        </cfif>
        <cfreturn cookie.VisitsCounter>
    </cffunction>
</cfcomponent>

