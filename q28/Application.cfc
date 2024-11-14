<cfcomponent>
    <cfset this.name = "app">
    <cfset this.sessionManagement = "true">
    <cfset this.dataSource = "myDBMS">

    <cffunction name = "onRequest">
        <cfargument name = "requestPage">
        <cfif structKeyExists(session, "role") OR arguments.requestPage EQ "/Tasks/ColdFusion/q28/signup.cfm">
            <cfinclude template = "#arguments.requestPage#">
        <cfelse> 
            <cfinclude template = "/Tasks/ColdFusion/q28/index.cfm">
        </cfif>
    </cffunction>
</cfcomponent>