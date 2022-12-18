-- 테이블 생성
create table member
(
	id		varchar2(15) primary key,
	password	varchar2(10)
	name	varchar2(20),
	age		number,
	gender	char(6),
	addr	varchar2(100),
	reg_date	date	default sysdate	
)

select * from member