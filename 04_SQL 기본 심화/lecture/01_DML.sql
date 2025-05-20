/*
DML (Data Mainpulation Language)
-- 데이터 조작언어, 테이블에 값을 삽입, 수정, 삭제 하는 SQL
*/

/*
INSERT
- 새로운 행을 추가하는 구문
- null 허용 가능한 컬럼이나 auto increment가 있는 컬럼 제외하고
  insert 하고 싶은 데이터 컬럼을 지정해서 INSERT 가능


- PRIMARY KEY: 기본키, 유일성과 최소성을 만족, 해당 행을 식별할 때 사용되는 값
*/

insert into employees.employees values (1, 20250514, '진혁', '주', 'M', 20250514);

-- 컬럼명 명시하면 INSERT 시 데이터의 순서 변경이 가능

insert into
    employees.employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
values
    (2, 20250514, '가연', '옥', 'F', 20250514);

-- 여러 컬럼을 한번에 insert
insert into
    employees.employees
values
    (3, 20250514, '규연', '김', 'F', 20250514),
    (4, 20250514, '가연', '옥', 'M', 20250514);


-- UPDATE
-- 테이블에 기록된 컬럼의 값을 수정하는 구문
select * from employees.employees where last_name = '규연';

update employees.employees set last_name ='김', first_name = '규연' where last_name = '규연';
update employees.employees set last_name ='송', first_name = '민지' where last_name = '옥';

-- DELETE
-- 테이블의 행을 삭제하는 구문
delete from employees.employees where last_name = '김';

-- REPLACE
-- insert 할때 primary key 혹은 unique key가 충돌될경우 해당 행에 덮어씌우기
insert into employees.employees
values
    (5, 20250514, '석현', '구', 'M', 20250514);

insert into employees.employees
values
    (5, 20250514, '석', '구', 'M', 20250514);
