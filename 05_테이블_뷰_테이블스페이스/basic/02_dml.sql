use tabledb;

INSERT INTO usertbl (userID, name, birthyear, addr, mobile1, mobile2, height, mDate)
VALUES
    ('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-08-08'),
    ('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-04-04'),
    ('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-07-07');


INSERT INTO buytbl (userID, prodName, groupName, price, amount)
VALUES('KBS', '운동화', NULL, 30, 2);

INSERT INTO buytbl (userID, prodName, groupName, price, amount)
VALUES('KBS', '노트북', '전자', 1000, 1);

# -- userID가 외래키이므로 usertbl에 'JYP'에 해당하는 데이터가 있어야 함
    /*
INSERT INTO buytbl (userID, prodName, groupName, price, amount)
VALUES('JYP', '모니터', '전자', 200, 1);
*/

-- 제품명이 노트북인 데이터 삭제
-- delete
-- from buytbl
-- where prodName = '노트북';


DROP TABLE IF EXISTS usertbl;

CREATE TABLE usertbl (
                         userID CHAR(8) NOT NULL PRIMARY KEY,
                         name VARCHAR(10) NOT NULL,
                         birthyear INT NOT NULL

);

DROP TABLE IF EXISTS prodTbl;

CREATE TABLE prodTbl (
                         prodCode CHAR(3) NOT NULL PRIMARY KEY ,
                         prodID CHAR(4) NOT NULL PRIMARY KEY ,
                         prodDate DATETIME NOT NULL,
                         proCur CHAR(10)
);