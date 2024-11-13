<html>
    <head>
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
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
                <div class="form-control">
                    <cfif structKeyExists(session, "pageData")>
                        <h1>ADD Page</h1>
                        <form method = "post">
                            <input type = "text" name = "pageName" placeholder = "name">
                            <input type = "text" name = "pageDesc" placeholder = "desc">
                            <input type = "submit" name = "submit">
                        </form>
                    </cfif>
                    <cfif structKeyExists(form, "submit")>
                        <cfobject  name="obj" component = "components.pageFunc">
                        <cfset local.result = obj.addPage(form.pageName,form.pageDesc)>
                        <cfif local.result EQ true>
                            Page Added SuccessFully! Click here to go back to <a href = "admin.cfm">Admin Page</a>
                        <cfelse>
                            PageName Already exists! <a href = "admin.cfm">Admin Page</a>
                        </cfif>
                    </cfif>
                </div>
            </cfoutput>
        </div>
    </body>
</html>