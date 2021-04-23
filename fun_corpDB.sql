DROP DATABASE IF EXISTS fun_corpDB;
CREATE database fun_corpDB;
​
USE fun_corpDB;
​
CREATE TABLE department (
  id INT NOT NULL,
  dept_name VARCHAR(30), /* to hold department name */
  PRIMARY KEY (id)
);
​
CREATE TABLE role_ (
  id INT NOT NULL,
  title VARCHAR(30), /* to hold role title */
  salary DECIMAL(10,4) NULL, /* to hold role salary */
  department_id INT NOT NULL, /* to hold reference to department the role belongs to */
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT NOT NULL, /* to hold reference to role employee has */
  manager_id INT NULL, /* to hold reference to another employee that manages the employee being Created. This field may be null if the employee has no manager */
  PRIMARY KEY (id)
);
​
SELECT * FROM fun_corpDB;
