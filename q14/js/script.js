function validate() {
    let imgName = document.getElementsByName("imageName").value;
    let imgFile = document.getElementsByName("imageFile");
    let nameError = document.getElementById("nameError");
    if (imgName.length == 0) {
        nameError.textContent = "Please Enter the Name";
    }
    event.preventDefault();
}