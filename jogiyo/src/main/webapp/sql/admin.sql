create table jugiyo_admin(
   admin_id varchar2(40) not null,      --���̵�
   admin_pwd varchar2(40) not null,      -- ��й�ȣ
   admin_email varchar2(100) not null
);

insert into jugiyo_admin values( 
'admin','1234','lrken@naver.com');
