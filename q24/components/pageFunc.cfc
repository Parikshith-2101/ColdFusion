<cfcomponent>
    <cffunction name = "isMailExists" access="remote" returnType="any">
        <cfargument name="userEmail" type="string">

        <cfquery datasource="myDBMS" name="query">
            SELECT COUNT(Email) AS count
            FROM subscriptionCheck
            WHERE Email = <cfqueryparam value="#arguments.userEmail#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif query.count GT 0>
                <cfreturn true>
        </cfif>  
    </cffunction>

    <cffunction name="queryInsert" returnType="String">
        <cfargument name="userName" type="String">
        <cfargument name="userEmail" type="String">   
        <cfset local.output = "Records Added Successfully">
        
        <cfquery name="queryAdd" datasource="myDBMS">
            INSERT INTO subscriptionCheck (Name, Email)
            VALUES (
                <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userEmail#" cfsqltype="cf_sql_varchar">
            );
        </cfquery>
        <cfreturn local.output>
    </cffunction>
</cfcomponent>
