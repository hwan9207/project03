
CREATE SEQUENCE board_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table board(bno int primary key, 
    title varchar(200), 
    content varchar(1000), 
    author varchar(20) default 'admin',
    vcnt int default 0, 
    resdate timestamp default systimestamp);

create table member(id varchar(20) primary key,
    pw varchar(300) not null,
    name varchar(100) not null,
    email varchar(200) not null, 
    tel varchar(100) not null,
    addr1 varchar(200), 
    addr2 varchar(100), 
    postcode varchar(20),
    birth date, point int default 1000, 
    regdate timestamp default systimestamp);

CREATE SEQUENCE free_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table free(no int primary key,
    title varchar(200), 
    content varchar(1000),
    hits int default 0, 
    resdate timestamp default systimestamp,
    id varchar(20), 
    name varchar(100));

alter table free add constraint fk_mem 
foreign key (id) references member(id);

CREATE SEQUENCE qna_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table qna(no int primary key,
    title varchar(200), 
    content varchar(1000),
    lev int default 1, 
    parno int default 0, 
    hits int default 0, 
    resdate timestamp default systimestamp,
    id varchar(20), 
    name varchar(100));

alter table qna add constraint fk_mem0 
foreign key (id) references member(id);

CREATE SEQUENCE file_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table fileboard(no int primary key,
    title varchar(200), 
    content varchar(1000), 
    url varchar(300),
    hits int default 0, 
    resdate timestamp default current_timestamp,
    author varchar(20));

CREATE SEQUENCE product_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table product(pno int primary key,
    cate varchar(20) not null, 
    pname varchar(100) not null, 
    com varchar(1000), 
    price int default 1000, 
    img varchar(300),
    img2 varchar(300),
    img3 varchar(300));

CREATE SEQUENCE inventory_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table inventory(ino int primary key,
    pno int, 
    iprice int default 1000, 
    oprice int default 1000,
    amount int default 1,
    remark varchar(200),
    foreign key(pno) references product(pno),
    resdate timestamp default systimestamp); 
    
CREATE SEQUENCE sales_s START WITH 1 INCREMENT BY 1 NOCYCLE;
    
create table sales(sno int primary key,
    pno int, 
    amount int default 1, 
    tot int, 
    id varchar(20),
    paymethod varchar(20), 
    paynum varchar(30), 
    addr varchar(300), 
    tel varchar(100), 
    delcom varchar(50), 
    deltel varchar(50), 
    delno varchar(50), 
    delstatus varchar(20), 
    st varchar(20),
    resdate timestamp default systimestamp);

alter table sales add constraint fk_mem1 
foreign key (id) references member(id);

alter table sales add constraint fk_pro1 
foreign key (pno) references product(pno);


CREATE SEQUENCE basket_s START WITH 1 INCREMENT BY 1 NOCYCLE;

create table basket(bno int primary key,
    id varchar(20), 
    pno int,
    amount int,
    remark varchar(100),
    resdate timestamp default systimestamp);

alter table basket add constraint fk_mem2 
foreign key (id) references member(id);

alter table basket add constraint fk_pro2 
foreign key (pno) references product(pno);

insert into board values (board_s.nextval, '글 제목', '글 내용', 'admin', default, default);
insert into free values (free_s.nextval, '글 제목', '글 내용', default, 'id', 'name');
insert into qna values (qna_s.nextval, '글 제목', '글 내용', default, default, default, default, '아이디', '작성자명');
insert into fileboard values (file_s.nextval, '자료실 글 제목', '자료실 글 내용', '파일명', default, default, 'admin');
insert into product values (product_s.nextval, '#{cate}', '#{pname}', '#{com}', 1000, '#{img}', '#{img}', '#{img}');
insert into inventory values (inventory_s.nextval, 1000, 10, 10, 10, '#{remark}', default);
insert into sales values (sales_s.nextval, 10, default, 2,'#{member.id}', '#{paymethod}', '#{paynum}', '#{addr}', '#{tel}','#{delcom}', '#{deltel}', '#{delno}', '#{delstatus}', '#{st}', default);
insert into basket values (basket_s.nextval, '아이디', 1, 2, '', default);
	 
		
