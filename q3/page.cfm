<cfoutput>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>

<body class="d-flex justify-content-center">

    <div>
        <form action="">
            <div class="d-flex flex-column">
                <label>Find the number divisible by 3</label>
                <input type="text" name="userIn" class="form-control">
                <input type="submit" name="Submit" class="btn btn-primary mt-3">
            </div>
        </form>

        <div class="text-center">       
            <cfif structKeyExists(form, "userIn") AND len(form.userIn) GT 0>
                <cfset obj = new pageFunc()> 
                <cfset result = obj.calculate(form.UserIn)>
                #result#
            </cfif>
        </div>

    </div>

</body>

</html>
</cfoutput>



