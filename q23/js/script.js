function validate(){
    let selectPosition = document.getElementById("selectPosition").value;
    let errorMsgDiv = document.getElementById("errorMsg");
    let result = false ;
    let willingRadio = document.getElementById("willing").Checked;
    let willingRadio2 = document.getElementById("willing2").Checked;

    if(selectPosition){
        result = true;
    }
    if(willingRadio||willingRadio2){
        result = true;
    }



}