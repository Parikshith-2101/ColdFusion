<cfcomponent>
    <cffunction name="multiply" access="public" returntype="numeric">
        <cfargument name="a" type="numeric">
        <cfargument name="b" type="numeric">
        <cfargument name="c" type="numeric" default="1">
        <cfargument name="d" type="numeric" default="1">
        
        <cfset var result = arguments.a * arguments.b * arguments.c * arguments.d>
        <cfreturn result>
    </cffunction>
</cfcomponent>
