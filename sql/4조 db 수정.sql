ALTER table tblMember add NAME varchar2(200);
ALTER table tblMember add TEL varchar2(200);

alter table tblAccount drop column pw;
alter table tblMember drop column name;
alter table tblMember drop column tel;
delete from tblMemberClass;
alter table tblMemberClass add tel varchar2(200) not null;
alter table tblMemberClass add name varchar2(100) not null;
alter table tblShop drop column tel;
alter table tblShop add tel varchar2(200) null;
ALTER table tblMember add NAME varchar2(200);
ALTER table tblMember add TEL varchar2(200);

select * from TBLACCOUNT;
select * from TBLMEMBER;
delete from TBLACCOUNT;
delete from TBLMEMBER;

commit ;