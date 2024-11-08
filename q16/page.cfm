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
                    <cfobject component="components.pageFunc" name="objPageFunc">
                    <cfset local.result = objPageFunc.calculate()>
                    <cfset local.row = 3>
                    <cfset local.col = 3>
                    <cfset local.start = 1>
                    <cfloop index = "r" from = "#local.start#" to = "#local.row#">
                        <cfloop index = "c" from = "#local.start#" to = "#local.col#">
                            #local.result[r][c]#
                        </cfloop>
                        <br>
                    </cfloop>
                </cfif> 
            </cfoutput>
        </div>
    </body>
</html>