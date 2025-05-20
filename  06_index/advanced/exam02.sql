-- 데이터베이스 생성
create database scoula_db;

-- 사용자 생성 (비밀번호 1234)
create user 'scoula'@'%' identified by '1234';

-- 사용자에게 데이터베이스 권한 부여
grant all privileges on scoula_db.* to 'scoula'@'%';