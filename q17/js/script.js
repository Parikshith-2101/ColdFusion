function validate() {
    let n = document.getElementById("userIn").value;
    let errorDiv = document.getElementById("error");

    if (isNaN(n) || n.trim() === "") {
        errorDiv.textContent = "Please enter a valid number";
        return false;
    }
    return true;
}