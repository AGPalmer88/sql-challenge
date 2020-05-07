--Drop Table if exists employee CASCADE;

create table employee (
	emp_no int Primary Key not null,
	emp_title_id varchar(30) not null, 
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date date not null
);


create table departments (
	dept_no varchar(10) not null,
	dept_name varchar(100) not null,
	Primary Key (dept_no)
);


create table dept_emp (
	emp_no int not null,
	dept_no varchar(10) not null,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	Primary Key (emp_no, dept_no)
);


create table dept_manager (
	dept_no varchar(10) not null,
	emp_no int not null,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);


create table salaries (
	emp_no int not null,
	salary int not null,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);


create table titles (
	emp_title_id varchar(30) not null,
	title varchar(100) not null,
	FOREIGN KEY (emp_title_id) REFERENCES employee (emp_title_id),
	PRIMARY KEY (emp_title_id)

);