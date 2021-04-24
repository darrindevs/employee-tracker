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
    connection.query(`SELECT * FROM DEPARTMENT;`, function(err, res) {
        if (err) throw err;
        console.table(res);
        //promptUser();
    });
  }

  sqlTest();
  
  