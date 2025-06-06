/*
컬럼 목록
- userID CHAR(8) not null PRIMARY KEY
- name VARCHAR(10) not null
- birthYear int not null
- addr NCHAR(2) not null
*/

use testdb;
drop table if exists usertbl;

create table usertbl(
    userID CHAR(8) not null PRIMARY KEY,
    name VARCHAR(10) not null,
    birthYear int not null,
    addr NCHAR(2) not null
)

/*
아래 데이터를 추가하고, 클러스터형 인덱스의 테이블 내용을 확인하세요.
'LSG', '이승기', 1987, '서울'
'KBS', '김범수', 1979, '경남'
'KHH', '김경호', 1971, '전남'
'JYP', '조용필', 1950, '경기'
'S나', '성시경', 1979, '서울'
*/

insert into usertbl
values ('LSG', '이승기', 1987, '서울'),
        ('KBS', '김범수', 1979, '경남'),
        ('KHH', '김경호', 1971, '전남'),
        ('JYP', '조용필', 1950, '경기'),
        ('S나', '성시경', 1979, '서울')

select * from usertbl;

-- usertbl에서 primary key 제약조건 삭제
alter table usertbl drop PRIMARY KEY ;
alter table usertbl
    add constraint pk_name primary key (name);

select *
from usertbl;
