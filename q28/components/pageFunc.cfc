<cfcomponent>
    <cffunction name = "roleFetchFunction" access = "remote" returnFormat = "json" returnType = "query">
        <cfquery name = "roleFetch">
            SELECT roleID, role FROM roleList;
        </cfquery>
        <cfreturn roleFetch>
    </cffunction>

    <cffunction name = "signup" access = "public" returnType = "boolean">
        <cfargument name = "userName" type = "String">
        <cfargument name = "password" type = "String">
        <cfargument name = "role" type = "String">
        <cfset local.encrypted_pass = Hash(#arguments.password#, 'SHA-512')/>
        <cfset local.output = false>

        <cfquery name = "fetchData">
            SELECT COUNT(userName) AS count 
            FROM userList 
            WHERE userName = <cfqueryparam value = "#arguments.userName#" cfsqltype = "cf_sql_varchar">;
        </cfquery>

        <cfif fetchData.count EQ 0>
            <cfquery name = "insertData">
                INSERT INTO userList (userName, password,roleID)
                VALUES (
                    <cfqueryparam value = "#arguments.userName#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#local.encrypted_pass#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.role#" cfsqltype = "cf_sql_varchar">
                );
            </cfquery>
            <cfset local.output = true>
        </cfif>
        <cfreturn local.output>
    </cffunction>

    <cffunction name = "validation" access = "public"   returnType = "boolean">
        <cfargument name = "userName" type = "String">
        <cfargument name = "password" type = "String">
        <cfset local.output = false>       
        <cfset local.encrypted_pass = Hash(#arguments.password#, 'SHA-512')/>

        <cfquery name = "fetchData">
            SELECT userList.userName, userList.password, roleList.role
            FROM userList
            INNER JOIN roleList
            ON userList.roleID = roleList.roleID
            WHERE userList.userName = <cfqueryparam value = "#arguments.userName#" cfsqltype = "cf_sql_varchar">;
        </cfquery>
        <cfif fetchData.password EQ local.encrypted_pass AND fetchData.userName EQ arguments.userName>
            <cfset session.role = fetchData.role>
            <cfset session.userName = fetchData.userName>
            <cfset local.output = true>
        </cfif>
        <cfreturn local.output>
    </cffunction>

    <cffunction name = "pageList" returnType = "query">
        <cfif session.role EQ "user">
            <cfquery name = "pageData">
                SELECT pageID,pageName,pageDesc 
                FROM pageList;
            </cfquery>
        <cfelse>
            <cfquery name = "pageData">
                SELECT pageID,pageName,pageDesc 
                FROM pageList
                WHERE _createdBy = <cfqueryparam value = "#session.userName#" cfsqltype = "cf_sql_varchar">;
            </cfquery>
        </cfif>
        <cfreturn pageData>
    </cffunction>

    <cffunction name = "pageDisplay">
        <cfargument name = "pageID">
        <cfquery name = "pageData">
            SELECT pageName,pageDesc 
            FROM pageList 
            WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
        <cfset session.pageData = pageData>
        <cflocation url="display.cfm" addToken="No">
    </cffunction>

    <cffunction  name="logout" access = "remote">
        <cfset structDelete(session, "role")>
    </cffunction>

    <cffunction name = "editPage">
        <cfargument name = "pageID">
        <cfquery name = "editPageData">
            SELECT pageID,pageName,pageDesc,_createdBy
            FROM pageList 
            WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
        <cfset session.editPageData = editPageData>
        <cflocation url="editDisplay.cfm" addToken = "No">
    </cffunction>

    <cffunction name="deletePage" access = "remote">
        <cfargument name="pageID">
        <cfquery name = "deleteData">
            DELETE FROM pageList WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>  
    </cffunction>

    <cffunction  name="updatePage">
        <cfargument  name="pageID">
        <cfargument  name="pageDesc">
        <cfquery name = "updateData">
            UPDATE pageList SET pageDesc = <cfqueryparam value = "#arguments.pageDesc#" cfsqltype = "cf_sql_varchar">
            WHERE pageID = <cfqueryparam value = "#arguments.pageID#" cfsqltype = "cf_sql_integer">;
        </cfquery>
        <cflocation url = "admin.cfm">
    </cffunction>

    <cffunction name = "addPage">
        <cfargument name = "pageName">
        <cfargument name = "pageDesc">
        <cfset local.output = "false">
        <cfquery name = "fetchData"> 
            SELECT pageName FROM pageList WHERE pageName = <cfqueryparam value = "#arguments.pageName#" cfsqltype = "cf_sql_varchar">
        </cfquery>
        <cfif fetchdata.RecordCount EQ 0>
            <cfquery name = "addData">
                INSERT INTO pageList (pageName,pageDesc,_createdBy,_updatedBy)
                VALUES(
                    <cfqueryparam value = "#arguments.pageName#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#arguments.pageDesc#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#session.userName#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#session.userName#" cfsqltype = "cf_sql_varchar">
                );
            </cfquery>
            <cfset local.output = "true">
        </cfif>
        <cfreturn local.output>
    </cffunction>
</cfcomponent>
