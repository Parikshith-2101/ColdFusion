<html>
    <head>
        <title>19</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="text-center mt-5">
            <cfoutput>
                <form method="post">
                    <input type="submit" value="Submit" class="btn btn-primary">
                </form>

                <cfobject component = "components.pageFunc" name="objPageFunc">
                <cfset local.result = objPageFunc.calculate()>
                <p>Number of visits: #local.result#</p>
            </cfoutput>
        </div>
    </body>
</html>

