<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container w-50">
            <form method="post" class="form-control mt-5 p-3">
                <h2>CMS LOGIN PAGE</h2>
                <div class="d-flex align-items-center my-3">
                    <label for="userName" class="w-25">Username :</label>
                    <input type="text" name="userName" class="form-control">
                </div>
                <div id = "nameError" class = "text-danger text-center"></div>
                <div class="d-flex align-items-center my-3">
                    <label for="password" class="w-25">Password :</label>
                    <input type="password" name="password" class="form-control">
                </div>
                <div id = "passwordError" class = "text-danger text-center"></div>
                <input type="submit" value="Login" name="submit" class="form-control btn btn-primary my-3" onclick = "return loginValidate()">
                <a href="signup.cfm" class="form-control text-center">Don't have an account ?Create one</a>
            </form>
            <cfif structKeyExists(form, "submit") AND len(trim(form.userName)) AND len(trim(form.password))>
                <cfobject name = "objPageFunc" component = "components.pageFunc">
                <cfset local.result = objPageFunc.validation(form.userName,form.password)>
                <cfif local.result EQ true>
                    <cfif session.role EQ "user">
                        <cflocation url = "user.cfm" addToken = "No">
                    <cfelse>
                        <cflocation url = "admin.cfm" addToken = "No">
                    </cfif>
                <cfelse>
                    <div class = "text-danger text-center fw-bold">Enter valid username</div>
                </cfif>
            </cfif>
        </div>
        <script src = "js/script.js"></script>
    </body>
</html>