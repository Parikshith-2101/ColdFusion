<html>
    <head>
        <title>14</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class = "d-flex flex-column align-items-center">
        <form method = "POST" class = "form-control w-50 mt-5" enctype = "multipart/form-data" onsubmit = "return validate()">
            <div class = "">
                <div class="d-flex flex-column my-3">
                    <div class = "d-flex align-items-center">
                        <label for = "imageName" class="text-nowrap w-50">Enter Image name :</label>
                        <input type = "text" name = "imageName" class = "form-control">
                    </div>
                    <div id = "nameError" class = "mx-auto"></div>
                </div>
                <div class = "d-flex my-3 align-items-center">
                    <label for = "imageDesc" class="text-nowrap w-50">Enter Description :</label>
                    <textarea name="imageDesc" class = "form-control"></textarea>
                </div>
                <input type = "file" name = "imageFile" class = "form-control my-3">
                <input type = "submit" name ="Submit" class = "btn btn-primary form-control my-3">
                <div id = "Error"><div>
            </div>
        </form>
        <script src = "js/script.js"></script>

        <cfif structKeyExists(form,"Submit") AND structKeyExists(form, "imageFile")>

            <cfset local.newImageName = imageRead(form.imageFile)>
            <cfset session.imageName = form.imageName>
            <cfset session.imageDesc = form.imageDesc>
            <cfset session.imageFile = local.newImageName>
            <div class = "d-flex justify-content-center align-items-center">
                <b>
                    <cfdump var="#form.imageName#">
                </b>

                <a href="displayImage.cfm" class="ms-3">
                    <cfimage action="writeToBrowser" source="#form.imageFile#" width="80" height="50">
                </a>
            </div>
        </cfif>

    </body>
</html>