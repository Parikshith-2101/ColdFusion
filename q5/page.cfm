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
        <form action="" method = "post">
            <div class="d-flex flex-column mt-5">
                <div class="d-flex mb-3 text-nowrap">Enter ur DOB:<input type="date" name="userIn1" class="form-control ms-2"></div>
                <div class="d-flex text-nowrap">Mother's DOB:<input type="date" name="userIn2" class="form-control ms-2"></div>
                
                <input type="submit" name="Submit" class="btn btn-primary mt-3">
            </div>
        </form>

        <div class="text-center">       
            <cfif structKeyExists(form, "userIn1") AND structKeyExists(form, "userIn2")>
                <cfset obj = new pageFunc()> 
                <cfset local.result = obj.calculate(form.userIn1,form.userIn2)>
            </cfif>
        </div>

    </div>

</body>

</html>
</cfoutput>



