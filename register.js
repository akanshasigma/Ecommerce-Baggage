/**
 * Created by Akansha on 1/11/20.
 */

var arr = [];
function register() {

    var email = document.forms['signup']['email'].value;
    var x = email.indexOf('@');
    var y = email.lastIndexOf('.');

    var firstName = document.getElementById('fname').value;
    var lastName = document.getElementById('lname').value;
    var emailAddress = document.getElementById('email').value;
    var phoneNum = document.getElementById('phone').value;
    var password = document.getElementById('password').value;
    var password_confirm = document.getElementById('cpassword').value;
    var image = document.getElementById('image').value;

    if (firstName == '') {
        document.getElementById('formvalidation').innerHTML = 'Please enter your first name';
        return false;
    }
    else if (lastName == '') {
        document.getElementById('formvalidation').innerHTML = 'Please enter your last name';
        return false;
    }

    else if (emailAddress == '') {
        document.getElementById('formvalidation').innerHTML = 'Please enter your email address';
        return false;
    }
    else if (x < 1 || y < x + 2 || y + 2 >= email.length) {
        document.getElementById('formvalidation').innerHTML = 'Please enter your email like exapmle@gmail.com';
        return false;
    }
    else if (phoneNum == '') {
        document.getElementById('formvalidation').innerHTML = 'Please enter your phone number';
        return false;
    }
    else if (phoneNum.length != 10) {
        document.getElementById('formvalidation').innerHTML = 'Phone number should be 10 digits only';
        return false;
    }
    else if (password == '') {
        document.getElementById('formvalidation').innerHTML = 'Please enter your password';
        return false;
    }
    else if (password_confirm == '') {
        document.getElementById('formvalidation').innerHTML = 'Please enter your confirmation password';
        return false;
    }
    else if (password_confirm !== password) {
        document.getElementById('formvalidation').innerHTML = 'Passwords do not match';
        return false;
    }
    else if(image == '') {
        document.getElementById('formvalidation').innerHTML = 'Please upload your document';
        return false;
    }

    
    document.getElementById('fname').value = '';
    document.getElementById('lname').value = '';
    document.getElementById('email').value = '';
    document.getElementById('phone').value = '';
    document.getElementById('password').value = '';
    document.getElementById('cpassword').value = '';
    document.getElementById('image').value = '';

}
function cleartxt(){
    document.getElementById('formvalidation').innerHTML = '';
}
