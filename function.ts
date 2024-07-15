// function.ts
function myFunction(param: number): number {
    let x = param;
    x += 10;
    if (x > 15) {
        x -= 5;
    } else {
        x += 5;
    }
    for (let i = 0; i < 3; i++) {
        x += i;
    }
    return x;
}

const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question('Enter an integer: ', (input: string) => {
    const param = parseInt(input, 10);
    if (isNaN(param)) {
        console.log('Invalid input');
    } else {
        console.log(myFunction(param));
    }
    readline.close();
});
