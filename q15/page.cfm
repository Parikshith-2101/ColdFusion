<html>
    <head>
        <title>15</title>
    </head>
    <body>
        <h1>Multiply Function</h1>

        <cfoutput>
            <!-- cfinvoke -->
            <cfset local.result1 = 0>
            <cfinvoke component="pageFunc" method="multiply" a="1" b="2" returnvariable="local.result1">
            <p>multiply(1, 2) using cfinvoke: #local.result1#</p>

            <cfset local.result2 = 0>
            <cfinvoke component="pageFunc" method="multiply" a="1" b="2" c="3" returnvariable="local.result2">
            <p>multiply(1, 2, 3) using cfinvoke: #local.result2#</p>

            <cfset local.result3 = 0>
            <cfinvoke component="pageFunc" method="multiply" a="1" b="2" c="3" d="4" returnvariable="local.result3">
            <p>multiply(1, 2, 3, 4) using cfinvoke: #local.result3#</p>
            <br>
            <!-- cfobject -->
            <cfobject component="pageFunc" name="multiplyObj">
            <cfset local.result4 = multiplyObj.multiply(1, 2)>
            <p>multiply(1, 2) using cfobject: #local.result4#</p>

            <cfset local.result5 = multiplyObj.multiply(1, 2, 3)>
            <p>multiply(1, 2, 3) using cfobject: #local.result5#</p>

            <cfset local.result6 = multiplyObj.multiply(1, 2, 3, 4)>
            <p>multiply(1, 2, 3, 4) using cfobject: #local.result6#</p>
            <br>
            <!-- createObject -->
            <cfset multiplyObj2 = createObject("component", "pageFunc")>
            <cfset local.result7 = multiplyObj2.multiply(1, 2)>
            <p>multiply(1, 2) using createObject: #local.result7#</p>

            <cfset local.result8 = multiplyObj2.multiply(1, 2, 3)>
            <p>multiply(1, 2, 3) using createObject: #local.result8#</p>

            <cfset local.result9 = multiplyObj2.multiply(1, 2, 3, 4)>
            <p>multiply(1, 2, 3, 4) using createObject: #local.result9#</p>
        </cfoutput>
    </body>
</html>

