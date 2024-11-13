<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <cfobject name = "objPageFunc" component = "components.pageFunc">
                <cfset local.result = objPageFunc.pageList()>
                <form method = "post" class = "form-control mt-5">
                    <h2 class = "text-center">Admin Created Pages</h2>
                    <cfloop query="#local.result#">
                        <div class = "d-flex my-3">
                            <button name = "btnName" value = "#pageID#" class = "form-control w-75 btn btn-success">#pageName#</button>
                            <button name = "editBtn" value = "#pageID#" class = "form-control w-25 mx-2 btn btn-info">edit</button>
                            <button name = "dltBtn" value = "#pageID#" class = "form-control w-25 btn btn-secondary">delete</button>
                        </div>
                    </cfloop>  
                </form>
                <cfif structKeyExists(form, "btnName")>
                    <cfobject name="obj" component = "components.pageFunc">
                    <cfset local.pageDisplay = obj.pageDisplay(form.btnName)>
                </cfif>
                <cfif structKeyExists(form, "editBtn")>
                    <cfobject name="obj" component = "components.pageFunc">
                    <cfset local.pageDisplay = obj.editPage(form.editBtn)>
                </cfif>
                <cfif structKeyExists(form, "dltBtn")>
                    <cfobject name="obj" component = "components.pageFunc">
                    <cfset local.pageDisplay = obj.deletePage(form.dltBtn)>
                    <cflocation  url="admin.cfm" addToken = "No">
                </cfif>
                <a href = "addPage.cfm" class = "form-control btn btn-warning my-2">Add Page</a>
                <a href = "components/pageFunc.cfc?method=logout" class = "form-control btn btn-danger">Logout</a>
            </cfoutput>
            <script src="../../bootstrap/js/bootstrap.min.js"></script>
        </div>
    </body>
</html>