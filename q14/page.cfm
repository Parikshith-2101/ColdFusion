<cfapplication name = "app" sessionmanagement = "yes">
<html>
    <head>
        <title>14</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class = "d-flex flex-column align-items-center">
        <form method = "POST" class = "form-control w-50 mt-5" enctype = "multipart/form-data">
            <div class = "">
                <div class = "d-flex my-3 align-items-center">
                    <label for = "imageName" class="text-nowrap w-50">Enter Image name :</label>
                    <input type = "text" name = "imageName" class = "form-control">
                </div>
                <div class = "d-flex my-3 align-items-center">
                    <label for = "imageDesc" class="text-nowrap w-50">Enter Description :</label>
                    <textarea name="imageDesc" class = "form-control"></textarea>
                </div>
                <input type = "file" name = "imageFile" class = "form-control my-3">
                <input type = "submit" name ="Submit" type = "submit" class = "btn btn-primary form-control my-3">
                <div id = "Error"><div>
            </div>
        </form>


        <cfif structKeyExists(form,"Submit")>
            <cfobject name = "obj" component = "pageFunc">
            <cfset local.result  =  obj.calculate(form.imageName,form.imageFile)>

            <cfset newimagename = imageRead(form.imageFile)>
            <cfset session.imageName = form.imageName>
            <cfset session.imageDesc = form.imageDesc>
            <cfset session.imageFile = newimagename>
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