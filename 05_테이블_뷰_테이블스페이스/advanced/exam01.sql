use tabledb;

drop table if exists usertbl;

create table usertbl(
    userID char(8) not null primary key,
    name varchar(10) not null ,
    birthyear int not null
);


drop table if exists buytbl;

create table buytbl(
    num int auto_increment not null primary key,
    userID char(8) not null,
    prodName  char(6) not null
);

-- alter table로 외래키 추가
alter table buytbl
-- ADD contraint는 제약조건을 추가하는 쿼리문
-- FK_buytbl_userID 라는 이름의 제약조건을 추가
add constraint FK_buytbl_userID foreign key (userID)
-- references ~~ 뒤에 참조할 테이블명과 컬럼을 지정
references usertbl(userID);

-- 기존 buytbl, usertbl을 삭제하세요
drop table buytbl, usertbl;

-- 새로운 usertbl 정의
drop table if exists usertbl;

create table usertbl(
    userID char(8) not null primary key ,
    name varchar(10) not null ,
    birthyear int not null ,
    email varchar(30) unique -- unique: 중복 불가, null 허용
);

-- 기존 usertbl 삭제 및 새로운 usertbl 정의
drop table if exists usertbl;

create table usertbl(
    userID char(8) not null primary key ,
    name varchar(10),
    -- check(): 제약조건으로 해당 범위를 벗어나는 값은 입력이 거부
birthyear int check ( birthyear >= 1900 and birthyear <= 2023 ),
mobile char(3) not null
);

-- 기존 usertbl 삭제 및 새로운 usertbl 정의
drop table if exists usertbl;

create table usertbl(
    userID char(8) not null primary key ,
    name varchar(10) not null ,
    birthyear int not null default -1,
    addr varchar(2) not null default '서울',
    mobile1 char(3) ,
    mobile2 char(8) ,
    height tinyint unsigned default 170,    -- tinyint unsigned:  부호없음 0~255범위
    mDate date
);

-- 데이터 넣어보기
insert into usertbl (userID, name) values (1, '홍길동');

-- usertbl에 대해서 mobile1 컬럼 삭제
alter table usertbl
drop column mobile1;
-- name 컬럼명을 uName으로 변경
alter table usertbl
change name uName varchar(10);  -- 컬럼명 바꾸기: change나 rename column 사용
-- 기본키를 제거
alter table usertbl
drop primary key;