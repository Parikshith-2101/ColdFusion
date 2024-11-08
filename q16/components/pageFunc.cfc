<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "array">
        <cfset local.data = [1,2,3,4,5,6,7,8,9]>
        <cfset local.row = 3>
        <cfset local.col = 3>
        <cfset local.start = 1>
        <cfset local.myArray = arrayNew(2)>
        <cfset local.value = 1>
        
        <cfloop index="r" from="#local.start#" to="#local.row#">
            <cfloop index="c" from="#local.start#" to="#local.col#">
                <cfset local.myArray[c][r] = local.value>
                <cfset local.value += 1>
            </cfloop>
        </cfloop>
        
        <cfreturn local.myArray>

    </cffunction>
</cfcomponent>
