function loginValidate() {
    document.getElementById('nameError').innerText = '';
    document.getElementById('passwordError').innerText = '';
    const userName = document.getElementsByName('userName')[0].value.trim();
    const password = document.getElementsByName('password')[0].value.trim();
    let isValid = true;

    if (userName === '') {
        document.getElementById('nameError').innerText = 'Username is required';
        isValid = false;
    }

    if (password === '') {
        document.getElementById('passwordError').innerText = 'Password is required';
        isValid = false;
    }

    return isValid;
}
function signupValidate() {
    document.getElementById('nameError').innerText = '';
    document.getElementById('passwordError').innerText = '';
    document.getElementById('confirmPasswordError').innerText = '';
    document.getElementById('roleError').innerText = '';
    
    const userName = document.getElementsByName('userName')[0].value.trim();
    const password = document.getElementsByName('password')[0].value.trim();
    const confirmPassword = document.getElementsByName('confirmPassword')[0].value.trim();
    const role = document.getElementsByName('role')[0].value;
    const emailCheck = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    const passCheck = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(\W|_))$/;
    let isValid = true;

    if (userName === '' || !emailCheck.test(userName)) {
        document.getElementById('nameError').innerText = 'Enter valid username! Username should be an email';
        isValid = false;
    }

    if (password.length < 5) {
        document.getElementById('passwordError').innerText = 'Password must be at least 5 characters';
        isValid = false;
    } else if (password === '' || !passCheck.test(password)) {
        document.getElementById('passwordError').innerText = 'Password is required! Password should be strong';
        isValid = false;
    }

    if (confirmPassword === '') {
        document.getElementById('confirmPasswordError').innerText = 'Please confirm your password';
        isValid = false;
    } else if (confirmPassword !== password) {
        document.getElementById('confirmPasswordError').innerText = 'Passwords do not match';
        isValid = false;
    }

    if (role === '') {
        document.getElementById('roleError').innerText = 'Please select a role';
        isValid = false;
    }

    return isValid;
}
function logout(){  
    if(confirm("Logout! Are you sure?"))
    {
        $.ajax({
            url: 'components/pageFunc.cfc?method=logout',
            method: 'GET',
            success: function() {
                window.location.href = "index.cfm";
            }
        });
    } 
}
function deletePage(pageID){
    if(confirm("Delete! Are you sure?")){
        $.ajax({
            type: "POST",
            url: "components/pageFunc.cfc?method=deletePage",
            data: {
            pageID: pageID.value
            },
            success: function() {
                location.reload()
            },
        });
    }
}           
