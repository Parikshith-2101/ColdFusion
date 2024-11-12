function validate(){
    let result = true ;
    let errorText = 'This field is required. Please enter a value.';

    let errorMsgDiv = document.getElementById("errorMsg");
    let selectPosition = document.getElementById("selectPosition").value;
    let willingSelect = document.querySelector('input[name="willing"]:checked');
    let startDate = document.getElementById("dateOfStart").value;
    let websitelink = document.getElementById("websiteLink").value;
    let firstName = document.getElementById("firstName").value;
    let lastName = document.getElementById("lastName").value;
    let email = document.getElementById("email").value;
    let phone = document.getElementById("phone").value;

    document.getElementById("selectError").textContent = '';
    document.getElementById("willingError").textContent = '';
    document.getElementById("dateError").textContent = '';
    document.getElementById("linkError").textContent = '';
    document.getElementById("nameError").textContent = '';
    document.getElementById("emailError").textContent = '';
    document.getElementById("phoneError").textContent = '';

    if(selectPosition === ''){
        result = false;
        document.getElementById("selectError").textContent = errorText;
    }
    if (!willingSelect) {
        result =  false;
        document.getElementById("willingError").textContent = errorText;
    }
    if(startDate === ''){
        result = false;
        document.getElementById("dateError").textContent = errorText;
    }
    if(websitelink.length < 8 || websitelink === ''){
        result = false;
        document.getElementById("linkError").textContent = errorText;
    }
    if(firstName === '' && lastName === ''){
        result = false;
        document.getElementById("nameError").textContent = errorText;
    }
    if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) || email ===''){
        result = false;
        document.getElementById("emailError").textContent = errorText;
    }
    if(phone ==='' || /^\d{10}$/.test(phone)){
        result = false;
        document.getElementById("phoneError").textContent = errorText;
    }

    if(!result){
        errorMsgDiv.classList.remove("d-none");
    }
    return result;
}