create table jogiyo_customer(
  id varchar2(40) not null,       --이메일 형식 아이디
  pwd varchar2(30) not null,      -- 비밀번호
  nickname varchar2(30) not null, -- 닉네임
  phone varchar2(11) not null,    --휴대폰 번호
  postcode varchar2(20) not null,   -- 우편번호
  addr1 varchar2(100) not null,    -- 주소1
  addr2 varchar2(100) not null     -- 주소2
);


insert into jogiyo_customer values
('lrken@naver.com','12345678','hi','01012345678','50329','서울 종로구 돈화문로 23','단성사4층');

insert into jogiyo_customer values
('kwh8834@naver.com','12345678','hello','01012345678','50329','서울 종로구 돈화문로 23','단성사4층');


insert into jogiyo_customer values
('ssss@naver.com','12345678','kunis','01012345678','50329','서울 종로구 돈화문로 23','단성사4층');

insert into jogiyo_customer values
('ssss@naver.com','12345678','원숭이너구리','01012345678','50329','서울 종로구 돈화문로 23','단성사4층');

insert into jogiyo_customer values
('gggg@naver.com','12345678','호랑군','01012345678','50329','서울 종로구 돈화문로 23','단성사4층');
