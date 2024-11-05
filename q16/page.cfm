<cfoutput>

<html>
<head>
    <title>16</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="text-center">
        <h1>3x3 Grid</h1>
        <form method="post">
            <input type="Submit" name="Submit" value="Submit" class="btn btn-primary"><br>
            
        </form>
        <cfif structKeyExists(form, "Submit")>
            <cfobject component="pageFunc" name="matobj">
            <cfset local.result = matobj.calculate()>
        </cfif> 

    </div>
</body>
</html>


</cfoutput>