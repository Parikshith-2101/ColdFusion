<cfoutput>
<html>
<head>
    <title>19</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="text-center mt-5">
    
        <form method="post">
            <input type="submit" value="Submit" class="btn btn-primary">
        </form>

        <cfobject component = "pageFunc" name="obj">
        <cfset local.result = obj.calculate()>
        <p>Number of visits: #local.result#</p>
    </div>
</body>
</html>


</cfoutput>