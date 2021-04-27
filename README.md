# employee-tracker

## About

This command line app demonstrates the use of MySQL to Create, Read, Update and Delete a database of company employees. 

## Screenshots

![Employee Tracker](https://vimeo.com/541961752)

## Technologies Used

🏗 JavaScript - JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm.

♻️ Node.js - Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser.

📦 npm - npm is a package manager for the JavaScript programming language. npm, Inc. is a subsidiary of GitHub, that provides hosting for software development and version control with the usage of Git. npm is the default package manager for the JavaScript runtime environment Node.js.

🔑 mysql - mysql is a node.js driver for mysql. It is written in JavaScript and does not require compiling.

❓ Inquirer - Inquirer is a collection of common interactive command line user interfaces.

🍴 console.table - console.table adds console.table method that prints an array of objects as a table in console.

🌈 Chalk - Chalk is an NPM package that provides colorful terminal string styling. 

☑️ Git - Git is software for tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development.

⛅️ GitHub - GitHub, Inc. is a provider of Internet hosting for software development and version control using Git.


## Code Snippet 

~~~
//* View All Employees
const viewAll = () => {
    console.log("view all employees");
    connection.query(`SELECT id, first_name, last_name, role_title, dept FROM employees;`, function(err, res) {
        if (err) throw err;
        // wait 3 seconds and then prompt user again
        setTimeout(runApp, 3000); 
        console.table(res);
    });
}
~~~


## Author

🤓 [darrindevs](https://github.com/darrindevs)



