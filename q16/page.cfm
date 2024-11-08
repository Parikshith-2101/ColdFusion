<html>
    <head>
        <title>16</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="text-center">
            <h1>3x3 Grid</h1>
            <cfoutput>
                <form method="post">
                    <input type="Submit" name="Submit" value="Submit" class="btn btn-primary"><br>
                </form>
                <cfif structKeyExists(form, "Submit")>
                    <cfobject component="pageFunc" name="objPageFunc">
                    <cfset local.result = objPageFunc.calculate()>

                    <cfloop index = "r" from = "1" to = "3">
                        <cfloop index = "c" from = "1" to = "3">
                            #local.result[r][c]#
                        </cfloop>
                        <br>
                    </cfloop>
                </cfif> 
            </cfoutput>
        </div>
    </body>
</html>