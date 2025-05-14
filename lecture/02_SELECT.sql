-- SELECT
-- 특정 테이블에서 원하는 데이터를 조회 할 수 있다.

select * from sqldb.buytbl;

select userID, groupName from sqldb.buytbl;

select now();   -- 현재 시간출력

select concat('bear', '안녕', 'kb') as 인사;    -- as는 별칭 사용할 때


-- usertbl의 name, mobile1, mobile2를 조회
-- mobile1, mobile2은 붙여서 전화번호 라는 컬럼으로 조회
select name, concat(mobile1, mobile2) as 전화번호 from sqldb.usertbl;


