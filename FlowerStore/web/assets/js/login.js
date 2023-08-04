// function forgot password
const togglePassword = document.querySelector('#forgotPassword');
togglePassword.addEventListener('click', forgotPassowrd);

function forgotPassowrd() {
    const icon = togglePassword.getAttribute('class') === 'fa fa-paper-plane' ? 'fa fa-refresh fa-spin' : 'fa fa-paper-plane';
    togglePassword.setAttribute('class', icon);
}

let timeout;
function myFunction() {
    timeout = setTimeout(forgotPassowrd, 10000);
}






