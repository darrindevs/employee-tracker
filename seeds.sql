/* Kept getting DB instertion error for manager id - so skipped it -
same for ROLE id 
example:
INSERT INTO employees (first_name, last_name, role_ID, manager_ID)
VALUES ("Jim", "Halpert", 20, 10);

INSERT INTO employees (first_name, last_name, role_ID, manager_ID)
VALUES ("Michael", "Scott", 10, 10);
INSERT INTO employees (first_name, last_name, role_ID, manager_ID)
VALUES ("Jim", "Halpert", 20, 10);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Pam", "Beesly", 21);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Andy", "Bernard", 21);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Dwight", "Schrute", 21);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Creed", "Bratton", 30);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Buck", "Wilson", 40);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Lucy", "Wilson", 41);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Kelly", "Kapoor", 50);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Bob", "Jones", 60);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Alice", "Smith", 61);
INSERT INTO employees (first_name, last_name, role_ID)
VALUES ("Jerry", "Porter", 70);*/

/* use this - somehow the first record worked , but all after failed with role_id and manager_id*/
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Michael", "Scott", 10, "Manager", "Management", "");
INSERT INTO employees (first_nameI, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Jim", "Halpert", 20, "Sales Manager", "Sales", "Michael Scott");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Pam", "Beesly", 21, "Sales Associate", "Sales", "Jim Halpert");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Andy", "Bernard", 21, "Sales Associate", "Sales", "Jim Halpert");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Dwight", "Schrute", 21, "Sales Associate", "Sales", "Jim Halpert");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Creed", "Bratton", 30, "QC Manager", "Quality Control", "Michael Scott");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Buck", "Wilson", 31, "QC Associate", "Quality Control", "Creed Brtton");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Lucy", "Wilson", 31, "QC Associate", "Quality Control", "Creed Brtton");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Kelly", "Kapoor", 40, "Customer Relations", "Customer Relations", "Michael Scott");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Bob", "Jones", 41, "Customer Relations", "Customer Relations", "Kelly Kapoor");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Alice", "Smith", 60, "Head of HR", "HR", "Michael Scott");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Jerry", "Porter", 61, "HR Associate", "HR", "Alice Smith");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Tony", "Danza", 61, "Operations Associate", "Operations", "Alice Smith");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("John", "Seql", 61, "Operations Associate", "Operations", "Alice Smith");
INSERT INTO employees (first_name, last_name, role_ID, role_title, dept, manager_name)
VALUES ("Amy", "Ford", 61, "Operations Associate", "Operations", "Alice Smith");



INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Manager", 120000, "Management", 10);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Head of Sales", 85000, "Sales", 20);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Sales Associate", 70000, "Sales", 21);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("QC Manager", 90000, "Quality Control", 30);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Marketing Manager", 100000, "Marketing", 40);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Marketing Associate", 80000, "Marketing", 41);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Customer Relations", 65000, "Customer Relations", 50);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Head of HR", 105000, "HR", 60);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("HR Associate", 65000, "HR", 61);
INSERT INTO roles (title, salary, dept, role_id)
VALUES ("Operations Associate", 55000, "Operations", 70);


INSERT INTO depts (dept_id, dept_name)
VALUES (1, "Management");
INSERT INTO depts (dept_id, dept_name)
VALUES (2, "Sales");
INSERT INTO depts (dept_id, dept_name)
VALUES (3, "Quality Control");
INSERT INTO depts (dept_id, dept_name)
VALUES (4, "Marketing");
INSERT INTO depts (dept_id, dept_name)
VALUES (5, "Customer Relations");
INSERT INTO depts (dept_id, dept_name)
VALUES (6, "HR"); 
INSERT INTO depts (dept_id, dept_name)
VALUES (7, "Operations");
    
    
    
    
    
    
    