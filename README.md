# Employee-Database

This repo contains the data model of a database which contains information about employees between the 1980s and 1990s. It also contains SQL statements for various analysis. 

Concepts covered:
* data modeling;
* SQL

# ERD
![ERD](https://github.com/aktavern/Employee-Database/blob/master/ERD.png "ERD")

1. Tables 'employees' and 'departments' contain primary keys, which are used as foreign keys in other tables. 
2. Other tables have one to many relationships with 'emp_no' and 'dept_no.' For example, one salary may be associated with multiple emp_no. Or, one dept_no may be associated with multiple dept_no or emp_no. 
