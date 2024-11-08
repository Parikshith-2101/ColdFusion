<html>
    <head>
        <title>JSON to Table Format</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class="d-flex flex-column align-items-center">
        <h1>JSON to Table Format</h1>
        <form method="post" class="mt-5 w-25">
            <input type="submit" name="Submit" class="form-control btn btn-primary">
        </form>

        <cfoutput>
            <cfif structKeyExists(form, "Submit")>
                <cfobject name="objPageFunc" component="components.pageFunc">
                <cfset local.result = objPageFunc.calculate()>
                <div class="mt-5 w-75">
                    <table class="table border border-2">
                        <tr>
                            <cfloop array="#local.result#" item="local.array" index="i">
                                <cfif i EQ 1>
                                    <cfloop collection="#local.array#" item="key">
                                        <th>#key#</th>
                                    </cfloop>
                                </cfif>
                            </cfloop>
                        </tr>
                        <cfloop array="#local.result#" item="item">
                            <tr>
                                <cfloop collection="#item#" item="key">
                                    <td>#item[key]#</td>
                                </cfloop>
                            </tr>
                        </cfloop>
                    </table>
                </div>
            </cfif>
        </cfoutput>
    </body>
</html>
