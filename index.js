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
  database: 'dmDB',
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
          'View all roles',
          'View all departments',
          'Add an employee',
          'Add a new department',
          'Remove a department',
        ],
      })
      .then((answer) => {
        switch (answer.action) {
          case 'View all employees':
            viewAll();
            break;
  
          case 'View all departments':
            //thing1();
            viewDepts();
            break;
  
          case 'View all roles':
            //thing2();
            viewRoles();
            break;
  
          case 'Add an employee':
            //thing3();
            addEmployee();
            break;
  
          case 'Add a new department':
            //thing4();
            addDept();
            break;

            case 'Remove a department':
            //thing5();
            deleteDept();
            break;
  
          default:
            console.log(`Invalid action: ${answer.action}`);
            break;
        }
      });
  };

//* View All Employees
const viewAll = () => {
    console.log("view all employees");
    connection.query(`SELECT * FROM employees;`, function(err, res) {
        if (err) throw err;
        // wait 3 seconds and then prompt user again
        setTimeout(runApp, 3000); 
        console.table(res);
    });
}

//* View All Roles
const viewRoles = () => {
  console.log("view all roles");
  connection.query(`SELECT * FROM roles;`, function(err, res) {
      if (err) throw err;
      // wait 3 seconds and then prompt user again
      setTimeout(runApp, 3000); 
      console.table(res);
  });
}

//* View All Depts
const viewDepts = () => {
  console.log("View all departments");
  connection.query(`SELECT id, dept_name FROM depts;`, function(err, res) {
      if (err) throw err;
      console.table(res);
      // wait 3 seconds and then prompt user again
      setTimeout(runApp, 3000); 
  });
}

//* Add employees
function addEmployee () {
  inquirer.prompt([
      {
          name: 'first',
          type: 'input',
          message: 'Let\'s add a new employee. \n What is their first name?'
      },
      {
          name: 'last',
          type: 'input',
          message: 'What is their last name?'
      },
      {
        name: 'select_role',
        type: 'rawlist',
        message: 'Select their role',
        choices: [
          'Manager',
          'Sales Manager',
          'Sales Associate',
          'QR Manager',
          'Quality Control',
          'Customer Relations',
          'HR Manager',
          'HR Associate',
          'Operations',
        ],
      },
  ]).then((answer) => {
      console.log('Add a new employee \n');
      connection.query('INSERT INTO employees SET ?',{
          first_name: answer.first,
          last_name: answer.last,
          role_title: answer.select_role,
      }, (err, res) => {
          if(err) throw err;
          viewAll();
      });
  });
};

//* Add Department
function addDept () {
  inquirer.prompt([
      {
        name: 'select_dept',
        type: 'rawlist',
        message: 'Add a new department',
        choices: [
          'Research & Development',
          'Engineering',
          'Support',
          'Public Relations',
          'Distribution',
        ],
      },
  ]).then((answer) => {
      console.log('Add a new department \n');
      connection.query('INSERT INTO depts SET ?',{
          dept_name: answer.select_dept,
      }, (err, res) => {
          if(err) throw err;
          viewDepts();
      });
  });
};

//* Delete Department
function deleteDept () {
  inquirer.prompt([
      {
        name: 'delete_dept',
        type: 'rawlist',
        message: 'Delete a department',
        choices: [
          'Research & Development',
          'Engineering',
          'Support',
          'Public Relations',
          'Distribution',
        ],
      },
  ]).then((answer) => {
      console.log('Remove a department \n');
      connection.query('DELETE FROM depts WHERE ?',{
          dept_name: answer.delete_dept,
      }, (err, res) => {
          if(err) throw err;
          viewDepts();
      });
  });
};
//Test function 
function foobar(){
    console.log("foobar");
}

//* Run the whole enchilada 
runApp();