<html>
<head>
    <meta name = "viewport" content = "width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel = "stylesheet" href = "../../bootstrap/css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/admin.css">
</head>
<body>
    <nav class = "navbar align-items-center">
        <a href = "#" class = "navbar-brand ms-2 fs-4">Admin Panel</a>
        <ul class = "d-flex list-unstyled my-0 align-items-center">
            <li class = "nav-item">
                <a class = "nav-link" href = "admin.cfm">Home</a>
            </li>
            <li class = "nav-item mx-3">
                <a class = "nav-link" href = "##" onclick = "logout()">Logout</a>
            </li>
        </ul>
    </nav>

    <div class = "container mt-5 w-75">
        <cfif session.role EQ "admin" OR session.role EQ "editor">
        <cfelse>
            <cflocation url = "user.cfm" addToken = "No">
        </cfif>
        <cfoutput>
            <cfobject name = "objPageFunc" component = "components.pageFunc">
            <cfset local.result = objPageFunc.pageList()>

            <h2 class = "text-center mb-4">Admin Pages</h2>
            <form method = "post">
                <cfloop query = "#local.result#">
                    <div class = "card shadow-lg rounded p-4 mb-4">
                        <div class = "d-flex justify-content-between align-items-center">
                            <button name = "btnName" value = "#pageID#" class = "w-75 pageNameBtn">
                                #pageName#
                            </button>
                            <div class = "action-buttons d-flex">
                                <button name = "editBtn" value = "#pageID#" class = "btn btn-info mx-2">Edit</button>
                                <button name = "dltBtn" type = "button" onclick = "deletePage(this)" value = "#pageID#" class="btn btn-danger">Delete</button>
                            </div>
                        </div>
                    </div>
                </cfloop>
                <a href="addPage.cfm" class="form-control btn btn-success addPageBtn my-2">Add Page</a>
            </form>

            <cfif structKeyExists(form, "btnName")>
                <cfobject name="obj" component="components.pageFunc">
                <cfset local.pageDisplay = obj.pageDisplay(form.btnName)>
            </cfif>
            <cfif structKeyExists(form, "editBtn")>
                <cfobject name="obj" component="components.pageFunc">
                <cfset local.pageDisplay = obj.editPage(form.editBtn)>
            </cfif>
        </cfoutput>
    </div>

    <script src="../../bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../jquery/jquery-3.7.1.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
