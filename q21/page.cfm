<html>
    <head>
        <title>21</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    </head>
    <body class = "d-flex flex-column align-items-center">
        <form method = "POST" class = "form-control w-50 mt-5" enctype = "multipart/form-data">
            <div class = "">
                <div class = "d-flex my-3 align-items-center">
                    <label for = "userName" class="text-nowrap w-50">Birthday Baby Name :</label>
                    <input type = "text" name = "userName" class = "form-control">
                </div>
                <div class = "d-flex my-3 align-items-center">
                    <label for = "userEmail" class="text-nowrap w-50">Enter the mail:</label>
                    <input type = "email" name = "userEmail" class = "form-control">
                </div>
                <div class = "d-flex my-3 align-items-center">
                    <label for = "userText" class="text-nowrap w-50">Birthday Wishes :</label>
                    <textarea name = "userText" class = "form-control"></textarea>
                </div>
                <input type = "file" name = "userFile" class = "form-control my-3">
                <input type = "submit" name ="Submit" type = "submit" class = "btn btn-primary form-control my-3">
            </div>
        </form>
        <cfoutput>
        <cfif structKeyExists(form, "Submit") AND len(trim(form.userName)) AND len(trim(form.userEmail)) AND len(trim(form.userText))>
            <cfobject name="obj" component = "components.pageFunc">
            <cfset local.result = obj.calculate(form.userName,form.userEmail,form.userText,form.userFile)>
            <div class = "text-success">Mail sent Successfully</div>

        <cfelse>
            <div class = "text-danger">Please fill valid information<div>
        </cfif>
        </cfoutput>
    </body>
</html>