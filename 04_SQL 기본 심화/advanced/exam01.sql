-- 1번: 사용자 별 총 구매 개수
select userID as '사용자 아이디', sum(amount) as '총 구매 개수'
from sqldb.buytbl
group by userID;

-- 2번: 사용자 별 총 구매액
select userID as '사용자 아이디', sum(amount * price) as '총 구매액'
from buytbl
group by userID;

-- 3번: 평균 구매 개수
select avg(amount) as '평균 구매 개수'
from buytbl;

-- 4번: 사용자 별 평균 구매 개수
select userID, avg(amount) as '평균 구매 개수'
from buytbl
group by userID;

-- 5번: 가장 키 큰 사람과 키가 작은 사람 출력
select name, height
from usertbl
where height = (select max(height) from usertbl)
or height = (select min(height) from usertbl);

-- 6번: 휴대폰 있는 사용자 출력하기
select count(mobile1) as '휴대폰이 있는 사용자'
from usertbl;

-- 7번: 사용자별 총 구매액 출력하기
select userID as 사용자, sum(amount * price) as 총구매액
from buytbl
group by 사용자;

-- 8번: 총 구매액이 1,000 이상인 사용자만 추력하세요
select userID as 사용자, sum(amount * price) as 총구매액
from buytbl
group by 사용자
having 총구매액 >= 1000;

