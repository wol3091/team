-- ����(�ֹ�����) ���̺�
create table order (
  id varchar2(40) not null,      --�ֹ��� id
  menu varchar2(50) not null,    --���� �̸�
  menuQty number not null,       --���� ����
  price number not null,         --���� ����
  wish varchar2(200),            --�ֹ� �䱸����
  review varchar2(10),           --���� ���
  ceoseq varchar2(50) not null   --���� seq
);