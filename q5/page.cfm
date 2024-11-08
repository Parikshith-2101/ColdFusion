<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content="width=device-width, initial-scale=1.0">
        <title>5</title>
        <link rel = "stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class = "d-flex justify-content-center">
        <cfoutput>
            <div>
                <form method = "post">
                    <div class = "d-flex flex-column mt-5">
                        <h1>Age Calculator</h1>
                        <div class = "d-flex mb-3 text-nowrap align-items-center mt-4">
                            <label>Enter ur DOB:</label>
                            <input type = "date" name = "userIn1" class = "form-control ms-2">
                        </div>
                        <div class = "d-flex text-nowrap align-items-center">
                            <label>Mother's DOB:</label>
                            <input type = "date" name = "userIn2" class = "form-control ms-2">
                        </div>
                        <input type = "submit" name = "Submit" class = "btn btn-primary mt-3">
                    </div>
                </form>
                <div class = "text-center">       
                    <cfif structKeyExists(form, "Submit") AND len(form.userIn1) AND len(form.userIn2)>
                        <cfset local.objpageFunc = new components.pageFunc()> 
                        <cfset local.result = local.objpageFunc.calculate(form.userIn1,form.userIn2)>

                        <cfloop collection = "#local.result#" item = "key">
                            #key# : <b>#local.result[key]#</b> <br>
                        </cfloop>
                    </cfif>

                </div>

            </div>
        </cfoutput>
    </body>
</html>



