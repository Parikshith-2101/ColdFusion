function loginValidate() {
    document.getElementById('nameError').innerText = ''
    document.getElementById('passwordError').innerText = ''
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

    let isValid = true;

    if (userName === '') {
        document.getElementById('nameError').innerText = 'Username is required';
        isValid = false;
    }

    if (password === '') {
        document.getElementById('passwordError').innerText = 'Password is required';
        isValid = false;
    } else if (password.length < 6) {
        document.getElementById('passwordError').innerText = 'Password must be at least 6 characters';
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
