<cfcomponent>
    <cffunction name="queryInsertion" access="public" returntype="string">
        <cfargument name="userPosition" type="string">
        <cfargument name="userWilling" type="string">
        <cfargument name="userJoiningDate" type="date">
        <cfargument name="userPortfolioLink" type="string">
        <cfargument name="userResume" type="string">
        <cfargument name="userSalary" type="string">
        <cfargument name="firstName" type="string">
        <cfargument name="lastName" type="string">
        <cfargument name="userEmail" type="string">
        <cfargument name="userPhone" type="string">

        <cfquery name="query" datasource="myDBMS">
            INSERT INTO employeeJoinDetails(FirstName,LastName,Position,JoiningDate,Phone,Email,Relocate,Portfolio,Salary_Requirements,Resume)
            VALUES(
                <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.lastName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userPosition#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userJoiningDate#" cfsqltype="cf_sql_date">,
                <cfqueryparam value="#arguments.userPhone#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userEmail#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userWilling#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userPortfolioLink#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userSalary#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.userResume#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>

        <cfreturn "Successfully added record">
    </cffunction>
</cfcomponent>

