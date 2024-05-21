create table member(id VARCHAR(20), pw VARCHAR(20), name VARCHAR(10), 
birth NUMBER, email VARCHAR(50), tel NUMBER, addr VARCHAR(100));
INSERT into member values('ehrrh1', 'qwe123', '독고', 920706, 'asd13@naver.com', 01048652453, '화곡3동');
select * from member;
commit;