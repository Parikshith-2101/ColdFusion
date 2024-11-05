<cffunction name="multiply" returntype="numeric" output="false">

    <cfargument name="num1" type="numeric">
    <cfargument name="num2" type="numeric">
    <cfargument name="num3" type="numeric" default="1">
    <cfargument name="num4" type="numeric" default="1">
    
    <cfset var result = arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
    
    <cfreturn result>
</cffunction>

<cfset res = multiply(1, 2)>
<cfdump var="#res#">

<cfset res = multiply(1, 2, 3)>
<cfdump var="#res#">

<cfset res = multiply(1, 2, 3, 4)>
<cfdump var="#res#">

