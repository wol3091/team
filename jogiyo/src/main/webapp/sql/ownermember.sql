create table ownermember(
    seq varchar2(50),
    ownerId varchar2(30) primary key,
    ownerPwd varchar2(30) not null,
    ownerEmail1 varchar2(100) not null,
    joinDate date not null
);

insert into ownermember VALUES('c00001','khw','12345678','kwh8834@naver.com',sysdate);
