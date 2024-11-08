<cfset local.objPageFunc = new components.pageFunc()>
<cfset local.a = 1>
<cfset local.b = 2>
<cfset local.c = 3>
<cfset local.d = 4>

<cfset local.res = local.objPageFunc.multiply(local.a, local.b)>
<p>multiply(1, 2)</p>
<b><cfdump var="#local.res#"></b>

<cfset local.res = local.objPageFunc.multiply(local.a, local.b, local.c)>
<p>multiply(1, 2, 3)</p>
<b><cfdump var="#local.res#"></b>

<cfset local.res = local.objPageFunc.multiply(local.a, local.b, local.c, local.d)>
<p>multiply(1, 2, 3, 4)</p>
<b><cfdump var="#local.res#"></b>

