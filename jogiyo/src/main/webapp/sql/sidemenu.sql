-- ���� ���̺�
create table review (
  id varchar2(40) not null,       --������ id
  ceoseq varchar2(50) not null,   --���� seq
  subject varchar2(200) not null, --����
  contnet varchar2(1000) not null,--����
  starpoint varchar2(20) not null,--����
  image varchar2(100),            --�̹���
  logtime date not null           --�ð�
);