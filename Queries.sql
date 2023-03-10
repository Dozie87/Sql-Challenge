-- Data Analysis on my database
-- List the employee number, last name, first name, sex, and salary of each employee

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salary s
on e.emp_no = s.emp_no


--List the first name, last name, and hire date for the employees who were hired in 1986

Select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'


--List the manager of each department along with their department number, department name, employee number, last name, and first name

select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name 
From departments d
join dept_manager dm
on d.dept_no = dm.dept_no
join employees e
on e.emp_no = dm.emp_no


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

Select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
From departments d
join dept_emp dm
on d.dept_no = dm.dept_no
join employees e 
on e.emp_no = dm.emp_no


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees 
where first_name = 'Hercules' and last_name like 'B%'


--List each employee in the Sales department, including their employee number, last name, and first name

Select e.emp_no, e.last_name, e.first_name
From departments d
join dept_emp dm
on d.dept_no = dm.dept_no
join employees e 
on e.emp_no = dm.emp_no
where dept_name = 'Sales'


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select e.emp_no, e.last_name, e.first_name, d.dept_name
From departments d
join dept_emp dm
on d.dept_no = dm.dept_no
join employees e 
on e.emp_no = dm.emp_no
where dept_name in ('Sales', 'Development')


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

select last_name, count(last_name) as count_last_name
from employees
group by last_name
order by count_last_name
