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
                        <h1>#session.editPageData.pageName#</h1>
                        <form method = "post">
                            <input type = "text" name = "pageDesc" value = "#session.editPageData.pageDesc#">
                            <input type = "submit" name = "submit">
                        </form>
                    </cfif>
                    <cfif structKeyExists(form, "submit")>
                        <cfobject  name="obj" component = "components.pageFunc">
                        <cfset local.result = obj.updatePage(session.editPageData.pageID,form.pageDesc)>                   
                    </cfif>
                </div>
            </cfoutput>
        </div>
    </body>
</html>