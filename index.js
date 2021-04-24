// dependencies 
const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');

// create the connection information for the sql database
const connection = mysql.createConnection({
  host: 'localhost',
  // Your port; if not 3306
  port: 3306,
  // Your username
  user: 'root',
  // Your password
  password: '', // MySQL not accepting a password value right now, fix with empty string
  database: 'fun_corpDB',
});

//* This is our basic connection to MySQL and output 
function sqlTest() {
    connection.query(`SELECT * FROM DEPARTMENT, ROLE_, EMPLOYEE;`, function(err, res) {
        if (err) throw err;
        console.table(res);
        //promptUser();
    });
  }

  
//* Start building with Inquirer   
const runApp = () => {
    inquirer
      .prompt({
        name: 'action',
        type: 'rawlist',
        message: 'What would you like to do?',
        choices: [
          'View all employees',
          'Thing 1',
          'Thing 2',
          'Thing 3',
          'Thing 4',
          'Thing 5',
        ],
      })
      .then((answer) => {
        switch (answer.action) {
          case 'View all employees':
            viewAll();
            break;
  
          case 'Thing 1':
            //thing1();
            foobar();
            break;
  
          case 'Thing 2':
            //thing2();
            foobar();
            break;
  
          case 'Thing 3':
            //thing3();
            foobar();
            break;
  
          case 'Thing 4':
            //thing4();
            foobar();
            break;

            case 'Thing 5':
            //thing5();
            foobar();
            break;
  
          default:
            console.log(`Invalid action: ${answer.action}`);
            break;
        }
      });
  };

//* View All Employees
const viewAll = () => {
    console.log("view all");
    connection.query(`SELECT * FROM DEPARTMENT, ROLE_, EMPLOYEE;`, function(err, res) {
        if (err) throw err;
        console.table(res);
    });
}
//Test function 
function foobar(){
    console.log("foobar");
}

//* Run the whole enchilada 
runApp();