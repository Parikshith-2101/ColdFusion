<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>7</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class="d-flex justify-content-center">
        <cfapplication name="app" sessionmanagement="true">
        <div>
            <form method = "post">
                <div class="d-flex flex-column mt-5">
                    <h2>Key Value</h2>
                    <div class="d-flex my-3 text-nowrap">Key:<input type="text" name="userIn1" class="form-control ms-2"></div>
                    <div class="d-flex text-nowrap">Value:<input type="text" name="userIn2" class="form-control ms-2"></div>
                    <input type="submit" name="Submit" class="btn btn-primary mt-3">
                </div>
            </form>
            <div class="text-center">       
                <cfif structKeyExists(form, "Submit") AND len(trim(UserIn1)) AND len(trim(UserIn1))>
                    <cfset local.objPageFunc = new components.pageFunc()> 
                    <cfset local.result = local.objPageFunc.calculate(form.userIn1,form.userIn2)>
                    <cfdump var = "#local.result#">
                </cfif>
            </div>
        </div>
    </body>
</html>
