document.getElementById("submit").disabled = true;
function validateMail() {
    let firstname = document.getElementById("userName").value;
    let userEmail = document.getElementById("userEmail").value;
    let errorMsg = document.getElementById("errorMsg");
    let result = true;  
    errorMsg.innerHTML = "";
    if (firstname == "" || userEmail == "") {
        errorMsg.innerHTML = "Please enter all details.";
        result = false;
    }
    if (!/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/.test(userEmail)) {
        errorMsg.innerHTML = "Please enter a valid email address.";
        result = false;
    }
    if (result) {
        $.ajax({
            type:"POST",
            url: "components/pageFunc.cfc?method=isMailExists",
            data: { userEmail: userEmail },
            success: function(response) {     
                if (response) {
                    
                    errorMsg.innerHTML = "This email is already subscribed.";
                    document.getElementById('submit').disabled = true;
                } else {
                    
                    errorMsg.innerHTML = "Subscribe";          
                    document.getElementById('submit').disabled = false;
                }
            }
        });
    }
}
function disableButton()
{
    document.getElementById("submit").disabled = true;
}