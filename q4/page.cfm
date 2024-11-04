<cfoutput>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>4</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>

<body class="d-flex justify-content-center">

    <div>
        <form action="" method = "post">
            <div class="d-flex flex-column mt-5">
                
                <input type="submit" name="Submit" class="btn btn-primary mt-3">
            </div>
        </form>

        <div class="text-center">       
            <cfif structKeyExists(form, "Submit")>
                <cfset obj = new pageFunc()> 
                <cfset local.result = obj.calculate()>

                <cfloop collection="#local.result#" item="key">
                    #key# : #local.result[key]# <br>
                </cfloop>
                <div class="mt-5">
                    <cfset local.result2 = obj.getLast5Days()>

                    <ul class="text-start">
                    
                        <cfloop array="#local.result2#" item="item">
                            <cfset local.color = obj.dayColor(item)>
                            <li style = "color : #local.color#;">#dateFormat(item)# : #dateFormat(item,"dddd")#<br></li>
                        </cfloop>
                    
                    </ul>
                        
                </div>
            </cfif>
        </div>

    </div>

</body>

</html>
</cfoutput>



