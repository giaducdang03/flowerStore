// function show password
    const togglePassword = document.querySelector('#showPassword');
    const password = document.querySelector('#password-text');

    togglePassword.addEventListener('click',showPassword);

    function showPassword() {
        // toggle the type attribute
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        // toggle the eye slash icon
        const icon = togglePassword.getAttribute('class') === 'fa-solid fa-eye' ? 'fa-solid fa-eye-slash' : 'fa-solid fa-eye';
        togglePassword.setAttribute('class', icon);
    }


    function login_regis() {
        var text1 = document.getElementById('dangky');
        var text2 = document.getElementById('dangnhap');
        var text3 = document.getElementById('login');
        var text4 = document.getElementById('register');
        if (text1.style.display === "none") {
            text1.style.display = 'flex';
            text4.style.zIndex = '0';
            text2.style.display = 'none';
            text3.style.display = 'block';              
     } else {
            text1.style.display = 'none';
            text3.style.display = 'none';
            text4.style.zIndex = '1';
            text2.style.display = 'flex';
        }
    }

    function forgot_pass() {
        var forgot = document.getElementById('forgot-pass');
        var show = document.getElementById('popup');

        if (forgot) {
            show.style.display = 'block';
        }
    }

    function hide() {
        var show = document.getElementById('popup');
        var close = document.getElementById('close');
        if (close) {
            show.style.display = 'none';
        }
    }





