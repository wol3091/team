create table jogiyo_customer(
  id varchar2(40) not null,       --�̸��� ���� ���̵�
  pwd varchar2(30) not null,      -- ��й�ȣ
  nickname varchar2(30) not null, -- �г���
  phone varchar2(11) not null,    --�޴��� ��ȣ
  postcode varchar2(20) not null,   -- �����ȣ
  addr1 varchar2(100) not null,    -- �ּ�1
  addr2 varchar2(100) not null     -- �ּ�2
);


insert into jogiyo_customer values
('lrken@naver.com','12345678','hi','01012345678','50329','���� ���α� ��ȭ���� 23','�ܼ���4��');

insert into jogiyo_customer values
('kwh8834@naver.com','12345678','hello','01012345678','50329','���� ���α� ��ȭ���� 23','�ܼ���4��');


insert into jogiyo_customer values
('ssss@naver.com','12345678','kunis','01012345678','50329','���� ���α� ��ȭ���� 23','�ܼ���4��');

insert into jogiyo_customer values
('ssss@naver.com','12345678','�����̳ʱ���','01012345678','50329','���� ���α� ��ȭ���� 23','�ܼ���4��');

insert into jogiyo_customer values
('gggg@naver.com','12345678','ȣ����','01012345678','50329','���� ���α� ��ȭ���� 23','�ܼ���4��');
