<html>
    <head>
        <title>18</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="mt-5 d-flex flex-column align-items-center justify-content-center">
            <cfoutput>
                <h1>Query without using cfquery tag</h1>
                <form method="post">
                    <input type="submit" value="Submit" name="Submit" class="btn btn-primary">
                </form>

                <cfif structKeyExists(form, "Submit")>
                    <cfobject component = "pageFunc" name="objPageFunc">
                    <cfset local.result = objPageFunc.calculate()>
                    <cfdump  var="#local.result#">
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>

