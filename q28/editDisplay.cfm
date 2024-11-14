<html>
    <head>
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container w-50">
            <cfif session.role EQ "admin" OR session.role EQ "editor">
            <cfelse>
                <cflocation  url="user.cfm" addToken = "No">
            </cfif>
            <cfoutput>
                <div class="form-control">
                    <cfif structKeyExists(session, "pageData")>
                        <h1>#session.editPageData.pageName#</h1>
                        <form method = "post" class = "d-flex flex-column h-50">
                            <textarea name = "pageDesc" class = "form-control h-50">#session.editPageData.pageDesc#</textarea>
                            <input type = "submit" name = "submit" class = "form-control btn btn-primary">
                        </form>
                    </cfif>
                    <cfif structKeyExists(form, "submit")>
                        <cfobject  name="obj" component = "components.pageFunc">
                        <cfset obj.updatePage(session.editPageData.pageID,form.pageDesc)>                  
                    </cfif>
                </div>
            </cfoutput>
        </div>
    </body>
</html>