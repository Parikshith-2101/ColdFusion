<cfoutput>
<html>
    <head>
        <title>15</title>
    </head>
    <body>
        <h1>Multiply Function</h1>

        <!-- cfinvoke -->
        <cfset result1 = 0>
        <cfinvoke component="pageFunc" method="multiply" a="1" b="2" returnvariable="result1">
        <p>multiply(1, 2) using cfinvoke: #result1#</p>

        <cfset result2 = 0>
        <cfinvoke component="pageFunc" method="multiply" a="1" b="2" c="3" returnvariable="result2">
        <p>multiply(1, 2, 3) using cfinvoke: #result2#</p>

        <cfset result3 = 0>
        <cfinvoke component="pageFunc" method="multiply" a="1" b="2" c="3" d="4" returnvariable="result3">
        <p>multiply(1, 2, 3, 4) using cfinvoke: #result3#</p>
        <br>
        <!-- cfobject -->
        <cfobject component="pageFunc" name="multiplyObj">
        <cfset result4 = multiplyObj.multiply(1, 2)>
        <p>multiply(1, 2) using cfobject: #result4#</p>

        <cfset result5 = multiplyObj.multiply(1, 2, 3)>
        <p>multiply(1, 2, 3) using cfobject: #result5#</p>

        <cfset result6 = multiplyObj.multiply(1, 2, 3, 4)>
        <p>multiply(1, 2, 3, 4) using cfobject: #result6#</p>
        <br>
        <!-- createObject -->
        <cfset multiplyObj2 = createObject("component", "pageFunc")>
        <cfset result7 = multiplyObj2.multiply(1, 2)>
        <p>multiply(1, 2) using createObject: #result7#</p>

        <cfset result8 = multiplyObj2.multiply(1, 2, 3)>
        <p>multiply(1, 2, 3) using createObject: #result8#</p>

        <cfset result9 = multiplyObj2.multiply(1, 2, 3, 4)>
        <p>multiply(1, 2, 3, 4) using createObject: #result9#</p>
    </body>
</html>


</cfoutput>