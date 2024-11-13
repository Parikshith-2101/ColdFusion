<html>
    <head>
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class = "d-flex align-items-center bg-secondary">
        <div class="container w-50">
            <cfif structKeyExists(session, "role")>
                <cfif session.role EQ "admin" OR session.role EQ "editor">
                <cfelse>
                    <cflocation  url="user.cfm" addToken = "No">
                </cfif>
            <cfelse>
                <cflocation  url="index.cfm" addToken = "No">
            </cfif>
            <cfoutput>
                <form class="form-control text-center h-75">
                    <cfif structKeyExists(session, "pageData")>
                        <div class = "form-control fs-1 text-uppercase bg-success text-light">#session.pageData.pageName#</div>
                        <textarea class = "form-control h-75 mb-1" readonly>#session.pageData.pageDesc#</textarea>
                    </cfif>
                    <a href = "user.cfm" class = "btn btn-primary form-control">Back</a>
                </form>
            </cfoutput>
        </div>
    </body>
</html>