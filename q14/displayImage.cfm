<html>
    <head>
        <title>14</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body>

        <cfoutput>
            <div class="d-flex flex-column align-items-center">
                <cfimage action="writeToBrowser" source="#session.imageFile#">
                <div><b>Name : </b><span>#session.imagename#</span></div>
               <div><b>Description : </b><span>#session.imageDesc#</span><div>
            </div>
        </cfoutput>
    </body>
<html>