<cfcomponent>
    <cffunction name = "signup" returnType = "boolean">
        <cfargument name = "userName" type = "String">
        <cfargument name = "password" type = "String">
        <cfargument name = "role" type = "String">
        <cfset local.output = false>

        <cfquery name = "fetchData" dataSource = "myDBMS">
            SELECT COUNT(userName) AS count 
            FROM userList 
            WHERE userName = <cfqueryparam value = "#arguments.userName#" cfsqltype = "cf_sql_varchar">;
        </cfquery>

        <cfif fetchData.count EQ 0>
            <cfquery name = "insertData" datasource = "myDBMS">
                INSERT INTO userList (userName, password, role)
                VALUES (
                    <cfqueryparam value = "#arguments.userName#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.password#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.role#" cfsqltype = "cf_sql_varchar">
                );
            </cfquery>
            <cfset local.output = true>
        </cfif>
        <cfreturn local.output>
    </cffunction>

    <cffunction name = "validation" returnType = "boolean">
        <cfargument name = "userName" type = "String">
        <cfargument name = "password" type = "String">
        <cfset local.output = false>

        <cfquery name = "fetchData" dataSource = "myDBMS">
            SELECT userName, password, role 
            FROM userList
            WHERE userName = <cfqueryparam value = "#arguments.userName#" cfsqltype = "cf_sql_varchar">;
        </cfquery>
        <cfif fetchData.password EQ arguments.password>
            <cfset session.role = fetchData.role> 
            <cfset local.output = true>
        </cfif>
        <cfreturn local.output>
    </cffunction>

    <cffunction name = "pageList" returnType = "query">
        <cfquery name = "pageData" dataSource = "myDBMS">
            SELECT pageID,pageName,pageDesc FROM pageList;
        </cfquery>
        <cfreturn pageData>
    </cffunction>

    <cffunction name = "pageDisplay">
        <cfargument name = "pageID">
        <cfquery name = "pageData" dataSource = "myDBMS">
            SELECT pageName,pageDesc FROM pageList WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
        <cfset session.pageData = pageData>
        <cflocation  url="display.cfm" addToken="No">
    </cffunction>

    <cffunction  name="logout" access = "remote">
        <cfset structDelete(session, "role")>
        <cflocation  url="../index.cfm" addToken = "No">
    </cffunction>

    <cffunction name="editPage">
        <cfargument name="pageID">
        <cfquery name = "editPageData" dataSource = "myDBMS">
            SELECT pageID,pageName,pageDesc FROM pageList WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
        <cfset session.editPageData = editPageData>
        <cflocation  url="editDisplay.cfm" addToken = "No">
    </cffunction>

    <cffunction name="deletePage">
        <cfargument name="pageID">
        <cfquery name = "deleteData" dataSource = "myDBMS">
            DELETE FROM pageList WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
    </cffunction>

    <cffunction  name="updatePage">
        <cfargument  name="pageID">
        <cfargument  name="pageDesc">
        <cfquery name = "updateData" dataSource = "myDBMS">
            UPDATE pageList SET pageDesc = <cfqueryparam value = "#arguments.pageDesc#" cfsqltype = "cf_sql_varchar">
            WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
        <cfset variable = editPage(arguments.pageID)>
    </cffunction>

    <cffunction  name="addPage">
        <cfargument  name="pageName">
        <cfargument  name="pageDesc">
        <cfset local.output = "false">
        <cfquery name = "fetchData" dataSource = "myDBMS"> 
            SELECT pageName FROM pageList WHERE pageName = <cfqueryparam value = "#arguments.pageName#" cfsqltype = "cf_sql_varchar">
        </cfquery>
        <cfif fetchdata.RecordCount EQ 0>
            <cfquery name = "addData" dataSource = "myDBMS">
                INSERT INTO pageList (pageName,pageDesc)
                VALUES(
                    <cfqueryparam value = "#arguments.pageName#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.pageDesc#" cfsqltype = "cf_sql_varchar">
                );
            </cfquery>
            <cfset local.output = "true">
        </cfif>
        <cfreturn local.output>
    </cffunction>
</cfcomponent>
