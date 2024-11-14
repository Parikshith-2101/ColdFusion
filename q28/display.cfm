<html>
    <head>
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class = "d-flex align-items-center bg-secondary">
        <div class="container w-50">
            <cfoutput>
                <form class="form-control text-center h-75">
                    <cfif structKeyExists(session, "pageData")>
                        <div class = "form-control fs-1 text-uppercase bg-success text-light">#session.pageData.pageName#</div>
                        <textarea class = "form-control h-75 mb-1" readonly>#session.pageData.pageDesc#</textarea>
                    </cfif>
                    <cfif session.role EQ "admin">
                        <a href = "admin.cfm" class = "btn btn-primary form-control">Back</a>
                    <cfelse>
                        <a href = "user.cfm" class = "btn btn-primary form-control">Back</a>
                    </cfif>
                </form>
            </cfoutput>
        </div>
    </body>
</html>