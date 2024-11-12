<cfcomponent>
    <cffunction name = "loginFunc" access = "public" returnType = "boolean">
        <cfargument name = "userName" type = "String">
        <cfargument name = "password" type = "String">
        <cfset local.result = false>
        <cfif NOT structKeyExists(session, userName)>
            <cfset session.userName = "admin">
            <cfset session.password = "admin">
        </cfif>
        <cfif arguments.userName EQ session.userName AND arguments.password EQ session.password>
            <cfset local.result = true>
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>