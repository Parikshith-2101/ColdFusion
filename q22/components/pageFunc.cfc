<cfcomponent>
    <cffunction name="calculate" returnType="array">
        <cfset local.jsonData = [{"Name":"Saravanan",
                            "Age":27,
                            "Location":"Dubai"}
                            ,
                            {"Name":"Ram",
                            "Age":26,
                            "Location":"Kovilpatti"}] >
        <cfreturn local.jsonData>
    </cffunction>
</cfcomponent>