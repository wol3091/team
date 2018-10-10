-- 리뷰 테이블
create table review (
  id varchar2(40) not null,       --구매자 id
  ceoseq varchar2(50) not null,   --사장 seq
  subject varchar2(200) not null, --제목
  contnet varchar2(1000) not null,--내용
  starpoint varchar2(20) not null,--별점
  image varchar2(100),            --이미지
  logtime date not null           --시간
);