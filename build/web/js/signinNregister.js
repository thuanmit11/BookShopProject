/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function validate(){
    var usernameReg = document.getElementById("usernameReg").value;
    var passwordReg = document.getElementById("passwordReg").value;
    var passwordRetype = document.getElementById("passwordRetype").value;
    var acceptTerm = document.getElementById("acceptTerm");
    var registerErrorMessage = document.getElementById("registerErrorMessage");
    
    console.log(usernameReg);
    console.log(passwordReg);
    console.log(passwordRetype);
    console.log(acceptTerm);
    console.log(registerErrorMessage);
    
    if (passwordReg != passwordRetype)
    {
        registerErrorMessage.innerHTML = 'Password does not match';
        return false;
    }
    else if (!acceptTerm.checked)
    {
        registerErrorMessage.innerHTML = 'Please accept the term';
        return false;
    }
    else
    {
        return true;
    }
}