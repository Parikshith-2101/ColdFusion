<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>24</title>
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container w-50">
        <h1 class="mt-5">Subscribe Form</h1>
        <form method="post" class="form-control my-3">
            <div class="d-flex my-3">
                <label for="userName" class="w-25">First Name :</label>
                <input type="text" class="form-control" name="userName" id="userName" onkeydown="disableButton()">
            </div>
            <div class="d-flex my-3">
                <label for="userEmail" class="w-25">Email id :</label>
                <input type="text" class="form-control" name="userEmail" id="userEmail" >
            </div>
            <div class="text-center fw-bold my-3" id="errorMsg"></div>
            <div class="d-flex">
                <button type="button" name="checkBtn" class="form-control btn btn-primary" onclick="validateMail()">Check</button>
                <input type="submit" name="Submit" id="submit" class="btn btn-success form-control ms-2">
            </div>
        </form>
        <cfif structKeyExists(form, "Submit")>
            <cfobject name="objPageFunc" component = "components.pageFunc">
            <cfset local.result = objPageFunc.isMailExists(form.userEmail)>
            <cfset local.result2 = objPageFunc.queryInsert(form.userName,form.userEmail)>
            <div class="text-success fw-bold text-center"><cfdump  var="#local.result2#"></div>
        </cfif>
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/script.js"></script> 
</body>
</html>
