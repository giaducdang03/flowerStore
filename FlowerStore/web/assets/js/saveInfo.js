function saveInfo() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password-text").value;

    document.cookie = "username=" + username + "; path=http://localhost/assHoadnt/Assignment_Car_saler/web/";
    document.cookie = "password=" + password + "; path=http://localhost/assHoadnt/Assignment_Car_saler/web/";
}


function getCookie(cname) {
    var name = cname + "=";
    var decodedCokkie = decodeURIComponent(document.cookie);
    var ca = decodedCokkie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function getCookiedata() {
    var user = getCookie('username');
    var password = getCookie('password');

    document.getElementById('username').value=user;
    document.getElementById('password-text').value=password;
}

