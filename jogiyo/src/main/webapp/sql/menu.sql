-- 오더(주문내역) 테이블
create table order (
  id varchar2(40) not null,      --주문자 id
  menu varchar2(50) not null,    --음식 이름
  menuQty number not null,       --음식 수량
  price number not null,         --음식 가격
  wish varchar2(200),            --주문 요구사항
  review varchar2(10),           --리뷰 등록
  ceoseq varchar2(50) not null   --사장 seq
);