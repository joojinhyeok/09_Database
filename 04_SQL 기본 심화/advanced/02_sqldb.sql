USE sqldb;

CREATE TABLE empTbl(emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));
INSERT INTO empTbl VALUES('나사장', NULL, '0000');
INSERT INTO empTbl VALUES('김재무', '나사장', '2222');
INSERT INTO empTbl VALUES('김부장', '김재무', '2222-1');
INSERT INTO empTbl VALUES('이부장', '김재무', '2222-2');
INSERT INTO empTbl VALUES('우대리', '이부장', '2222-2-1');
INSERT INTO empTbl VALUES('지사원', '이부장', '2222-2-2');
INSERT INTO empTbl VALUES('이영업', '나사장', '1111');
INSERT INTO empTbl VALUES('한과장', '이영업', '1111-1');
INSERT INTO empTbl VALUES('최정보', '나사장', '3333');
INSERT INTO empTbl VALUES('윤차장', '최정보', '3333-1');
INSERT INTO empTbl VALUES('이주임', '윤차장', '3333-1-1');

-- 앞에서 추가한 테이블에서 '우대리'의 상관 연락처 정보를 확인하세요
-- 출력할 정보 -> 부하직원, 직속상관, 직속상관연락처
select e1.emp as 부하직원, e1.manager as 직속상관, e2.emptel as 직속상관연락처
from empTbl e1
    join empTbl e2
    on e1.manager = e2.emp  -- e1의 상관이 e2의 사원
where e1.emp = '우대리'
