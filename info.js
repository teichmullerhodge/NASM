const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question("Name: ", (userName) => {
    rl.question("Age: ", (age) => {
        console.log(`\nYour name is: ${userName}`);
        console.log(`Your age is: ${age}`);
        rl.close();
    });
});
