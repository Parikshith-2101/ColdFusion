<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>20</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class="d-flex flex-column align-items-center justify-content-center">
        <cfoutput>
            <form method="post" class="w-25 form-control d-flex flex-column mt-5">
                <div class="d-flex my-4 align-items-center">
                    <label for="userEmail" class="form-label text-nowrap me-3">Enter your email :</label>
                    <input type="text" name="userEmail" class="form-control">
                </div>
                <cfimage action="captcha" text="string123" difficulty="high" class="w-100">
                <div class="d-flex my-4 align-items-center">
                    <label for="userCaptcha" class="form-label text-nowrap me-3">Enter the Captcha :</label>
                    <input type = "text" name="userCaptcha" class="form-control">
                </div>
                <input type="submit" name="submit" class="form-control btn btn-primary">
            </form>
            <cfif structKeyExists(form, "submit")>
                <cfobject name="objPageFunc" component="pageFunc">
                <cfset local.result = objPageFunc.calculate(form.userEmail,form.userCaptcha)>
                <cfset opArray = listToArray(local.result,":",false,true)>
                <span style = "color : #opArray[1]#">
                    #opArray[2]#
                </span>
            </cfif>
        </cfoutput>
    </body>
</html>
