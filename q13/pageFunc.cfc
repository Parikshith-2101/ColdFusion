<cfcomponent>

    <cffunction name="calculate" returnType = "Any">
        <cfargument name="userIn">
        <cfset substring = arguments.userIn>
        <cfset words = "the quick brown fox jumps over the lazy dog">

        <cfset result = listValueCount(words, substring ," ")>  
        <cfreturn result &" times - " & words> 
    </cffunction >

</cfcomponent>


