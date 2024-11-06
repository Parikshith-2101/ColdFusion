<cffunction name="multiply" acces="public" returntype="numeric">

    <cfargument name="num1" type="numeric">
    <cfargument name="num2" type="numeric">
    <cfargument name="num3" type="numeric" default="1">
    <cfargument name="num4" type="numeric" default="1">
    
    <cfset local.result = arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
    
    <cfreturn local.result>
</cffunction>

<cfset local.res = multiply(1, 2)>
<cfdump var="#local.res#">

<cfset local.res = multiply(1, 2, 3)>
<cfdump var="#local.res#">

<cfset local.res = multiply(1, 2, 3, 4)>
<cfdump var="#local.res#">

