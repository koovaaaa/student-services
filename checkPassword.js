var form = document.getElementById('form');

function checkPassword(){
    var password = document.getElementById('password').value;
    if(password.length >5)
    {
        form.submit();
    }
    else{
        alert('Lozinka mora da sadrzi najmanje 6 karaktera!');
    }
}