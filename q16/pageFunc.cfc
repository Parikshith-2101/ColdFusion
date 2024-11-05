<cfcomponent>
    <cffunction name="calculate" returnType="Any">
        <cfset data = [1,2,3,4,5,6,7,8,9]>
        <cfset row = 3>
        <cfset col = 3>
        <cfset myArray = arrayNew(2)>
        <cfset value = 1>
        
        <cfloop index="r" from="1" to="#row#">
            <cfloop index="c" from="1" to="#col#">
                <cfset myArray[c][r] = value>
                <cfset value += 1>
            </cfloop>
        </cfloop>
        
        <cfloop index="r" from="1" to="#row#">
            <cfloop index="c" from="1" to="#col#">
                <cfoutput>#myArray[r][c]# </cfoutput>
            </cfloop>
            <br>
        </cfloop>
    </cffunction>
</cfcomponent>

