create table member(
	id varchar2(20), 
	name varchar2(20),
	passwd varchar2(30),
	gender varchar2(10),
	birth varchar2(10),
	email varchar2(100),
	mobile varchar2(30),
	CONSTRAINT PK_member PRIMARY KEY(id))
	

select * from member;
drop table member purge;
select * from board_3;
drop table board_3 purge;
delete from member where id = 'otk3'


create table board_3(
	num number(10) not null,
	id varchar2(20) not null,
	title varchar2(50) not null,
	regdate date null,
	content varchar2(3000) null,
	hit number(10) null,
	primary key(num),
	CONSTRAINT FK_member FOREIGN KEY(id)
	REFERENCES member(id))
	
create sequence board_seq_3
start with 1
increment by 1
maxvalue 100000
nocache

create table twoboard(
	num number(10),
	id varchar2(20),
	title varchar2(50),
	regdate date null,
	content varchar2(3000),
	hit number(10),
	primary key(num))
	
select * from boardtwo


create sequence twoboard_seq
start with 1
increment by 1
maxvalue 100000
nocache

	
	