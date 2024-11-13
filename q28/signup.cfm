<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container w-50">
            <form method="post" class="form-control mt-5 p-3">
                <h2>CMS SIGNUP PAGE</h2>
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
                <div class="d-flex align-items-center my-3">
                    <label for="confirmPassword" class="w-25">Re-enter Password :</label>
                    <input type="password" name="confirmPassword" class="form-control">
                </div>
                <div id = "confirmPasswordError" class = "text-danger text-center"></div>
                <div class="d-flex align-items-center my-3">
                    <label for="role" class="w-25">Select Role :</label>
                    <select name="role" class="form-control">
                        <option value=""></option>
                        <option value="user">USER</option>
                        <option value="admin">ADMIN</option>
                        <option value="editor">EDITOR</option>
                    </select>
                </div>
                <div id = "roleError" class = "text-danger text-center"></div>
                <input type="submit" value="Signup" name="submit" class="form-control btn btn-primary my-3" onclick = "return signupValidate()">
            </form>
            <cfif structKeyExists(form, "submit")>
                <cfobject name = "objPageFunc" component = "components.pageFunc">
                <cfset local.result = objPageFunc.signup(form.userName,form.password,form.role)>
                <cfif local.result EQ true>
                    Account Created.
                    <a href = "index.cfm">Click here to Login</a>
                <cfelse>
                    UserName already Exists. <a href = "index.cfm">Login</a>
                </cfif>
            </cfif>
        </div>
        <script src = "js/script.js"></script>
    </body>
</html>
