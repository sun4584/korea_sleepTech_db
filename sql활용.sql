CREATE DATABASE `baseball_league`; -- baseball_league 데이터 베이스 생성

USE baseball_league; -- baseball_league 사용 설정

CREATE TABLE `teams`(   -- team 테이블 생성
	team_id int  primary key,   -- team_id에 int(정수) 값 적용
    name varchar(100) not null,  -- name에 100자까지 작성가능한 문자열 적용
    city varchar(100) not null,   -- city에 100자까지 작성가능한 문자열 적용
    founded_year year not null    -- founded_year에 날짜형 데이터 적용
);

CREATE TABLE `players`(  -- players 테이블 생성
	player_id int primary key,   -- player_id에 int(정수) 값 적용
    name varchar(100) not null,   -- name에 100자까지 작성가능한 문자열 적용
    position enum('타자', '투수', '내야수', '외야수') not null--  position에 열거형 저장
);

ALTER TABLE `players` ADD COLUMN birth_date DATE;  --  players 테이블에 birth_date(생년월일) 컬럼을 DATE 타입으로 추가
desc teams;  -- teams 테이블 조회
desc players; -- players 테이블 조회

drop table if exists  games;  -- games가 존재할 경우 삭제
drop table if exists  players; -- players가 존재할 경우 삭제

drop database baseball_league; -- baseball_league 데이터베이스를 삭제