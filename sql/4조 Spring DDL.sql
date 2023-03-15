--4조 Spring 계정 생성 및 DDL

--계정 생성
-- 1.
-- create user team_4spring identified by java1234;
--
-- 2.
-- grant connect,resource, dba to team_4spring;
--
--
-- commit;


create table tblAccount (
    seq number not null primary key,
    id varchar2(100) not null,
    pw varchar2(100) not null,
    lv number not null,
    active char(1) default 'y' not null
);

create table tblMember (
    seq number not null primary key,
    name varchar2(50) not null,
    nickname varchar2(200) not null,
    tel varchar2(200) not null,
    image varchar2(1000) default 'default.png' not null,
    aseq number not null references tblAccount(seq)
);

create table tblShop (
    seq number not null primary key,
    name varchar2(1000) not null,
    tel varchar2(100) not null,
    location varchar2(1000) not null,
    image varchar2(2000) default 'defaultshop.png',
    aseq number not null references tblAccount(seq)
);


create table tblCategory (
    seq number not null primary key,
    name varchar2(100) not null
);


create table tblClass (
    seq number not null primary key,
    cseq number not null references tblCategory(seq),
    name varchar2(1000) not null,
    intro varchar2(4000) not null,
    course varchar2(4000) not null,
    time varchar2(30) not null,
    duedate date not null,
    membercnt number not null,
    price number not null,
    image varchar2(1000) not null,
    sseq number not null references tblShop(seq)
);


create table tblMemberClass (
    seq number not null primary key,
    mseq number not null references tblMember(seq),
    cseq number not null references tblClass(seq),
    rdate date default sysdate not null,
    rmembercnt number not null
);

drop table tblSboardCategory;
create table tblSboardCategory (
    seq number not null primary key,
    name varchar2(200) not null
);


create table tblShopBoard (
    seq number not null primary key,
    title varchar2(1000) not null,
    content varchar2(4000) not null,
    regdate date default sysdate not null,
    image varchar2(2000),
    cseq number not null references tblSboardCategory(seq),
    aseq number not null references tblAccount(seq),
    sseq number not null references tblShop(seq)
);


create table tblShopBoardComment (
    seq number not null primary key,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    bseq number not null references tblShopBoard(seq),
    aseq number not null references tblAccount(seq)
);

create table tblMainBoard (
    seq number not null primary key,
    title varchar2(2000) not null,
    content varchar2(4000) not null,
    regdate date default sysdate not null,
    image varchar2(2000),
    aseq number not null references tblAccount(seq)
);

create table tblMainBoardAnswer (
    seq number not null primary key,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    aseq number not null references tblAccount(seq),
    bseq number not null references tblMainBoard(seq)
);


create table tblHashtag (
    seq number not null primary key,
    name varchar2(200) not null
);



create table tblFeed (
    seq number not null primary key,
    content varchar2(4000) not null,
    regdate date default sysdate not null,
    image varchar2(2000) not null,
    aseq number not null references tblAccount(seq)
);


create table tblFeedHashtag (
    seq number not null primary key,
    hseq number not null references tblHashtag(seq),
    fseq number not null references tblFeed(seq)
);



create table tblFeedLike (
    seq number not null primary key,
    fseq number not null references tblFeed(seq),
    aseq number not null references tblAccount(seq)
);

create table tblFeedComment (
    seq number not null primary key,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    fseq number not null references tblFeed(seq),
    aseq number not null references tblAccount(seq)
);


create table tblFeedRecomment (
    seq number not null primary key,
    content varchar2(2000) not null,
    regdate date default sysdate not null,
    cseq number not null references tblFeedComment(seq),
    aseq number not null references tblAccount(seq)
);

create table tblNotice (
   seq number not null primary key,
   title varchar2(1000) not null,
   content varchar2(4000) not null,
   regdate date default sysdate not null,
   aseq number not null references tblAccount(seq),
   active char default 'y' not null
);






