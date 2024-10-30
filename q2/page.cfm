<cfoutput>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>

<body class="d-flex justify-content-center">

    <div>
        <form action="" method="post">
            <div class="d-flex flex-column">
                <label>Enter a number between 1 and 5</label>
                <input type="number" name="rating" class="form-control">
                <input type="submit" name="Submit" class="btn btn-primary mt-3">
            </div>
        </form>

        <div class="text-center">       
            <cfif structKeyExists(form, "rating") AND len(form.rating) GT 0>
                <cfset obj = new pageFunc()> 
                <cfset local.result = obj.calculate(form.rating)>
                #local.result#
            </cfif>
        </div>

    </div>

</body>

</html>
</cfoutput>


