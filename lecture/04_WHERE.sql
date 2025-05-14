-- WHERE
-- 특정 조건에 맞는 레코드(데이터)만을 선택하는데 사용됨

-- [ = ] 같음 연산자를 사용한 where절
select *
from employees.employees
where gender = 'M'
limit 5;

-- AND 연산자: 둘 다 true여야 true / 하나라도  false면 false
-- OR 연산자 : 둘 중 하나라도 true면 true
-- AND가 OR보다 우선순위가 높다

-- 1: true / 0: false
select 1 or 0 and 0;
select (1 or 0) and 0;

select first_name, last_name, gender
from employees.employees
where gender <> 'M' AND emp_no < '10050';

-- BETWEEN
-- 경계값을 포함한, 사이값을 포함
select *
from employees.employees
where emp_no >= 10050 and emp_no <= 10060;

select *
from employees.employees
-- where emp_no between 10050 and 10060;
where emp_no not between 10050 and 499995;   -- 부정표현(경계값 및 사이값 포함안하고 나머지 출력)

/*
LIKE
- 특정 패턴과 일치하는 행을 검색

패턴
- % : 0개 이상의 문자를 나타냄
ex. '%apple%' -> apple이 포함된 모든 문자열
- _ : 1개의 문자를 나타냄
ex. 'a_k' 는 a로 시작하고 k로 끝나는 세글자 문자열을 의미
*/

select first_name
from employees.employees
where first_name like 'Aa%';

/*
IN 연산자
- 특정 열의 값이 지정된 목록중 하나와 일치하는지 확인하는데 사용
*/

select *
from employees.employees
where emp_no in (1, 2, 3, 4, 5);    -- 1,2,3,4,5와 일치하는지 확인해서 일치하는 데이터만 가져옴