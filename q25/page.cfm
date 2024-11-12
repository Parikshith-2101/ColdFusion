<html lang = "en">
<head>
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <title>25</title>   
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class = "container w-50">
        <form method="post" id="myForm" class="form-control mt-5">
            <div class="d-flex my-3 align-items-center">
                <label for="userInput" class="label w-25" id="errorLabelName">Enter the String :</label>
                <textarea name="userInput" class="form-control"></textarea>
            </div>
            <input type="submit" name="Submit" class = "form-control btn btn-primary my-2">
        </form>   
        <cfif structKeyExists(form, "Submit")>
            <cfobject name="objPageFunc" component = "components.tagCloud">
            <cfset local.result = objPageFunc.stringCheck(form.userInput)>
            <cfdump  var="#local.result#">
            <cfoutput>
                <cfloop collection="#local.result#" item = "key">
                    <div style = "font-size : #local.result[key]*20#px ;">#key#</div>
                </cfloop>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>