<html>
    <head>
        <title>17</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="d-flex flex-column align-items-center">
            <form method="post" class="mt-5" onsubmit = "return validate()">
                Enter number : <input type = "text" name = "userIn" id="userIn"><br>
                <input type = "submit" name="Submit" value="Submit"  class="btn btn-primary mt-3"><br>
                <div id="error" class="text-danger fw-bold mt-3"></div>
            </form>
            <cfoutput>
                <cfif structKeyExists(form, "Submit")> 
                    <cfobject component = "pageFunc" name = "objPageFunc">
                    <cfset local.result = objPageFunc.calculate(form.userIn)>

                    <cfloop collection = "#local.result#" item = "item">
                        <div style = "color:#local.result[item]#">#item#</div>
                    </cfloop>

                </cfif> 
            </cfoutput>
        </div>
        <script src = "script.js"></script>
    </body>
</html>

