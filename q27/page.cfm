<html>
    <head>
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title>27</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class = "container w-50">
            <form method = "post" class = "form-control mt-5"> 
                <h2 class="my-3 text-center">User Login</h2> 
                <div class = "d-flex align-items-center my-3">
                    <label for = "userName" class = "w-25">Username :</label>
                    <input type = "text" name = "userName" class = "form-control">
                </div>
                <div class = "d-flex align-items-center mt-3">
                    <label for = "password" class = "w-25">Password :</label>
                    <input type = "password" name = "password" class = "form-control">
                </div>
                <input type = "submit" name = "Submit" value = "Login" class = "btn btn-primary my-3 form-control">  
            </form>
            <cfif structKeyExists(form,"Submit")>
                <cfset local.objpageFunc  =  new components.pageFunc()>
                <cfset local.result  =  local.objpageFunc.loginFunc(form.userName,form.password)>
                <cfif local.result EQ false>
                    <div class = "text-danger fw-bold">
                        <div class = "text-center">Invalid User</div>
                    </div>
                </cfif>
                <cfif local.result EQ true>
                    <cflocation  url="welcome.cfm" addToken = "no">
                </cfif>
            </cfif>
        </div>
    </body>
</html>
