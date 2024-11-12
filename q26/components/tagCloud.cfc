<cfcomponent>
    <cffunction name = "stringCheck" access = "public" returnType = "struct">
        <cfargument name="userText" type = "String">
        <cfset arguments.userText = replace(arguments.userText, ".", "", "all")>
        <cfset local.demoOutput = structNew()>
        
        <cfloop list = "#arguments.userText#" item = "word" delimiters = " ">
            <cfquery name = "queryCheck" datasource = "myDBMS">
                SELECT COUNT(words) AS COUNT FROM tags WHERE words = <cfqueryparam value = #word# cfsqltype = "cf_sql_varchar">;
            </cfquery>
            <cfif queryCheck.count EQ 0>
                <cfquery name = "query" datasource = "myDBMS">
                    INSERT INTO Tags (words) VALUES (<cfqueryparam value = #word# cfsqltype = "cf_sql_varchar">);
                </cfquery>
            </cfif>
            <cfif len(#word#) LT 3 OR isNumeric(#word#)>
                <cfcontinue>
            </cfif>
            <cfif structKeyExists(local.demoOutput, "#word#")>
                <cfset local.demoOutput[#word#] += 1>
            <cfelse>
                <cfset local.demoOutput[#word#] = 1>
            </cfif>
        </cfloop>

        <cfset local.output = structNew("ordered")>
        <cfset local.keySortArray = structSort(local.demoOutput ,"numeric", "desc")>
        <cfloop array = "#local.keySortArray#" item = "key">
            <cfset local.output[#key#] = local.demoOutput[key]>
        </cfloop>

        <cfreturn local.output>
    </cffunction>
</cfcomponent>