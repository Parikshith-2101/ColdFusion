<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "array">
        <cfargument name = "number" type = "numeric">

        <cfquery name = "getData" datasource = "myDBMS">
            SELECT FirstName, LastName FROM Names;
        </cfquery>  
        <cfset local.output = []>
        <cfset local.nthRow = getData.Firstname[arguments.number]>
        <cfset arrayAppend(local.output, getData)>
        <cfset arrayAppend(local.output, local.nthRow)>

        <cfreturn local.output>
    </cffunction>
</cfcomponent>

