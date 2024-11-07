<cfcomponent>
    <cffunction name = "calculate" returnType = "query">
        <cfset local.dataTable = queryNew("ID,Name,Email" , "integer,varchar,varchar")>
        <cfset queryAddRow(local.dataTable)>
        <cfset querySetCell(local.dataTable, "ID", "1")>
        <cfset querySetCell(local.dataTable, "Name", "Parikshith")>
        <cfset querySetCell(local.dataTable, "Email", "parikshith@gmail.com")>

        <cfset queryAddRow(local.dataTable)>
        <cfset querySetCell(local.dataTable, "ID", "2")>
        <cfset querySetCell(local.dataTable, "Name", "Hoi")>
        <cfset querySetCell(local.dataTable, "Email", "parikshith@gmail.com")>

        <cfset queryAddRow(local.dataTable)>
        <cfset querySetCell(local.dataTable, "ID", "3")>
        <cfset querySetCell(local.dataTable, "Name", "Hello")>
        <cfset querySetCell(local.dataTable, "Email", "parikshith@gmail.com")>

        <cfreturn local.dataTable>
    </cffunction>
</cfcomponent>

