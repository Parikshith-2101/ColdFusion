function validate(){
    let n = document.getElementById("userIn").value;
    let errorDiv = document.getElementById("error");
    errorDiv.textContent = "";
    if(isNaN(n)){
        errorDiv.textContent = "Please enter valid number";
    }
}