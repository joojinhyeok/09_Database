use employees;

-- emp_no, birth_date, first_name, last_name, gender, hire_date, title, t_from, t_to, salary, s_from, s_to
create view employees_info as
select e.emp_no, e.birth_date, e.first_name, e.last_name, e.gender, e.hire_date, t.title, t.from_date as t_from, t.to_date as t_to, s.salary, s.from_date as s_from, s.to_date as s_to
from employees e
inner join titles t
on e.emp_no = t.emp_no
inner join salaries s
on e.emp_no = s.emp_no;

-- EMPLOYEES_INFO 뷰에서 재직자의 현재 정보만 출력하세요
select *
from employees_info
where s_to = '9999-01-01'
order by emp_no;

-- emp_dept_infro 뷰 작성
DROP VIEW IF EXISTS emp_dept_info;

create view emp_dept_info as
select e.emp_no, de.dept_no, d.dept_name, de.from_date, de.to_date
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no;

select *
from emp_dept_info
order by emp_no
limit 7;

select *
from emp_dept_info
where to_date = '9999-01-01'
order by emp_no;

