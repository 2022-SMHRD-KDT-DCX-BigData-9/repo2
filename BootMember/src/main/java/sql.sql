-- alt + x, 문장 드래그
-- sql.sql파일은 프로젝트가 달라도 다른 프로젝트에 있는 테이블 실행할 수 있다


select * from member;
select * from bootmember;
select * from bootboard;

insert into bootmember(id, nick, pw) values('test', '테스트', '1234');
insert into bootmember(id, nick, pw) values('bigdata', '123', '빅데이터');

insert into bootboard(title, writer, content, img) values ('게시물1', '최성우', '게시물 내용', 'a.jpg');
insert into bootboard(title, writer, content, img) values ('게시물2', '최성우', '게시물 내용2', 'b.jpg');
insert into bootboard(title, writer, content, img) values ('게시물3', '최성우', '게시물 내용3', 'c.jpg');
insert into bootboard(title, writer, content, img) values ('게시물4', '안상우', '게시물 내용3', 'd.jpg');