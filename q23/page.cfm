<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>23</title>
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <div class="logo">
                <a href="#" class=""></a>
            </div>
            <form onsubmit="return validate()" method = "post">
                <header class="form-header">
                    <h2 class="form-title">Employment Application</h2>
                    <div class="">Infinity Box Inc.</div>
                </header>
                <div id="errorMsg" class="d-none">
                    <div class="errorMsgDiv d-flex flex-column align-items-center">
                        <p class="msg">There was a problem with your submission.</p>
                        <div>Errors have been <span class="errorMsgSpan">highlighted</span></div>
                    </div>
                </div>
                <div class="d-flex flex-column mt-2">
                    <label class = "form-label">Which position are you applying for ?<span class="text-danger">*</span></label>
                    <select name="position" id="selectPosition">
                        <option value=""></option>
                        <option value="Interface Designer">
                            Interface Designer
                        </option>
                        <option value="Software Engineer">
                            Software Engineer
                        </option>
                        <option value="System Administrator">
                            System Administrator
                        </option>
                        <option value="Office Manager">
                            Office Manager
                        </option>
                    </select>
                    <div id="selectError" class="errorText"></div>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label class = "form-label">Are you willing to relocate ?<span class="text-danger">*</span></label>
                    <div class="form-radio"><input type="radio" name="willing" id="willing" class="me-2">Yes</div>
                    <div class="form-radio"><input type="radio" name="willing" id="willing2" class="me-2">No</div>
                    <div id="willingError" class="errorText"></div>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label class="form-label">When can you start?<span class="text-danger">*</span></label>
                    <input type="date" name="dateOfStart" id="dateOfStart">
                    <div id="dateError" class="errorText"></div>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label class="form-label">Portfolio Web Site</label>
                    <input type="text" name="websiteLink" id="websiteLink" value="http://">
                    <div id="linkError" class="errorText"></div>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label class="form-label">Attach a copy of your resume</label>
                    <input type="file" name="resume" id="resume">
                    <p><small>Word or pdf document only</small></p>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label class="form-label">Salary Requirements</label>
                    <div>$<input type="text" name="salary" id="salary"></div>
                </div>
                <header class="form-header2 mt-3">
                    <h6 class="mt-3">Your Contact Information</h6>
                </header>
                <div class="d-flex flex-column mt-3">
                    <label  class="form-label">Name<span class="text-danger">*</span></label>
                    <div class="d-flex">
                        <span class="fs-7">
                            <div><input type="text" name="firstName" id="firstName"></div>
                            First  
                        </span>
                        <span class="fs-7">
                            <div><input type="text" name="lastName" id="lastName"></div>
                            Last 
                        </span>
                    </div>
                    <div id="nameError" class="errorText"></div>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label  class="form-label">Email Address<span class="text-danger">*</span></label>
                    <input type="email" name="email" id="email">
                    <div id="emailError" class="errorText"></div>
                </div>
                <div class="d-flex flex-column mt-3">
                    <label  class="form-label">Phone<span class="text-danger">*</span></label>
                    <input type="tel" name="phone" id="phone">
                    <div id="phoneError" class="errorText"></div>
                </div>
                <input type="submit" name="Submit" class="mt-4">
                <footer>
                    <div class="recaptcha-text">
                        This site is protected by reCAPTCHA Enterprise and the Google
                        <a href="https://policies.google.com/privacy">Privacy Policy</a> and
                        <a href="https://policies.google.com/terms">Terms of Service</a> apply.
                    </div>
                </footer>
            </form>
            <cfif structKeyExists(form, "Submit")>
                <cfobject name="objPageFunc" component = "components.pageFunc">
                <cfset local.result = objPageFunc.queryInsertion(form.position,form.willing,form.dateOfStart,form.websiteLink,form.resume, form.salary, form.firstName,form.lastName,form.email,form.phone)>
                <cfoutput>
                    <div class = "text-success fs-4 bg-light text-center border border-dark rounded-pill my-3">#local.result#</div>
                </cfoutput>
            </cfif>
        </div>
        <script src="js/script.js"></script>
    </body>
</html>