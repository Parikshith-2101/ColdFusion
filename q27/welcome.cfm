<cfapplication name = "applicationName" sessionmanagement = "Yes">
    <html>
    <head>
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title>27</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
        <body>
            <cfoutput>
                <cfif NOT structKeyExists(session, "userName")>
                    <cflocation url="page.cfm" addToken = "no">
                </cfif>
                <div class = "container">
                    <form method = "post" class = "form-control mt-5 d-flex flex-column align-items-center"> 
                        <h2 class="my-5">WELCOME</h2>
                        <h2 class = "text-success text-uppercase">--><cfoutput>#session.userName#</cfoutput><--</h2>
                        <input type="submit" value = "Logout" class="btn btn-dark form-control w-25 my-5" name="logout">
                        <cfif structKeyExists(form, "logout")>
                            <cfset structDelete(session, "userName")>
                            <cflocation  url="page.cfm" addToken = "no">
                        </cfif>
                    </form>
                </div>
            </cfoutput>
        </body>
    </html>