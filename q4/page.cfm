<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>4</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class="d-flex justify-content-center">
        <cfoutput>
            <div>
                <form method = "post">
                    <div class="d-flex flex-column mt-5">
                        <h1>Date Function</h1>
                        <input type="submit" name="Submit" class="btn btn-primary mt-3">
                    </div>
                </form>
                <div class="text-center">       
                    <cfif structKeyExists(form, "Submit")>
                        <cfset local.objPageFunc = new components.pageFunc()> 
                        <cfset local.result = local.objPageFunc.calculate()>

                        <cfloop collection="#local.result#" item="key">
                            <b>#key# :</b> #local.result[key]# <br>
                        </cfloop>
                        <div class="mt-5">
                            <cfset local.result2 = local.objPageFunc.getLast5Days()>
                            <ul class="text-start">                           
                                <cfloop array="#local.result2#" item="item">
                                    <cfset local.color = local.objPageFunc.dayColor(item)>
                                    <li style = "color : #local.color#;">#dateFormat(item)# : #dateFormat(item,"dddd")#<br></li>
                                </cfloop>                           
                            </ul>       
                        </div>
                    </cfif>
                </div>
            </div>
        </cfoutput>
    </body>
</html>



