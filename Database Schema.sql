-- Creating my database schema
Create table departments (
	dept_no varchar(30) Primary key,
	dept_name varchar(255) not null
);

Create table title(
	title_id varchar(10) primary key,
	title varchar(25) not null
);

Create table employees(
	emp_no varchar(30) primary key,
	emp_title_id varchar not null(10),
	birth_date not null date,
	first_name varchar not null (255),
	last_name varchar not null (255),
	sex varchar not null (10),
	hire_date not null date,
	Foreign key(emp_title_id) references title(title_id)
);

Create table dept_emp(
	emp_no varchar not null (30),
	dept_no varchar not null(30),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	Constraint PK_dm primary Key (emp_no, dept_no)
);

Create table salary (
	emp_no varchar(30) primary key,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);

Create table dept_manager(
	dept_no varchar not null(30),
	emp_no varchar not null(30),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	Constraint PK_da primary Key (emp_no, dept_no)
);
