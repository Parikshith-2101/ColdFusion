<html>
    <head>
        <title>12</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class="d-flex flex-column align-items-center">
        <form action="page.cfm" method="post" class="form-control w-25 d-flex flex-column mt-5">
            <div class="my-3 d-flex">
                <label for="number">Enter a number (less than 10):</label>
                <input type="number" id="number" name="number" min="1" max="9" class="form-control">
            </div>
            <input type="submit" name="Submit" class="btn btn-primary my-3">
        </form>
        <cfif structKeyExists(form, "Submit") AND len(trim(form.number))>
            <cfset local.objPageFunc = new components.pageFunc()>
            <cfset local.result = local.objPageFunc.calculate(form.number)>

            <cfset local.query = local.result[1]>
            <cfoutput>
                <h2>Firstname and LastName Columns</h2>
                <table border = "1">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                    </tr>   
                    <cfloop query="local.query">
                        <tr>
                            <td>#FirstName#</td>
                            <td>#LastName#</td>
                        </tr>
                    </cfloop>
                </table>

                <h3 class = "mt-3">#form.number#th row FirstName : #local.result[2]#</h3>                   
            </cfoutput>
        </cfif>
    </body>
</html>

