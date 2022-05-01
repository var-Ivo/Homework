function login(input) {
    let username = input[0];
    let isLogged = false;
    for (let i = 1; i <= 4 && i < input.length; i++) {
        let password = input[i];
        let revPassword = '';
        for (let j = password.length - 1; j >= 0; j--) {
            revPassword += password[j];
        }
        if (username == revPassword) {
            isLogged = true;
            console.log(`User ${username} logged in.`);
        } else {
            if (i < 4) {
                console.log('Incorrect password. Try again.');
            }
        }
    }
    if (!isLogged) {
        console.log(`User ${username} blocked!`);
    }
}
login(['Acer','login','go','let me in','recA']);
login(['momo','omom']);
login(['sunny','rainy','cloudy','sunny','not sunny']);
