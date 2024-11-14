<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>28</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container d-flex flex-column align-items-center">
        
            <cfif session.role EQ "admin" OR session.role EQ "editor">
                <cflocation  url = "admin.cfm" addToken = "No">
            </cfif>

            <cfoutput>
                <cfobject name = "objPageFunc" component = "components.pageFunc">
                <cfset local.result = objPageFunc.pageList()>
                <form method = "post" class = "w-50 form-control mt-5">
                    <h2 class = "text-center">CREATED PAGES</h2>
                    <cfloop query="#local.result#">
                        <div class = "w-100">
                            <button name = "btnName" value = "#pageID#" class = "form-control w-100 btn btn-success my-1">#pageName#</button>
                        </div>
                    </cfloop>  
                </form>
                <cfif structKeyExists(form, "btnName")>
                    <cfobject name="obj" component = "components.pageFunc">
                    <cfset local.pageDisplay = obj.pageDisplay(form.btnName)>                
                </cfif>
            </cfoutput>
            <a href = "##" onclick = "logout()" class = "form-control btn btn-danger w-50">Logout</a>
            <script src="../../bootstrap/js/bootstrap.min.js"></script>
            <script src = "../../jquery/jquery-3.7.1.min.js"></script>
            <script src = "js/script.js"></script>
        </div>
    </body>
</html>