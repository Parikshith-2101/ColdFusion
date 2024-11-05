<cfoutput>

<html>
<head>
    <title>17</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="text-center">

        <form method="post" class="mt-5">
            Enter number : <input type = "text" name = "userIn" id="userIn"><br>
            <input type = "Submit" name="Submit" value="Submit" onclick = "validate()" class="btn btn-primary mt-3"><br>
            <div id="error" class="text-danger fw-bold mt-3"></div>
        </form>
        <cfif structKeyExists(form, "userIn")>
            <cfobject component="pageFunc" name="matobj">
            <cfset local.result = matobj.calculate(form.userIn)>
        </cfif> 

    </div>
    <script src = "script.js"></script>
</body>
</html>


</cfoutput>