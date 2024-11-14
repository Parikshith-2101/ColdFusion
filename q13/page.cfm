<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>13</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class="d-flex justify-content-center">
        <cfoutput>
            <div class="w-50">
                <form method = "post">
                    <div class="d-flex flex-column mt-5 w-100">
                        <input type="text" name="string" value = "The quick brown fox jumps over the lazy dog" class="form-control border-0">
                        <div class="d-flex mb-3 mt-3 text-nowrap align-items-center">Key :<input type="text" name="userIn" class="form-control ms-2"></div>
                        <input type="submit" name="Submit" class="btn btn-primary mt-3">
                    </div>
                </form>
                <div class="text-center">       
                    <cfif structKeyExists(form, "Submit") AND len(trim(form.userIn))>
                        <cfset local.objPageFunc = new components.pageFunc()> 
                        <cfset local.result = local.objPageFunc.calculate(form.string,form.userIn)>
                        Found the keyword "<b>#form.userIn#</b>" for <b>#local.result# times</b> - #form.string#
                    </cfif>
                </div>
            </div>
        </cfoutput>
    </body>
</html>



