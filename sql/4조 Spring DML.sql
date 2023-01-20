--4조 spring DML

-- delete TBLCLASS;
-- delete TBLFEED;
-- delete TBLFEEDCOMMENT;
-- delete TBLFEEDHASHTAG;
-- delete TBLFEEDLIKE;
-- delete TBLFEEDRECOMMENT;
-- delete TBLHASHTAG;
-- delete TBLMAINBOARD;
-- delete TBLMAINBOARDANSWER;
-- delete TBLMEMBER;
-- delete TBLMEMBERCLASS;
-- delete TBLSHOPBOARDCOMMENT;
-- delete TBLTEST;
-- delete TBLCATEGORY;
-- delete TBLSHOPBOARD;
-- delete TBLSBOARDCATEGORY;
-- delete TBLSHOP;
-- delete TBLACCOUNT;

select * from TBLACCOUNT;
select * from TBLCATEGORY;
select * from TBLCLASS;
select * from TBLFEED;
select * from TBLFEEDCOMMENT;
select * from TBLFEEDHASHTAG;
select * from TBLFEEDLIKE;
select * from TBLFEEDRECOMMENT;
select * from TBLHASHTAG;
select * from TBLMAINBOARD;
select * from TBLMAINBOARDANSWER;
select * from TBLMEMBER;
select * from TBLMEMBERCLASS;
select * from TBLSBOARDCATEGORY;
select * from TBLSHOP;
select * from TBLSHOPBOARD;
select * from TBLSHOPBOARDCOMMENT;

create sequence seqAccount;
create sequence seqShop;
create sequence seqShopBoard;
create sequence seqSBoardCategory;
create sequence seqShopBoardComment;
create sequence seqMember;
create sequence seqMemberClass;
create sequence seqMainBoard;
create sequence seqCategory;
create sequence seqClass;
create sequence seqMainBoardAnswer;
create sequence seqFeedLike;
create sequence seqFeed;
create sequence seqFeedComment;
create sequence seqFeedRecomment;
create sequence seqFeedHashtag;
create sequence seqHashtag;



select * from tblAccount;
--tblAccount
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'admin','admin1587',3,'y');     --관리자

insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'jduny0','z4Sp1isfy',1,'y');    --회원
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'hoppie1','rfTESk44D3T',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'karkwright2','iC2zOBr3w8R',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'lpopov3','38mQNDlwEaPW',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'ddomenc4','REoodH27q7t',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'bthripp5','KgE8aNhW',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'tskiggs6','NBxIa41',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'screwdson7','XoJpjMqWiim1',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'tstclair8','GbbRCe8Ox',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'kblanket9','YVcRUROrGd',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'akrugera','zHNYOrwr',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'hogradyb','ZpYTlpdiwR',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'hgoldfinchc','zKIGw0wsB',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'fswaddend','V4IZkwAHoBd',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'shandricke','exBlYuTzJamB',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'cgulleyf','AvK3jbTqOtP',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'hgaynesg','fw9rhXuiqzLq',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'gfidelerh','OsSE8T7',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'jmunktoni','Cz1TA9',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'cbushnellj','aW7eMixfzUL4',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'cwashingtonk','aGxVdCO',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'rdurdyl','7XEAjfwR5daG',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'ncotherillm','vvHNBw6B',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'bfurmann','cfr8lv',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'dkearyo','JS8hZhO15k',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'gprinettp','9xJkOpZGF',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'cstevingsq','seP4K07',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'tgaliar','FZkH3EP',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'jmccliffertys','0bkziGK4o',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'rbirdseyt','RtBUl7RPp7lq',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'lhetterichu','AoFhjIcGUTfu',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'sburghv','14yu9QI',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'jmeekinsw','u3TPOeW2I',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'cmaccostyex','fMBM9cUo',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'cbeerey','aNGKCWFycHu',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'echrstinez','LheWPBE',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'nhaydock10','Xvrx1ZsAEEK',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'bjanson11','BKKgKdOs53',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'rmarrable12','vQL654',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'asealove13','cYRjVhtR2D',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'nibbett14','8IIoCSFswTW',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'amaceur15','8f5y9mBSr',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'irathe16','H9Wl4aOQJv',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'ebellis17','BFrcR6pt',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'hashwell18','mJYwpvQ1T1re',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'qcollyear19','SkEj854',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'tkelledy1a','I7CfsFg',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'rlande1b','0oZNAI9iAv',1,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, 'atopham1c','gs3NsDww',1,'y');

insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '569-29-2118-0','MHO3MNPkr8',2,'y');    --공방(사업주)
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '232-15-2296-6','lpnWgOYZlo',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '777-11-1914-0','yNvzKMaMg',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '726-75-4577-2','TGRNOMF',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '423-70-5568-7','DUl3X1Ge2',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '674-39-5860-1','nQL5bJifib',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '533-75-5312-7','gDCgJp',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '590-73-3648-2','FJ0zhw3N',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '890-35-4273-2','l0LZXllJ6',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '515-34-2750-8','cBtXjIrODU',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '901-19-1644-4','tPaHUdqR',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '354-33-5558-0','HSLTG04ym',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '777-22-1592-3','rV7KRYwmW',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '742-47-4999-2','HMxvGCmS9',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '646-55-3902-1','tDSOVSK6',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '412-38-5162-6','T7S9Xr7tYu',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '478-21-5118-9','AnxtnjhJP2O',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '376-20-2014-8','vARN2QZbo',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '530-17-4655-7','hsJtD9uLJK6',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '703-48-3149-3','xOcDNC0my',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '202-62-1418-8','boOcudk16',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '707-30-3028-7','awr05L',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '237-27-5791-3','ponGOjeE',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '553-74-3614-5','z1w8TpAJahx',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '787-12-1725-6','rz0b65pSV81',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '581-38-5081-1','5NFFsihd',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '491-37-4205-0','fj2ijJ',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '270-36-4213-8','hLjv36iFfF',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '955-28-4918-0','VXzKQxjBpD',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '421-51-1412-6','EpFGzhOt9q',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '656-35-2489-2','s2LXxkD4eAu',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '368-64-4147-7','i7qvdPHt',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '336-45-4974-9','ptU1kY2',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '186-58-3501-5','yfsQ1L',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '924-48-4620-0','10ufbD28Xy4',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '411-15-3496-6','FLQzTWC5',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '954-16-4892-4','odnTGl',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '451-15-5405-1','gUixk9',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '949-32-4350-0','dKyPrqi',2,'y');
insert into tblAccount(seq, id, pw, lv, active) values (seqAccount.nextVal, '318-64-2963-6','eQ48DyKxE',2,'y');

select * from tblShop;
--tblShop
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '얼롱더센트','010-1340-5106','경기도 수원시 영통구 효원로 38번길 3 1층','alongthescent.jpeg',51);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '두유공방','010-1441-8816','경기도 수원시 영통구 효원로 358번길 3 101호','DOYOU.jpg',52);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '손꾸락질','010-1303-0620','경기도 수원시 영통구 효원로 358번길 7-2 1층','sonkkurakjil.jpg',53);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '손끝스튜디오','010-6879-8765','경기도 수원시 영통구 효원로 358번길 25 1층','sonkkeutstudio.jpg',54);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '매탄동작업실','010-6575-5567','경기도 수원시 영통구 효원로 358번길 31','Maetan.jpg',55);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '별이엔캐서린작업실','010-4127-7642','경기도 수원시 영통구 효원로 358번길 7-18 1층','Catherine.jpg',56);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '엠마의인형','010-8131-8366','경기도 수원시 영통구 효원로 363 위브하늘채상가A동 203-1호','emmadoll8366.jpg',57);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '들랑날랑','010-1408-3610','경기도 수원시 영통구 매탄로 65번길 7 지하1층','deulrangnalrang.jpg',58);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '공감도예','010-1348-3991','경기도 수원시 영통구 매탄로 140번길 54-18 105호','gonggam.jpg',59);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '레티엘','010-1334-8594','경기도 수원시 영통구 산남로 4번길 19 1층','retteL.jpeg',60);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '프롬마스','010-1401-8940','경기도 수원시 영통구 권선로 882번길 26-55 1층','frommars.jpg',61);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '오디너리유즈','010-6350-5262','경기도 수원시 영통구 권선로 882번길 31-7 1층','ordinaryuse.jpg',62);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, 'Mayol0503','010-1426-0667','경기도 수원시 영통구 권선로 882번길 31-22','Mayol0503.jpeg',63);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '슬로우니트','010-1358-2526','경기도 수원시 영통구 권선로 882번길 31-21 101호','slowneat.jpg',64);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '리우드','010-1412-0143','인천광역시 서구 원적로 124번길 28-1 지하1층','rewood.jpg',65);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '두두스튜디오','010-1469-7022','경기도 수원시 영통구 신원로 294번길 40-7 오페라하우스 지하 101호','dodostudio.jpg',66);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '시나브로','010-1347-0792','경기도 수원시 팔달구 효원로 249번길 18-17 3층','Sinabro.jpg',67);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '청년공방 본점','010-1307-2513','경기도 수원시 팔달구 권광로 187번길 10-3 4층','chungnyun.jpg',68);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '아틀리에 라벨라','010-1401-8701','경기도 수원시 팔달구 인계로 166번길 48-21 샤르망 1316','labella79.jpeg',69);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '영롱달빛','010-1418-4426','경기도 수원시 팔달구 권광로 184 캐슬타워 101동 1401호','brightmoonlight.jpeg',70);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '프랑꼬아트랩','010-1556-2355','서울 강남구 강남대로110길 38 1층','francoartlab(seoul).jpg',71);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '프랑꼬아트랩 부산 서면점','010-2856-2355','부산 부산진구 전포대로199번길 27 KH마이우스 3층','francoartlab(busan).jpg',72);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '공예하는 언니','010-1328-0722','경기 시흥시 신천로63번길 1 금강프라임빌 B동 203호','sister.jpg',73);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '니트에이','010-2598-3681','서울 관악구 봉천로 436-1 4층. 니트에이','neatA.jpg',74);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '크리스 아뜰리에','010-2864-1705','서울 마포구 희우정로10길 14','CrisAtelier.jpg',75);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '마이민로그','010-8251-5586','서울특별시 송파구 올림픽로 119 (잠실동) 잠실파인애플상가 2층','mymeanlog.jpg',76);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '닌NIN','010-9658-7775','서울특별시 종로구 계동 140-81','',77);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '달달마망','010-7698-4283','경기도 고양시 덕양구 중앙로 542','daldalmamang.jpg',78);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '소마르','010-1567-2173','서울특별시 용산구 효창원로 25다길 42 503호','',79);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '다이앤스토리','010-1031-3728','대구 남구 현충로15길 9-1 102호','dianestory.jpg',80);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '정다운공방','010-0622-6932','경기 양주시 고암길 306-38 220-101','jungDU.jpg',81);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '선나무가구','010-8956-5459','서울 구로구 디지털로32가길 86-11 1층','sun.jpg',82);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '마마스토리','010-8592-1014','서울 종로구 자하문로 240 1층','mamastory.jpg',83);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '왓위원트','010-6351-1920','서울특별시 강동구 성안로 90 102호','whatwewant.jpg',84);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '리본라움','010-8989-8285','서울특별시 송파구 마천로 148 오금더하임 지하 1층','Rebornraum.jpg',85);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '미엘','010-6304-0408','대전 동구 백룡로 19 2층','MeL.jpg',86);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '러브투모로우','010-3546-2867','인천광역시 부평구 주부토로146번길 14 LOVETOMORROW','LoveTOMORROW.png',87);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '우드얀','010-9944-3226','충남 천안시 서북구 불당11로 3 1층  우드얀','woodyarn.jpg',88);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '브라이튼미','010-6932-9030','울산광역시 중구 종가5길 10 1층 상가','brightenme.jpg',89);
insert into tblShop(seq, name, tel, location, image, aseq) values (seqShop.nextVal, '스튜디오 오름','010-0488-0250','대전 중구 서문로 109-9 1층','oreum.jpg',90);



select * from tblSBoardCategory;
--tblSBoardCategory
insert into tblSBoardCategory(seq, name) values (seqSBoardCategory.nextVal, '공지사항');
insert into tblSBoardCategory(seq, name) values (seqSBoardCategory.nextVal, 'QnA');
insert into tblSBoardCategory(seq, name) values (seqSBoardCategory.nextVal, '후기');


select * from tblShopBoard;
--tblShopBoard
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 얼롱더센트입니다.', '안녕하세요. 얼롱더센트입니다.
저희 공방은
뻔한 데이트가 지겨우신 분,
사람하는 가족 또는 지인 분들께 특별한 선물을 하고 싶은 분,
이색 체험을 즐기고 싶은 분,
의미있는 추억을 남기고 싶은 분들을 위한 놀이터를 만들어가고자합니다.
손재주가 없어도 즐거운 마음으로 끝까지 작품을 완성할수 있도록 도와드리겠습니다.', default, default, 1, 51, 1);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 두유공방입니다.', '안녕하세요. 두유공방입니다.
저희 공방은 뻔한 데이트가 지겨우신 분,
사람하는 가족 또는 지인 분들께 특별한 선물을 하고 싶은 분,
이색 체험을 즐기고 싶은 분,
의미있는 추억을 남기고 싶은 분들을 위한 놀이터를 만들어가고자합니다.
손재주가 없어도 즐거운 마음으로 끝까지 작품을 완성할수 있도록 도와드리겠습니다.', default, default, 1, 52, 2);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 손꾸락질입니다.', '안녕하세요. 손꾸락질입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 53, 3);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 손끝스튜디오입니다.', '안녕하세요. 손끝스튜디오입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 54, 4);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 매탄동작업실입니다.', '안녕하세요. 매탄동작업실입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 55, 5);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 별이엔캐서린작업실입니다.', '안녕하세요. 별이엔캐서린작업실입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 56, 6);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 엠마의인형입니다.', '안녕하세요. 엠마의인형입니다.
저희 공방은 뻔한 데이트가 지겨우신 분, 사람하는 가족 또는 지인 분들께 특별한 선물을 하고 싶은 분, 이색 체험을 즐기고 싶은 분, 의미있는 추억을 남기고 싶은 분들을 위한 놀이터를 만들어가고자합니다.
손재주가 없어도 즐거운 마음으로 끝까지 작품을 완성할수 있도록 도와드리겠습니다.', default, default, 1, 57, 7);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 들랑날랑입니다.', '안녕하세요. 들랑날랑입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 58, 8);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 공감도예입니다.', '안녕하세요. 공감도예입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 59, 9);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 레티엘입니다.', '안녕하세요. 레티엘입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 60, 10);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 프롬마스입니다.', '안녕하세요. 프롬마스입니다.
저희 공방은
뻔한 데이트가 지겨우신 분,
사람하는 가족 또는 지인 분들께 특별한 선물을 하고 싶은 분,
이색 체험을 즐기고 싶은 분,
의미있는 추억을 남기고 싶은 분들을 위한 놀이터를 만들어가고자합니다.
손재주가 없어도 즐거운 마음으로 끝까지 작품을 완성할수 있도록 도와드리겠습니다.', default, default, 1, 61, 11);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 오디너리유즈입니다.', '안녕하세요. 오디너리유즈입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 62, 12);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. Mayol0503입니다.', '안녕하세요. Mayol0503입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 63, 13);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 슬로우니트입니다.', '안녕하세요. 슬로우니트입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 64, 14);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 리우드입니다.', '안녕하세요. 리우드입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 65, 15);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 두두스튜디오입니다.', '안녕하세요. 두두스튜디오입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 66, 16);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 시나브로입니다.', '안녕하세요. 시나브로입니다.
저희 공방에서는 클래스 수업뿐만 아니라 다양한 전시 작품도 구경할 수 있습니다.
많이 많이 놀러오세요~!!!', default, default, 1, 67, 17);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 청년공방 본점입니다.', '안녕하세요. 청년공방 본점입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 68, 18);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 아틀리에 라벨라입니다.', '안녕하세요. 아틀리에 라벨라입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 69, 19);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 영롱달빛입니다.', '안녕하세요. 영롱달빛입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 70, 20);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 프랑꼬아트랩입니다.', '안녕하세요. 프랑꼬아트랩입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 71, 21);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 프랑꼬아트랩 부산 서면점입니다.', '안녕하세요. 프랑꼬아트랩 부산 서면점입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 72, 22);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 공예하는 언니입니다.', '안녕하세요. 공예하는 언니입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 73, 23);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 니트에이입니다.', '안녕하세요. 니트에이입니다.
저희 공방은 뻔한 데이트가 지겨우신 분, 사람하는 가족 또는 지인 분들께 특별한 선물을 하고 싶은 분, 이색 체험을 즐기고 싶은 분, 의미있는 추억을 남기고 싶은 분들을 위한 놀이터를 만들어가고자합니다.
손재주가 없어도 즐거운 마음으로 끝까지 작품을 완성할수 있도록 도와드리겠습니다.', default, default, 1, 74, 24);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 크리스 아뜰리에입니다.', '안녕하세요. 크리스 아뜰리에입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 75, 25);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 마이민로그입니다.', '안녕하세요. 마이민로그입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 76, 26);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 닌NIN입니다.', '안녕하세요. 닌NIN입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 77, 27);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 달달마망입니다.', '안녕하세요. 달달마망입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 78, 28);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 소마르입니다.', '안녕하세요. 소마르입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 79, 29);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 다이앤스토리입니다.', '안녕하세요. 다이앤스토리입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 80, 30);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 정다운공방입니다.', '안녕하세요. 정다운공방입니다.
저희 공방의 클래스는 초보자분들을 대상으로 진행하고 있습니다.
손재주가 없다고 걱정하지 마세요!', default, default, 1, 81, 31);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 선나무가구입니다.', '안녕하세요. 선나무가구입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 82, 32);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 마마스토리입니다.', '안녕하세요. 마마스토리입니다.
저희 공방의 클래스는 초보자분들 위하여 충분한 연습 시간을 드리고 있습니다.
마음의 여유를 가지고 즐길 수 있는 시간이 되시길...', default, default, 1, 83, 33);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 왓위원트입니다.', '안녕하세요. 왓위원트입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 84, 34);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 리본라움입니다.', '안녕하세요. 리본라움입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 85, 35);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 미엘입니다.', '안녕하세요. 미엘입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 86, 36);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 러브투모로우입니다.', '안녕하세요. 러브투모로우입니다.
저희 공방에서는 초보자분들도 수강할 수 쉽게 만들 수 있도록 전문 강사님들이 상세히 가르쳐드립니다.', default, default, 1, 87, 37);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 우드얀입니다.', '안녕하세요. 우드얀입니다.
저희 공방은 일상에서 주어지는 작은 정성과 취향들을 통해 소소한 가치를 찾아내고, 마음을 담아 사람들과 공유합니다.
또한 경험과 배움의 가치를 나누고, 다양한 생각과 감성들로 유쾌한 예술문화를 연구하고 만들어 가고자 합니다.', default, default, 1, 88, 38);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 브라이튼미입니다.', '안녕하세요. 브라이튼미입니다.
저희 공방은 사람들의 기억 하나하나의 추억들을 회상할 수 있는 매개체가 되고자 합니다.
특별한 날, 특별하지 않은 날, 행복한 날, 슬픈 날 모든 날들을 보람차고 행복한 추억으로 만들어가 보세요.', default, default, 1, 89, 39);

insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '안녕하세요. 스튜디오 오름입니다.', '안녕하세요. 스튜디오 오름입니다.
저희 공방은
뻔한 데이트가 지겨우신 분,
사람하는 가족 또는 지인 분들께 특별한 선물을 하고 싶은 분,
이색 체험을 즐기고 싶은 분,
의미있는 추억을 남기고 싶은 분들을 위한 놀이터를 만들어가고자합니다.
손재주가 없어도 즐거운 마음으로 끝까지 작품을 완성할수 있도록 도와드리겠습니다.', default, default, 1, 90, 40);


insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '공방운영시간', '공방 운영시간이 궁금합니다!!', default, default, 2, 10, 1);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '공예품 구매', '공방에서 만들어진 공예품 구입하고 싶은데 가능한가요?', default, default, 2, 11, 2);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '공방운영시간', '공방은 몇시부터 몇시까지 운영하시나요??', default, default, 2, 16, 3);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '연습시간', '클래스 시간에 연습시간은 충분한가요?', default, default, 2, 32, 4);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '다음 클래스 수업', '다음 클래스는 언제 또 진행하시는지 알 수있을까요???', default, default, 2, 42, 5);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '공예품 구매 가능한가요?', '공방에서 만들어진 공예품도 구매 가능한가요?', default, default, 2, 5, 6);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '주말에도 운영?', '주말에도 운영하시나요?', default, default, 2, 9, 7);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '다음 클래스', '다음 클래스 일정을 어떻게 되나요???', default, default, 2, 38, 10);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '아이와 함께 방문시', '아이와 함께 수강하려는데 다른 수강자 분들이 불편해 하실까봐 걱정입니다...', default, default, 2, 46, 16);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '준비물', '클래스 수강시, 준비물이 필요한가요?', default, default, 2, 22, 20);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '예시 작품', '클래스 시간에 예시 작품을 충분히  보고 시작 할 수있나요?', default, default, 2, 29, 27);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '클래스 수강시 주의할 점이 있을까요?', '클래스 수강시 주의해야할 점 있나요?', default, default, 2, 30, 23);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '다음 일정', '다음 클래스도 계획하고 계실까요?', default, default, 2, 5, 28);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '연습시간 충분한가요?', '손이 많이 느린데 클래스 시간에 연습시간은 충분한가요?', default, default, 2, 24, 24);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '아이와 함께 수강 가능한지?', '아이들과 함께 수강 가능한가요?', default, default, 2, 6, 30);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '빨리 끝나면... ', '예상 시간보다 빨리 끝나는 경우에는 일찍 끝내주시는지 궁금해요', default, default, 2, 18, 35);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '똥손도 클래스 수강 가능한가요?', '똥손이라 걱정이에요ㅠㅠ 클래스 수강 가능할런지요....?', default, default, 2, 27, 40);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '클래스 또 운영 안하시나요?', '클래스 또 하실 계획은 없으신가요?', default, default, 2, 25, 11);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '주말운영', '주말에도 운영하세요? 운영하시면 운영시간 알려주세요!!', default, default, 2, 35, 17);
insert into tblShopboard(seq, title, content, regdate, image, cseq, aseq, sseq) values (seqShopBoard.nextVal, '예약 인원보다 수강인원이 적을 경우?', '예약 인원보다 수강인원이 더 적을 경우 환불이 가능한지 궁금합니다.', default, default, 2, 36, 26);



select * from tblShopBoardComment;
--tblShopBoardComment
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'평일 오전 9시부터 오후 6시까지 운영합니다~', default, 41, 51);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'가능 합니다~', default, 42, 52);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'운영시간
평일 오전 10시 ~ 오후 6시
주말 오전 10시 ~ 오후 1시', default, 43, 53);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'20분 정도의 연습시간을 드리고 있습니다.', default, 44, 54);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'계획은 있으나 구체적인 답변을 드리지 못해 죄송합니다.', default, 45, 55);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'공방 운영시간안에 오시면 언제든지 가능합니다!!', default, 46, 56);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'주말에도 운영합니다!
오전 10시부터 오후 1시까지 운영하고있으니 참고 부탁드리겠습니다.', default, 47, 57);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'추후 일정은 계획되는대로 알려드리겠습니다.', default, 48, 60);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'저희 공방에서는 단체 예약시, 따로 공간을 마련하여 진행되므로 걱정하지 않으셔도 됩니다.', default, 49, 66);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'클래스 가격에 준비물 가격이 포함되어있어서 저희 공방에서 모든 준비물을 제공하고 있습니다.  ', default, 50, 70);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'클래스 시작시 미리 만들어진 예시 작품을 보여드리고 원하시는 디자인의 작품을 만드실 수 있도록 도와드리고 있습니다.', default, 51, 77);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'클래스 수강시 주의사항
다른 수강자분들을 위해서 너무 큰 목소리로 떠들지 않기
뛰어다니지 않기
도구에 위험성이 있으므로 주의하기  ', default, 52, 73);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'정확한 일정이 나오면 공지사항에 공개하도록 하겠습니다.', default, 53, 78);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'연습시간은 10~15분 정도 주어지고 있습니다.', default, 54, 74);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'아이들과 함께 수강 가능합니다.', default, 55, 80);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'빨리 끝내기를 원하시면... 빨리 끝내드리고 있습니다.', default, 56, 85);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'손재주가 없으셔도 끝까지 완성할 수 있도록 도와드리고 있습니다.', default, 57, 90);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'추후 일정은 정확하게 정해지면 공지해드리겠습니다.', default, 58, 61);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'주말은 오전 9시부터 오후 1시까지 운영됩니다.', default, 59, 67);
insert into tblShopBoardComment(seq, content, regdate, bseq, aseq) values (seqShopBoardComment.nextVal,'수강일 당일에는 환불이 어려운점 양해 바랍니다.', default, 60, 76);



select * from tblMember;
--tblMember
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남석돈', 'Lola', '010-4236-4339', default, 2);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'유현균', 'Margaux', '010-2738-3682', default, 3);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'박길나', 'Ahmad', '826-459-1818', default, 4);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조태효', 'Isadora', '010-2245-4059', default, 5);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'박정길', 'Mayer', '641-806-8077', default, 6);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'이신동', 'Sheela', '446-374-0587', default, 7);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'유재정', 'Suzy', '687-408-6590', default, 8);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김서현', 'Kirby', '329-132-4998', default, 9);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'정효균', 'Dorolisa', '710-624-8906', default, 10);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'정경태', 'Gregg', '260-962-9171', default, 11);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'정수하', 'Tobie', '657-898-7675', default, 12);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'최태현', 'Angelico', '010-2619-2874', default, 13);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'정석재', 'Mela', '010-3611-2601', default, 14);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남영구', 'Kenneth', '010-6748-1290', default, 15);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조길정', 'Harwilll', '010-3697-5936', default, 16);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조효연', 'Nonna', '010-6927-3774', default, 17);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김효진', 'Andonis', '010-2671-4532', default, 18);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'박현연', 'Bret', '010-3851-9333', default, 19);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'유지균', 'Simone', '010-6927-0308', default, 20);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'최구서', 'Annis', '010-3891-3166', default, 21);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김형길', 'Rozalin', '010-2576-3705', default, 22);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남구영', 'Kerrie', '010-3640-7258', default, 23);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'정경형', 'Merrill', '010-2890-1184', default, 24);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조정형', 'Maje', '010-9709-4541', default, 25);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김구나', 'Ignaz', '010-3974-5841', default, 26);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조태구', 'Rhodie', '010-3500-3689', default, 27);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남민현', 'Corrian', '010-9491-9992', default, 28);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김길석', 'Eldon', '010-8853-9778', default, 29);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김수찬', 'Arliene', '010-2118-1273', default, 30);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남석진', 'Caritta', '010-9867-7633', default, 31);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'박진구', 'Marty', '010-9830-8494', default, 32);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조나구', 'Anetta', '010-8330-3229', default, 33);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조하나', 'Wayland', '010-6582-5692', default, 34);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'유찬균', 'Enrica', '010-2514-0887', default, 35);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김돈동', 'Luce', '010-8982-0935', default, 36);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'최영동', 'Thaddus', '010-6309-4278', default, 37);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'박진연', 'Annie', '010-6055-5685', default, 38);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남수수', 'Brigid', '010-2346-4869', default, 39);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'최신태', 'Elie', '010-6491-6789', default, 40);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조지영', 'Brigid', '010-2188-4654', default, 41);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'정태경', 'Carrissa', '010-6320-7273', default, 42);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'남서효', 'Mandel', '010-5525-9814', default, 43);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'조길재', 'Maxie', '010-2873-9876', default, 44);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'이진태', 'Delores', '010-5929-9324', default, 45);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'박형나', 'Alden', '010-5211-6083', default, 46);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'손서태', 'Celine', '010-2445-6050', default, 47);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김효형', 'Elonore', '010-5379-4412', default, 48);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'김하신', 'Mollee', '010-2233-8692', default, 49);
insert into tblMember(seq, name, nickname, tel, image, aseq) values (seqMember.nextVal,'최진민', 'Ezechiel', '010-2457-5316', default, 50);



-- -- tblHashtag ✅
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '실반지');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '팔찌');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '키링');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '매듭팔찌');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '발찌');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '카드지갑');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '가죽공예');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '자수');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '가죽책');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '애플워치');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '에어팟');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '커플링');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '데일리백');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '가죽가방');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '촛대');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '화병');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '장신구');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '키친');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '비즈공예');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '유리공예');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '원데이클래스');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '반지');
insert into TBLHASHTAG values (SEQHASHTAG.nextval, '목걸이');

-- tblFeed
insert into TBLFEED values (seqFeed.nextval, '너무 재밌었던 레이어드 실반지 만들기 클래스', '20230103', 'img1.png', 2);
insert into TBLFEED values (seqFeed.nextval, '기념일 선물로 만들고온 이니셜 팔찌 만들기 클래스', '20230104', 'img2.png', 2);
insert into TBLFEED values (seqFeed.nextval, '엄마 선물로 만든 한복머리장식 뒤꽂이', '20230105', 'img3.png', 2);
insert into TBLFEED values (seqFeed.nextval, '너무 이쁜 탄생석 담수진주반지', '20230106', 'img4.png', 3);
insert into TBLFEED values (seqFeed.nextval, '원데이 클래스로 만들어온 목걸이 ✨', '20230107', 'img5.png', 3);
insert into TBLFEED values (seqFeed.nextval, '영롱한 쉐이커 키링 ✨', '20230108', 'img6.png', 3);
insert into TBLFEED values (seqFeed.nextval, '친구랑 다녀온 써지컬스틸 팬던트 매듭팔찌 원데이 클래스', '20230109', 'img7.png', 4);
insert into TBLFEED values (seqFeed.nextval, '작가님이 친절하셔서 너무 좋았던 발찌 만들기 원데이클래스', '20230110', 'img8.png', 4);
insert into TBLFEED values (seqFeed.nextval, '원데이클래스로 만들어온 귀여운 가죽지갑', '20230111', 'img9.png', 5);
insert into TBLFEED values (seqFeed.nextval, '원데이 클래스로 만든 귀여운 에어팟 베지터블소가죽케이스', '20230112', 'img10.png', 6);
insert into TBLFEED values (seqFeed.nextval, '오늘은 애플워치 가죽 스트랩 만들기 클래스에 다녀왔어요!', '20230113', 'img11.png', 7);

-- tblFeedComment;
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '반지 너무 이뻐요 ㅠㅠㅠ', '20230103', 1, 9);
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '저도 다음에 실반지 클래스 한번 가봐야겠어요!!', '20230103', 1, 3);
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '가념일 너무 축하드려요!!', '20230104', 2, 5);
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '이니셜 팔찌 너무 이뻐요 ㅠㅠㅠ', '20230104', 2, 8);
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '어머니가 너무 좋아하셨을 거 같아요 ❤️', '20230105', 3, 9);
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '탄생석 색감이 너무 이뻐요!!', '20230106', 4, 10);
insert into TBLFEEDCOMMENT values (seqFeedComment.nextval, '키링 색감이 영롱해서 너무 이뻐요 ㅠㅠ', '20230108', 6, 5);

-- tblFeedRecomment;
insert into TBLFEEDRECOMMENT values (seqFeedRecomment.nextval, '다음에 꼭 가보세요!! 너무 재밌고 좋았어요 ㅎㅎ', '20230103', 2, 2);
insert into TBLFEEDRECOMMENT values (seqFeedRecomment.nextval, '감사합니다 ❤️', '20230103', 3, 2);
insert into TBLFEEDRECOMMENT values (seqFeedRecomment.nextval, '엄마가 너무 마음에 들어하셨어요 ㅎㅎ!!', '20230105', 5, 2);
insert into TBLFEEDRECOMMENT values (seqFeedRecomment.nextval, '색감이 진짜 너무 이쁘죠! ㅠㅠㅠ', '20230108', 7, 7);


select * from TBLHASHTAG;

select * from tblFeedHashtag;
-- tblFeedHashtag;
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 1, 1);
-- insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 21, 1);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 2, 2);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 21, 3);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 22, 4);
-- insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 23, 5);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 21, 5);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 3, 6);
-- insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 4, 7);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 21, 7);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 5, 8);
-- insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 7, 9);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 6, 9);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 11, 10);
-- insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 7, 10);
insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 7, 11);
-- insert into TBLFEEDHASHTAG values (seqFeedHashtag.nextval, 10, 11);



-- tblCategory (번호, 이름)


alter table tblClass add(duetime varchar2(30) not null); --수업시간

insert into tblCategory(seq, name) values (seqCategory.nextVal, '주방용품');
insert into tblCategory(seq, name) values (seqCategory.nextVal, '욕실용품');
insert into tblCategory(seq, name) values (seqCategory.nextVal, '인테리어소품');
insert into tblCategory(seq, name) values (seqCategory.nextVal, '디퓨저/캔들/향수');
insert into tblCategory(seq, name) values (seqCategory.nextVal, '패션/잡화');
insert into tblCategory(seq, name) values (seqCategory.nextVal, '문구/사무');


-- tblClass


select * from tblClass;

--행 1
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'디저트접시 만들기 플레이트 핸드빌딩 원데이 클래스','도자기 원데이 클래스는 캐릭터 플레이트(또는 기본플레이트) 등 1가지 플레이트를 만드는 수업입니다.
혼밥그릇, 캐릭터접시 등 작업의 기본이 되는 낮은 플레이트 형태의 그릇을 만들어봅니다.
누구나 쉽고 간단하게 작업 하실 수 있도록 곁에서 잘 알려드릴게요!

캐릭터플레이트(또는 기본접시) : 기본이 되는 밑원판을 원하는 모양으로 잘라내어 윗 기둥을 만들어 세워주는 작업을 하고 모양을 내준 후 다듬어 줍니다.

완성된 기물은 천천히 건조 후 1차 가마 약 700-800도의 초벌소성 후, 시유 과정을 거치고, 2차 가마 약 1200-1250도의 재벌 소성 후 거친부분이 없도록 연마작업을 통해 다듬어 준 후 완성됩니다.','1 단계 : 재료소개 및 도자기특성 설명
사용하는 재료 특성에 대해 소개하고 유의할 부분에 대해 알아보기

2 단계 : 소지(흙)으로 반죽 후 판밀기
제공받은 소지를 사용해서 반죽 하고 밀대로 균일하고 판판하게 그릇의 원판이 되는 기본판 밀어주기

3 단계 : 구상한 디자인 모양으로 형태
미리 구상해온 디자인으로 형태 잡아주기

4 단계 : 작업 완료 후 재료와 자리
작업이 모두 완료 되면 처음 받았던 상태로, 재료와 도구 및 자리 정리하면 수업이 모두 종료됩니다:D','1시간 30분',to_date('2023-02-13', 'YYYY-MM-DD'),'13시 30분',8,35000,'디저트접시.jpg',27);
--행 2
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'원목도마, 나만의 각인까지!','세상에 하나뿐인 도마 만들기 클래스!

원하는 목재와 사이즈를 골라 디자인과 재단, 오일마감, 우드버닝 각인까지 할 수 있는 클래스입니다.
오시는 분들 대다수 분들이 목공을 처음 접하시는 분들입니다.
경험이 전~혀 없으셔도 퀄리티 높은 나만의 도마를 만들어 가실 수 있습니다!
초보자도 쉽게 하실 수 있도록 기계 사용법부터 하나하나 알려드립니다.

일반적인 칼도마사용은 물론 디스플레이나 감각적인 플레이팅 용으로 다양하게 활용할 수 있는 나무 도마를 만들어 보세요.

우드버닝 초상화 작가로 활동하고 있는 목수가 버닝펜(인두)으로 자신만의 문구를 쓸 수 있게 도와드리는 경험.
하나뿐인 도마는 물론 각인으로 더욱 특별하게. 오직 슈퍼블룸에서만 만날 수 있는 서비스입니다.
원하는 문구와 그림을 새길 수 있어 선물용으로도 좋습니다. ^-^

편한 복장과 즐거운 마음으로 오셔요.
준비물은 공방에 다 준비되어 있습니다.','1 단계 : 디자인 구상 및 나무 고르기
원하는 도마모양 구상하고 나무의 종류와 크기를 선택합니다.

2 단계 : 스케치 하기
나무 위에 원하는 모양으로 스케치를 합니다.

3 단계 : 나무 자르기
곡선 또는 직선으로 나무 재단합니다.

4 단계 : 사포질 하기
사포질을 통하여 나무 표면을 곱게 다듬어줍니다.

5 단계 : 각인하기
서명, 문구, 그림을 선택해서 나만의 각인은 새깁니다.

6 단계 : 오일 마감하기
천연오일로 마감처리를 해줍니다.','2시간 30분',to_date('2023-02-21', 'YYYY-MM-DD'),'16시 30분',3,75000,'원목도마.jpeg',9);
--행 3
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'우드카빙 - 버터나이프, 나무숟가락을 깎아보자!','우드카빙이란?
나무를 조각도로 천천히 깍아서 나만의 생활소품을 만드는 공예입니다.

칼을 사용하니 위험하지 않을까?
여러 안전장치와 강사의 시연을 통해 안전하게 체험하실 수 있도록 도와드립니다.

손재주가 없어도 걱정 마세요!
천천히 깍다보면 조금씩 형태가 나타나요.
친절한 목수언니가 요령을 알려주면 그대로만 따라하시면 어느새 형태가 드러나고 완성이 되는 마법! ㅎㅁㅎ
새소리가 들리고 나무가 보이는 아담한 목공방에서 세상에 하나뿐인 나만의 작품을 만들어 보세요.

어떤 나무를 깍아볼까?
캄포(밝은 나무톤, 화려한 무늬와 독특하고 개성 넘치는 향을 자랑합니다.)와
월넛(진한 색감과 무늬는 월넛을 따라올 나무는 없죠!)
중에 하나를 선택하여 만들게 됩니다.

버터나이프 or 숟가락 or 머들러(롱티스푼) 중에 하나를 택하여 만드는 수업입니다.

각인이 가능한가요?
네 물론입니다.
나만의 각인을 해줌으로써 더 스페셜해지는 나만의 작품!
레이져 각인이 아닌 인두펜으로 손으로 쓰는 각인이 가능합니다.(추가금 없어요)

혼자 가도 되나요?
괜찮아요! 나무 깍는데 집중하다보면 시간이 훌쩍 가버려요. 그리고 저도 낯가려요..ㅎㅎ 우리 같이 낯가리며 즐거운 시간 만들어 보아요. ^ㅇ^
편한 복장과 즐거운 마음으로 오셔요.
준비물은 공방에 다 준비되어 있습니다.','1 단계 : 나무소개 및 조각도 사용방법
캄포와 월넛 중 하나를 고르고 강사 시연을 통해 조각도의 사용 방법에 대해 설명해 드립니다.

2 단계 : 사각 사각 나무 깍는 즐거움
나무를 만지고 깍는 시간 동안 굉장히 집중하게 됩니다.
온전히 나만의 힐링 시간을 즐겨보세요.

3 단계 : 사포질 및 오일마감.
형태가 완성 되었다면 표면의 부드러움을 위해 포풍 사포질과 오일(호두오일) 마감.','3시간',to_date('2023-02-12', 'YYYY-MM-DD'),'12시',7,55000,'버터나이프.jpeg',16);
--행 4
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'나만의 오브제 그릇 만들기 (핸드빌딩) 이색 체험','점토를 이용하여 나만의 접시를 만들어 보세요~
핸드빌딩 기법을 통해 좋아하는 오브제를 부착하여 도자기 접시를 만들어볼 수 있어요!
여러 오브제를 부착하여 무엇이든지 원하는대로 재미있고 쉽게 만들실 수 있습니다.

세상에 단 하나 밖에 없는 유니크한 나만의 것을 만들고 싶을 때
친구의 생일에 둘도 없는 새로운 선물을 하고 싶을때,
연인, 가족과 같이 아주 특별한 경험을 하고 싶을때,
분위기 있고 아늑한 공간에서 음악과 차 그리고 좋은 사람과 함께
멋진 날 그리고 예쁜 도자기를 만드실 수 있어요 :)

※ 핸드빌딩이란?
- 핸드빌딩 : 핸드빌딩은 점토를 통해 도자기를 만드는 기초적인 방법으로 여러가지 기법을 통해 손으로 직접 점토를 빚어 만드는 체험입니다.','1 단계 : 재료준비와 만드는 과정 설명
수업에 사용할 재료들에 대해 소개하고 유의사항과 만드는 과정들을 간단하게 먼저 알려드립니다.
그리고 만드실 도자기의 디자인에 대해 먼저 상의하실게요 :)

2 단계 : 형태만들기
핸드빌딩을 통해 캐릭터의 기본적인 형태를 먼저 만들어요~

3 단계 : 색칠하기
만들어진 형태에 도자기용 물감을 이용해 원하는 색을 칠해요!
그리고 잘 다듬어 주면 끝이랍니다!

4 단계 : 작품 굽기
작품은 건조 - 초벌 - 다듬기 - 시유 - 재벌의 과정까지 거쳐야 해요~
여기부터는 저희에게 맡겨 주세요!
조금만 기다리시면 세상에 하나밖에 없는 나만의 접시가 완성됩니다!','1시간 30분',to_date('2023-02-05', 'YYYY-MM-DD'),'10시',10,51000,'오브제 그릇.jpg',7);
--행 5
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'주방인테리어, 체커보드 수세미 만들기','매일 사용하는 수세미, 교체 주기가 있다는 사실 아시나요? 위생도 챙기고 인테리어도 챙기고 일석이조! 코바늘의 기초부터 수세미실 뜨개팁, 실 교체방법까지-! 수세미 만들기 배우고 코바늘 고수가 되는 법 자세히 알려드려요 :D','1.코바늘의 기본 원리이해
2.뜨개 기법 숙지(시연 후 연습)
3.편물이 만들어지는 원리 이해
4.수세미 완성!','3시간',to_date('2023-02-20', 'YYYY-MM-DD'),'14시',4,36000,'체커보드.jpeg',22);
--행 6
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'코바늘 찰리브라운 수세미 만들기','작지만 무언가 손으로 만들어 보고 싶은데 시작하기 두려우신가요?

평범한 수세미 말고 귀엽고 감성 낭낭한 수세미로 주방 분위기를 바꿔 보고 싶지 않으신가요?

그렇다면 저와 함께 수세미 만들어요!

기초 코바늘법만 익힌다면 얼마든지 만들 수 있어요 :)
조그마한 수세미지만 완성하고 나면 확 달라진 주방의 분위기에 뿌듯할 거에요.

물론 선물용으로도 너무 좋답니다 :)','1간단한 소개
2기본 뜨개 기법 안내
3수세미만들기
4응용기법 설명
-마무리정리','2시간',to_date('2023-02-01', 'YYYY-MM-DD'),'11시',10,22000,'찰리브라운.jpeg',19);
--행 7
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'핸드빌드 클래스 _ 도자기 소주잔 세트 만들기','│클래스 소개│

핸드빌드란?
전문가용 점토와 소도구를 이용하여
형태부터 장식까지 손으로 직접 만들어가는 활동입니다.','1 단계 : 이론 및 시뮬레이션
본 커리큘럼이 시작 전 도예용 점토를 다루는 기본적인 방법을 설명드립니다.

2 단계 : 도자기 만들기 [성형 단계]
각 형태에 맞는 기법을 통해 예쁜 도자기로 만들어주세요

3 단계 : 도자기 만들기 [장식 단계]
예쁘게 형태를 만들었다면 이제 장식과 다듬기를 통해 작업의 완성도를 끌어올려 주세요.','2시간',to_date('2023-02-15', 'YYYY-MM-DD'),'10시',4,50000,'도자기 소주잔.jpg',2);
--행 8
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'도자기_핸드빌딩_원데이클래스','_핸드빌딩 원데이 클래스
*흙을 이용하여 나만의 디자인으로 작품을 만들 수 있습니다.
*작품이 완성되면 공방에서 초벌, 재벌 과정을 마친 후 개별적으로 연락을 드립니다.
*수업에 필요한 모든 재료는 공방에서 준비합니다(재료비, 수강료, 소성비 포함)
*도자기의 특성상 소성 시 발생할 수 있는 문제로 인해 환불이나 재작업이 불가합니다.
(ex_기포로 인한 파손, 유약흐름, 철분으로 인한 반점 등)','1 단계 : 도자기란?
도자기가 만들어 지는 과정 설명

2 단계 : 디자인하기
내가 만들고 싶은 작품 간단한 스케치

3 단계 : 핸드빌딩
스케치 보며 작품 제작

4 단계 : 완성
완성 후 사진찍고 클래스 마무리','1시간 20분',to_date('2023-02-15', 'YYYY-MM-DD'),'14시',6,40000,'도자기_핸드빌딩.jpg',18);
--행 9
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'당일수령가능한 그림컵만들기 !','선물로도 좋습니다 갑자기 필요한 선물이나 특별한 선물 제작이 필요하시다면 그림컵 만들기 해보세요!!
그림을 살살 그려주시면 이쁜 머그잔에 쏙 넣어드려요 만족 100%체험 이랍니다','1 단계 : 그림컵제작
도안을 먼저 준비해줍니다!

2 단계 : 스케치 시작
연필로 스케치를 해줍니다

3 단계 : 그림그리기
스케치완성된곳에 색칠을 해주세요 ! 5분뒤 그림컵 완성입니다','1시간',to_date('2023-02-01', 'YYYY-MM-DD'),'13시',1,45000,'그림컵.jpeg',2);
--행 10
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'색소지 플레이트 만들기 원데이 클래스','해당 클래스는 색깔 점토를 사용하여
마블링 플레이트를 만드는 수업입니다.
누구나 쉽고 간단하게 작업 하실 수 있도록 잘 알려드릴게요!

마블링플레이트(접시)
:발색도가 높은 백자토에 색점토(소지)를 사용하여
도안구상 후 디자인하여 밀대로 잘 밀어 접시형태를 잡아주고
다듬어 줍니다.

완성된 기물은 천천히 건조 후 1차 가마 약 700-800도의
초벌소성 후, 시유 과정을 거치고,
2차 가마 약 1200-1250도의 재벌 소성 후
거친부분이 없도록 연마작업을 통해 다듬은 후 완성되요!

모두 완성되기까지 최소 약 한달반 이상 정도의 시간이 걸립니다.
앞치마와 재료 및 도구는 제공 되며,
가마소성까지 포함된 내용이에요.','1 단계 : 점토 특성 및 수업과정 설명
도자기점토에 대한 특성과 유의할 부분, 전체 수업과정을 설명

2 단계 : 판성형 기법 배우기
비교적 쉬운 판성형 기법을 활용하여 작업을 시작

3 단계 : 꾸미고 다듬기
색깔 점토를 사용 해 도안구성과 디자인을 하고 갈라지지 않고 거칠지 않게 다듬기','1시간 30분',to_date('2023-02-19', 'YYYY-MM-DD'),'10시',10,45000,'색소지플레이트.jpeg',16);
--행 11
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'물레도자기 3개만들기 - 내가 만든것에 내가 담아 먹는다','도자기의 큰매력은 직접만든것을 직접 사용할수 있다는 것이지요. 사랑하는 사람에 세상하나뿐인 선물도 하고 만드는 사람에게는 만들면서 힐링되는 시간을 스스로에게 선물하는 그리고 좋은사람들과 함께 만든다면 좋은 추억도 덤으로 같이 만들수가 있어요

그릇은 한명당 컵, 사발, 국그릇 3개를 만드시게 될것이고요
본인이 만든것이 스스로와 누군가에게 위로가 되었으면 좋겠어요.^^','1 단계 : 중심잡기
물레로 기물을 만들때 가장 기분이 되는 단계로 흙이 흔들리지 않게 가운데로 모아줍니다.

2 단계 : 구멍내기
중심잡은 흙정중앙에 그릇을 만들기 위해서 공간을 만들어 주는 과정입니다.

3 단계 : 흙 성형하기
전단계에서 중앙에 뚫어 놓은 공간을 넓히고 끌어 올려서 그릇의 형태를 만듭니다.

4 단계 : 기물을 분리
성형이 완성된 기물을 물레에서 분리합니다.

5 단계 : 색안료 장식
완성된 기물에 색물감을 마구 뿌리거나 칠해서 원하는 장식을 합니다.

6 단계 : 완성
6~8주뒤에 가마에서 완성품이 나오면 찾아가시면 됩니다.','1시간 30분',to_date('2023-02-20', 'YYYY-MM-DD'),'14시',2,55000,'물레도자기.jpg',25);
--행 12
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,1,'라탄 채반 원데이클래스',' 라탄 채반 ]

굽이 있는 원형 채반으로 과일, 야채 등을 담는데 사용할 수 있으며 활용도가 높은 디자인으로
장식 또는 인테리어 소품으로 사용되기도 합니다.

- 작업 속도에 따라 디자인이 변경될 수 있습니다.
- 사이즈 : 높이 5cm, 지름 28cm','1 단계 : 라탄 공예 소개 및 기법 설명
라탄 공예에 대한 소개와 기본적인 기법에 대해 설명해드립니다.

2 단계 : 기법 작업, 응용 및 디자인
기법 작업을 직접 해보고 응용방법과 디자인 방법에 대해 배웁니다.

3 단계 : 작품의 다양한 활용 안내
작품이 활용될 수 있는 다양한 범위를 안내해드립니다.

4 단계 : 완성 후, 포토타임!
완성된 작품은 준비된 포토존에서 촬영합니다.','2시간 30분',to_date('2023-02-12', 'YYYY-MM-DD'),'10시 40분',10,50000,'라탄채반.jpeg',39);
--행 13
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'트윙클트윙클'' 보석비누 만들기
','"트윙클트윙클 보석비누 만들기"클래스를 소개합니다.
모양/색/향을 취향에 맞게 선택하여 나만의 특별한 비누를 만들어 볼 수 있어요.
비누는 500g 기준으로 4~5개 정도 만들수 있으며 클래스 당일 수령 가능합니다.
예쁘게 포장도 해드리고 있어 주변 분들에게 선물하기도 너무 좋아요 :)
','1 단계 : 색/향/모양 선택
원하는 색/향/모양을 취향에 따라 선택합니다.

2 단계 : 비누 만들기
선택한 모양에 맞게 비누를 제작합니다.

3 단계 : 포장
누가 받아보아도 기분 좋게 포장합니다.','1시간 30분',to_date('2023-02-17', 'YYYY-MM-DD'),'13시',8,48000,'보석비누.jpeg',37);
--행 14
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'제로웨이스트! 미세플라스틱 없는 삼베샤워타월 만들기','🌿자연에 가까운 소재로 만들어 쓰고 난 뒤
자연으로 돌려 보내주세요 🌏

평생 취미 코바늘도 배우고 부들부들 각질 제거도 되는
샤워타월 만들기 클래스입니다.
삼에서 뽑아낸 삼베실로 샤워타월, 목욕타월을 만들어요.

삼베는 항균성, 항독성이 있고,
세제나 바디워시 없이도 세정력이 좋은 섬유입니다.
천연 섬유 중 가장 내구성이 좋은 섬유이기도 한
삼베실을 다뤄보는 시간이 될 거에요.

내구성 좋은 섬유지만 충분히 사용 후엔
자연으로 돌려보낼 수 있는 천연 소재로 만들어
지구를 지키는 제로웨이스트에 한 발 다가서 보아요.

제로 웨이스트, 노플라스틱, 에코프로젝트!
삶의 가까운 곳에서 즐겁게 취미 생활하며
실천 할 수 있는 계기를 만들어드려요.','1 단계 : 코바늘의 기초를 배우는 시간
start~ 00:30
도구의 사용법 숙지하고 시작코 잡는 법과 코바늘 기법에 대해 설명하고 시연합니다.

2 단계 : 직접 편물을 짜보는 시간
00:30~ 02:30
긴뜨기를 반복하며 기법을 숙지해 편물을 만들어 봅니다.

3 단계 : 핸들을 달아 마무리하는 시간
02:30~03:00
실 교체법 안내 후 짧은뜨기를 반복하여 핸들을 달아 완성해봅니다.

✔배운 기법을 바탕으로 다양하게 응용할 수 있는 팁을 알려드려요!','3시간',to_date('2023-02-24', 'YYYY-MM-DD'),'12시',3,40000,'삼베샤워타월.jpg',37);
--행 15
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'내 피부를 위한 천연 비누 만들기(500g)','디자인만 예쁜 것이 아닌, 피부에 좋은 효능까지 가득 담은 천연 비누 만들기!
저와 함께 비누에 그림그리기 해보실분 언제나 환영합니다.

각자 피부타입에 맞는 오일 레시피를 구성하여 나만을 위한 천연비누를 제작할 수 있습니다.
500g 만들기 수업에서는 총 4~5개의 비누를 만들 수 있습니다.','1 단계 : CP비누 설명 및 디자인
CP비누에 대해 간단히 설명 해드리고 어떤 비누를 만들지 디자인 스케치를 합니다.

2 단계 : 오일과 향 계량하기
비누에 사용될 오일과 향을 비율에 맞춰 계량합니다.

3 단계 : 컬러 조색하기
원하는 디자인을 위한 컬러를 조색합니다.

4 단계 : 보온고로 비누 이동하기
비누를 완성한 다음 형태를 고정하기 위해 보온고로 비누를 이동합니다.','1시간',to_date('2023-02-09', 'YYYY-MM-DD'),'14시 30분',15,50000,'천연 비누.jpg',40);
--행 16
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'케이크 / 캐릭터 / 아이스크림 입욕제 만들기','천연재료를 사용해 나만의 아이템을
만들어가시는 원데이클래스 입니다:)
원하는 효능, 향, 색감, 모양을 직접 선택해
만드는 기쁨을 느껴보세요~!
Jemma House의 모든 프래그런스오일은
프탈레이트 무첨가 제품으로 사용됩니다.

완성된 작품은 예쁜 상자에
선물 포장해 바로 선물 가능하세요^^','1 단계 : 재료소개 및 만드는 과정설명
사용하는 재료에 대해 소개하고 전체적인 과정에 대한 설명을 드려요.

2 단계 : 원하는 구성과 디자인, 향
원하시는 구성과 향, 입욕제 디자인을 선택하실거예요.

3 단계 : 천연 입욕제 만들기
천연 입욕제를 만들어주는 과정입니다.

4 단계 : 포토타임, 포장하기
포토존에서 사진을 찍고 원하는 선물상자에 포장하시면 완성!','1시간 30분',to_date('2023-02-09', 'YYYY-MM-DD'),'15시 30분',6,55000,'천연 입욕제.jpg',18);
--행 17
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'탄산 바스붐 입욕제 만들기','천연재료를 사용해 나만의 아이템을
만들어가시는 원데이클래스 입니다:)
원하는 효능, 향, 색감, 모양을 직접 선택해
만드는 기쁨을 느껴보세요~!
Jemma House의 모든 프래그런스오일은
프탈레이트 무첨가 제품으로 사용됩니다.

완성된 작품은 예쁜 상자에
선물 포장해 바로 선물 가능하세요^^','1 단계 : 재료소개 및 바스붐 만드는
사용하는 재료에 대해 소개하고 전체적인 과정에 대한 설명을 드려요.

2 단계 : 원하는 효능과 디자인, 향
원하시는 향과 효능, 디자인을 선택하실거예요.

3 단계 : 탄산 바스붐 만들기
탄산 바스붐을 만들어주는 과정입니다.

4 단계 : 포토타임, 포장하기
포토존에서 사진을 찍고 원하는 선물상자에 포장하시면 완성!','1시간 30분',to_date('2023-02-23', 'YYYY-MM-DD'),'12시 30분',6,49000,'탄산 바스붐.jpg',39);
--행 18
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'천연유래샴푸 만들기','식물성 계면활성제로 만들어 안심하고 사용할 수 있는 천연유래샴푸입니다.
500ml 대용량 샴푸 1통 만드는 과정입니다.','1 단계 : -재료소개 및 방법 설명-
도구/재료/제작과정에 대한 설명

2 단계 : -재료 및 도구 준비-
재료를 준비하고 사용할 도구 소독

3 단계 : -샴푸 제작-
각 재료를 첨가하여 샴푸 만들기 실습

4 단계 : -포장-
소독해둔 공병에 담아 라벨을 붙이고 완성!','1시간 30분',to_date('2023-02-13', 'YYYY-MM-DD'),'11시 30분',15,48000,'천연유래샴푸.png',20);
--행 19
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'mp비누만들기(녹여붓기방식) 원데이클래스','만들어져있는 비누베이스에 첨가물(색,향,허브류,기능성천연분말 등)을 섞어 몰드에 부어 굳히는 방식으로 다양한 모양,색,향을 비누에 표현가능한 수업입니다.','mp비누만들기(녹여붓기방식)
비누를 녹여 틀에 부워만드는 비누로 다양한 형태로 완성할 수 있습니다.
투명함을 살리거나 깍아 보석과 같은 형태로도 제작가능합니다.','1시간 30분',to_date('2023-02-26', 'YYYY-MM-DD'),'14시 30분',4,60000,'mp비누만들기.jpg',17);
--행 20
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'캐릭터 쿠키커터 버블바만들기(입욕제) 원데이클래스','
거품을 내는 입욕제(버블바)를 직접 만들어보는 수업입니다 :)
쿠키커터를 이용한 방법으로, 아이도 만들 수 있고
어른들도 즐겁게 하실 수 있는 과정입니다,

원하는 색상, 향을 선택해서 만드는 수업으로
쿠키커터 모양도 여러가지라 원하는 모양 선택가능해요

조그마한 쿠키모양의 버블바(입욕제)을 약 20개 정도 만들어가요!😊','1 단계 : 원하는 향을 선택하기
입욕제, 비누 전용 향료를 맡아본 후 원하는 향을 선택한다

2 단계 : 원하는 색상 선택하기
원하는 버블바의 색상을 선택한다,

3 단계 : 반죽하여 만들기
원하는 색, 향을 넣어 원하는 쿠키커터 틀로 반죽을 찍어내면 완, 성 :-) ♥️🙆🏻‍♀️','1시간',to_date('2023-02-27', 'YYYY-MM-DD'),'10시',6,45000,'캐릭터 쿠키커터 버블바.jpeg',9);
--행 21
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,2,'cp비누만들기(숙성비누,저온교반법방식) ','피부타입별 비누를 만드는 과정으로, 비누의 기본요소인 오일들을 직접 계량하고 교반시켜 첨가물(색,향,허브류,기능성천연분말 등)을 섞어서 만드는 저온교반법 비누를 만드는 수업입니다.','1 단계 : cp비누만들기
다양한 디자인 비누를 만들 수 있는 CP비누 입니다.
틀안에 층층히 비누층을 쌓아 그림을 연출하거나 여러가지 컬러의 비누를 완성할 수 있습니다.','1시간',to_date('2023-02-03', 'YYYY-MM-DD'),'16시',4,80000,'cp비누만들기.jpg',5);
--행 22
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'네온사인 만들기 체험','인기많은 네온사인 원데이클래스를 소개해드릴게요
집 인테리어 소품으로 나만의 홈바를 만들어보거나
집들이 선물, 커플 아이템을 만들어보세요','1 단계 : 주의사항
네온와이어 및 주의사항 소개

2 단계 : 도안결정
도안 결정 및 스케치 작업

3 단계 : 네온사인 제작
네온 와이어를 이용해서 네온사인 만들기

4 단계 : 완성
완성된 작품 촬영','1시간',to_date('2023-02-04', 'YYYY-MM-DD'),'9시',20,35000,'네온사인.jpg',7);
--행 23
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'아크릴 무드등, 나만의 조명 만들기 원데이 클래스','내방 분위기를 책임져줄 나만의 무드등을
직접 만들어 볼 수 있는 원데이클래스입니다

쉬운 난이도에 비해 퀄리티 있는 작품을 만들어가실 수 있어요

인테리어 소품이나 커플, 어버이날, 집들이 선물로
정성을 담은 작품을 만들어보세요','1 단계 : 도안선택
샘플도안이나 원하시는 도안으로 진행

2 단계 : 제작 방법 및 주의사항 설명
아크릴 무드등 제작 방법 및 주의점 설명

3 단계 : 연습
제작 전 연습용 판에 스케치 해보기

4 단계 : 제작
도구를 이용하여 직접 제작

5 단계 : 완성
작품 완성 및 사진 촬영','1시간 10분',to_date('2023-02-05', 'YYYY-MM-DD'),'15시',7,26000,'아크릴 무드등.jpg',33);
--행 24
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'원데이 도자기 모빌 만들기','오늘은 나도 도예가!!!
형식에 얽매이지 않고 만들고 싶은 것들을 제작할 수 있게 도와드립니다!!
다양한 재료들이 있어 일반적인 도자기보다 조금 유니크 한 것 들을 만들 수 있어요~!!
','오늘은 나도 도예가!!!
형식에 얽매이지 않고 만들고 싶은 것들을 제작할 수 있게 도와드립니다!!
다양한 재료들이 있어 일반적인 도자기보다 조금 유니크 한 것 들을 만들 수 있어요~!!
','1시간',to_date('2023-02-01', 'YYYY-MM-DD'),'11시',10,40000,'도자기 모빌.jpeg',24);
--행 25
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'라탄시계 원데이클래스','라탄시계 원데이클래스입니다
염색환심을 이용한 작업으로
시계는 탁상, 벽걸이로 이용 가능합니다

시간은 두시간 가량 소요되며
초보자도 가능합니다

아이방 꾸미기나 선물, 셀프인테리어로
활용해보세요.','1 단계 : 라탄환심끼우기
시계합판에 미리염색해놓은 라탄환심을 끼웁니다

2 단계 : 라탄엮기작업
막엮기, 새줄꼬아엮기, 두줄젖혀마무르기 등 다양한 기법을 이용하여 라탄을 엮습니다

3 단계 : 마감
라탄오일로 마무리 작업을 합니다','1시간',to_date('2023-02-23', 'YYYY-MM-DD'),'10시',2,60000,'라탄시계.jpeg',12);
--행 26
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'라탄 거울 원데이클래스','[ 라탄거울 ]

초보자도 쉽게 만들 수 있도록 자작나무 합판을 이용하여 심플하면서도 감각적인 디자인의 라탄 거울입니다.
쉽고 예쁘게 만들어 인테리어 소품으로 쓰기에도, 가볍게 선물하기도 좋은 라탄 거울입니다.

- 작업 속도에 따라 디자인이 변경 될 수 있습니다.
- 사이즈 : 지름30cm','1 단계 : 라탄 공예 소개 및 기법 설명
라탄 공예에 대한 소개와 기본적인 기법에 대해 설명해드립니다.

2 단계 : 기법 작업, 응용 및 디자인
기법 작업을 직접 해보고 응용방법과 디자인 방법에 대해 배웁니다.

3 단계 : 작품의 다양한 활용 안내
작품이 활용될 수 있는 다양한 범위를 안내해드립니다.

4 단계 : 완성 후, 포토타임!
완성된 작품은 준비된 포토존에서 촬영합니다.','1시간 30분',to_date('2023-02-15', 'YYYY-MM-DD'),'14시',20,70000,'라탄 거울.jpeg',17);
--행 27
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'라탄 꼬마조명 원데이클래스','[ 라탄꼬마조명 ]

스위치를 켜지 않고 오브제로 두어도 예쁘며 무드등으로 전구색의 포근하고 은은한 불빛으로
편안한 분위기를 연출하기에도 좋습니다.
USB 충전식으로 사용하기 편리하고 작은 사이즈로 언제 어디서든 장소에 구애받지 않고 사용이 가능합니다.

- USB 케이블 포함
- 사이즈 : 지름 7cm * 높이 11cm','1단계 : 라탄 공예 소개 및 기법설명
라탄 공예에 대한 소개와 기본적인 기법에 대해 설명해드립니다.

2 단계 : 기법 작업, 응용 및 디자인
기법 작업을 직접 해보며 응용방법과 디자인 방법을 알려드립니다.

3 단계 : 작품의 다양한 활용 안내
작품을 다양하게 활용할 수 있는 범주를 알려드립니다.

4 단계 : 완성 후, 포토타임!
완성된 작품은 포토존에서 포토타임을 가집니다.','1시간 30분',to_date('2023-02-22', 'YYYY-MM-DD'),'11시',20,50000,'라탄 꼬마조명.jpeg',9);
--행 28
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'영롱하게 빛나는 나만의 썬캐쳐','낮에는 빛에 반짝이는 효과를 볼수있고 밤에는 허전했던 공간을 포인트로 꾸며줄수있는 인테리어 소품입니다!
손재주가 없어서 망설이셨던 분들 이제 망설이시지 마세요!
저와 함께 멋진 썬캐쳐를 만들어 봐요!','1 단계 : 썬캐쳐 설명
공예시 주의 사항 설명

2 단계 : 디자인 구성
썬캐쳐 디자인 구성 방법을 간단히 설명 후 나만의 디자인으로 구성 한다.

3 단계 : 공예 시작
구성 한 디자인으로 공예 시작
질의 응답으로 진행된다.

4 단계 : 마무리
마무리 방법 설명

5 단계 : 포장
포장','1시간',to_date('2023-02-06', 'YYYY-MM-DD'),'16시',25,26900,'썬캐쳐.jpg',32);
--행 29
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'마음을 달래주는 소리, 차르르 자개모빌 만들기 클래스','자개가 서로 부딪히는 소리를 들어보신 적 있나요?
차르르 나는 소리는 마음의 안정을 주는 백색소음이예요.

컬러, 크기, 디자인 전부 내 마음에 꼭 맞는 모빌을 만드는 클래스입니다.
원하는 컬러 자개칩을 고르고 디자인을 구상한 후 엮어가는 시간도 힐링이 될거예요.

바람이 불어오는 자리에 걸어두면 차르르 소리가 마음을 달래줄거예요.
오픈할 수 없는 실내라면 히터나 에어컨 자리에 걸어두어도 좋아요.

재료는 모두 제공해드려요.
편안하게 오셔서 나만의 자개모빌 만들어가세요 :)','1 단계 : start~ 00:15
원하는 디자인 구상 및 재료 선정.

2 단계 : 00:15~01:30
매듭법 시연 및 숙지.
구상한 디자인을 바탕으로 재료 배치.

3 단계 : 01:30:~2:00
모빌 완성 및 사진 촬영.','1시간',to_date('2023-02-26', 'YYYY-MM-DD'),'9시 30분',4,45000,'자개모빌.jpg',11);
--행 30
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'무전력 우드스피커 만들기 원데이 클래스','초등학생부터 중,고등학생까지 연령관계 없이 들을 수 있는 수업이며 스피커를 완성하고 난 뒤 가죽공예는 추가로 선택할 수 있습니다.
서로의 이니셜을 새기는것도 좋고 멋진 글귀를 새겨보는 것도 좋고 평범한 일상을 조금 특별한 하루로 만들어드릴게요.','1 단계 : 기본 커리큘럼
기본적인 목공예의 개념부터 간단한 장비를 다루는 법을 알려드립니다.

2 단계 : 내부 샌딩
조립전 내부를 샌딩합니다

3 단계 : 조립
스피커 모양이 맞게 조립합니다.

4 단계 : 외부샌딩
조립된 제품의 외부를 샌딩합니다

5 단계 : 우드버닝
윈하시는 문구를 버닝펜으로 새깁니다

6 단계 : 오일마감
오일로 전체를 마감합니다

7 단계 : 마무리
완성된 제품을 사진에 담습니다','1시간',to_date('2023-02-18', 'YYYY-MM-DD'),'14시 30분',30,70000,'우드스피커.jpg',33);
--행 31
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,3,'마크라메 월행어 만들기','우드봉에 로프를 걸고,
다른 도구없이 직접 손으로 매듭을 지어 만드는 월행어 입니다.

그 어떤 작품보다 쉬우면서도 완성도가 높아 가장 만족도가 높은 아이템이에요.
쉽게 인테리어를 시작해 볼 수 있죠.

무엇보다도 반짝이는 골드 링이 포인트가 되어서
이 월행어 하나 만으로도 인테리어 소품으로 충분합니다.','1 단계 : 로프 걸기
나무 봉에 로프를 걸어줍니다.

2 단계 : 매듭 배우기
스퀘어 매듭을 배워 몸판을 만들고, 하프 매듭을 배워 장식하기

3 단계 : 커팅하고 완성
밑단을 원하는 모양을 자르고 포장까지-','1시간',to_date('2023-02-23', 'YYYY-MM-DD'),'13시 30분',4,40000,'월행어.jpg',16);
--행 32
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'조향사와 함께 섬유 향수/룸스프레이 만들기','DIY CLASS. 향기로 디자인하는 라이프스타일! 세상에 단 하나뿐인 나만의 향을 찾아서
신발장, 옷장, 침대곁, 화장실, 자동차 등 나를 둘러싼 모든 공간에 나만의 향기를 덧입혀보세요.
전문 조향사와 함께 최고급 원료로 만든 특별한 향이 일상을 더욱 아름답게 합니다.','1 단계 : 간단한 스멜링 훈련
간단하게 스멜링 훈련을 진행합니다.

2 단계 : 향의 비율 정하기
원하는 향과 향의 비율을 정합니다.

3 단계 : 재료 설명
섬유 향수 제작에 필요한 재료를 설명합니다.

4 단계 : 성유 향수 만들기
섬유 향수 제작에 필요한 재료를 설명합니다.

5 단계 : 커스텀 라벨링 문구 디자인
커스텀 라벨을 디자인합니다..

6 단계 : 스티커 붙이기 & 포장
라벨스티커를 붙이고 포장합니다.','1시간',to_date('2023-02-16', 'YYYY-MM-DD'),'10시 30분',8,25000,'섬유 향수.jpg',33);
--행 33
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'수제 향수 공예 만들기 원데이 클래스','향수, 즐겨사용하는분들 많으시죠?
사람을 향기로 기억한다는 말이 있듯이
향은 사람이 느끼는 5감중에서도 아주 중요한 역할을 하는데요

향수는 부드러운향, 상큼한 향, 달콤한 향 등
다양한 향기가 존재하며 이를 어떻게
조합하느냐에 따라 전혀 다른 향수가
만들어 질 수 있다고 합니다.
​
호불호가 워낙 강한 제품이기 때문에
나의 취향에 딱 맞는 제품을 찾기란 쉽지 않죠.
아직 인생향수를 찾지 못했다면
향수만드는법을 배워서 내 손으로
직접 만들어 보는것은 어떠세요?','1 단계 : 클래스 설명
클래스에 대해 간단하게 설명해드립니다.

2 단계 : 시향
다양한 향기를 맡아보고 고르는 시간을 가집니다.

3 단계 : 블렌딩(간단 조향)
향을 섞어 나만의 향기를 만듭니다.

4 단계 : 30ml 향수로 완성
완성된 향을 30ml 병에 담아 완성합니다.','1시간',to_date('2023-02-07', 'YYYY-MM-DD'),'11시 30분',30,50000,'수제 향수.jpg',36);
--행 34
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'최상급 프랑스 향료로 나만의 향수 만들기','✔ 프랑스산 최상급 향료들을 재료로 사용합니다.

✔ 피부에 안전한 재료들을 사용하여
가장 아름다운 향을 만들 수 있도록
전문조향사가 함께 합니다.

✔ 200여종의 다양한 향에서
내가 원하는 향을 선택할 수 있습니다.

✔ 전문조향사가 도와주기 때문에
어렵지 않게 원하는 향을 선택하고 만드실 수 있습니다.

✔ 현 아카데미 운영 경험을 바탕으로
더욱 체계적인 수업이 이루어집니다.','1 단계 : 기본 노트 테스트
향의 네가지 기본노트를 테스트 해보고,
가장 좋은 분위기의 향을 선택합니다.
a. floral, b. fresh, c. woody, d. oriental

2 단계 : 나에게 맞는 향 상담
내 취향에 맞는, 만들고 싶은 향을 전문조향사와 상담합니다.
만들고 싶은 향에 대해 ''꽃 향, 과일 향'' 등 단어로 설명해도 되고,
''샤워하고 나온 느낌'' 등의 추상적인 향의 느낌으로 말씀해 주셔도 됩니다:)

3 단계 : 나에게 맞는 향 추천
상담 후 200여종의 향 중 내 취향에 맞는 향을 전문조향사가 추천해 드립니다.

4 단계 : 나에게 맞는 향 선택
추천해 준 향을 테스트 해 보고 마음에 드는 향을 고릅니다. (원하는 만큼 모두 고를 수 있어요!)
선택한 향 재료들로 향수의 레시피를 직접 정합니다.

5 단계 : 나만의 향수 제작
정한 레시피대로 향수병에 향을 넣어 직접 향수를 만듭니다.

6 단계 : 나만의 향수 비율 조절
먼저, 향수용량의 반을 만든 후 향을 테스트 해보고 나머지 반의 향 비율을 다시 정할 수 있습니다.
처음 만든 반과 나중에 만든 반을 함께 섞어 전체 향수를 만들게 됩니다!','1시간',to_date('2023-02-18', 'YYYY-MM-DD'),'13시 30분',4,50000,'나만의 향수 만들기.jpg',32);
--행 35
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'조향사와 함께 디퓨저 만들기','DIY CLASS. 향기로 디자인하는 라이프스타일! 세상에 단 하나뿐인 나만의 향을 찾아서
신발장, 옷장, 침대곁, 화장실, 자동차 등 나를 둘러싼 모든 공간에 나만의 향기를 덧입혀보세요.
전문 조향사와 함께 최고급 원료로 만든 특별한 향이 일상을 더욱 아름답게 합니다.','1 단계 : 간단한 스멜링 훈련
간단하게 스멜링 훈련을 진행합니다.

2 단계 : 향의 비율 정하기
원하는 향과 향의 비율을 정합니다.

3 단계 : 재료 설명
디퓨저 제작에 필요한 재료를 설명합니다.

4 단계 : 디퓨저 만들기
디퓨저를 만듭니다.

5 단계 : 커스텀 라벨링 문구 디자인
커스텀 라벨을 디자인합니다.

6 단계 : 스티커 붙이기 & 포장
라벨스티커를 붙이고 포장합니다.','1시간 30분',to_date('2023-02-12', 'YYYY-MM-DD'),'12시 30분',12,45000,'디퓨저.png',23);
--행 36
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'케이크+마카롱 캔들 클래스','원데이 클래스로 만들어가는 작지만 알찬 케이크 캔들
공방베스트 디자인으로 미니케이크+마카롱까지 귀여움 가득 만들어 가세요!

기본 디자인은 화이트 시트와 초코 크림 그리고 상큼한 딸기 세조각 토핑!
클래스에서는 기본에 충실하지 않아도 괜찮아요
만드는 사람에따라 토핑과 색감 그리고 향까지 달라지는 캔들이에요!
만드는 사람의 분위기에따라 무한 변신 !

완벽한 커스터마이징 캔들로
선물용으로도 인테리어 용으로도 사랑받는 중입니다!','1 단계 : 주의사항 안내 및 과정안내
캔들을 만들기 전 주의사항과 다양한 도구의 이름을 안내드리고 있습니다.

2 단계 : 캔들 만들기 실습
캔들을 직접 만들고 꾸며보는 시간입니다.

3 단계 : 사진 촬영
캔들을 완성 후 다양한 시그니처 구도로 사진촬영을 도와드리고 있습니다.

4 단계 : 포장 및 사용법 안내
라라별찌 시그니처 포장법을 안내드리고
캔들 사용 방법 및 주의사항을 안내드립니다.','1시간',to_date('2023-02-10', 'YYYY-MM-DD'),'13시 30분',2,37000,'마카롱 캔들.jpeg',36);
--행 37
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'바다캔들홀더, 티라이트 2개 만들기','바다에 맞게 다양한 피규어와 조개 모래를 이용하여 데코하고
컬러를 넣어~ 그라데이션한 리얼 바다를 만들어 보는 시간이에요.

세상에 하나밖에 없는 바다~

티라이트를 넣어 켜는 홀더형 젤캔들로 영구적으로 사용가능합니다.','1 단계 : <재료소개 및 수업 설명>
만들기앞서 재료수업및 만들 작품 소개를 합니다.

2 단계 : <홀더 장식>
홀더 안에 내가 생각하는 바다를 모래와 자갈, 조개등으로 장식합니다.

3 단계 : <티라이트 만들기>
원하는 향을 선택하여 티라이트2ea를 만듭니다.

4 단계 : <캔들만들기 마무리와 질문>
감성문구스티커로 장식하여 마무리후 준비되어있는 포토존에서 사진촬영후 포장후 완성!','1시간 30분',to_date('2023-02-19', 'YYYY-MM-DD'),'11시 20분',1,25000,'바다캔들홀더.jpeg',28);
--행 38
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'손쉽게만드는 시나몬플라워캔들 만들기','시나몬꽃다발 캔들을 만들어봅시다!

부담없는 크기고 분위기 있고 좋아하는 향을 넣어~꼭피우지 않아도 은은한 향기로 가득~
어렵지 않은 수업으로 시나몬과 이쁜 꽃다발을 만들어 데코하고
감성 문구로 마무리함으로 더 멋진 작품을 만드는 수업이에요','1 단계 : <재료소개 및 수업 설명>
캔들에 들어가는 재료와 수업에 대해 간략하게 소개해드립니다.

2 단계 : <향선택,플라워선택>
캔들 향 선택부터 시나몬선택 플라워 선택으로 캔들을 만들기 시작합니다.

3 단계 : <캔들 장식하기>
선택한 플라워로 나만의 스타일로 캔들 장식합니다.

4 단계 : <캔들만들기 마무리와 질문>
캔들만들기를 마무리하고 궁금하신 점에 대해 질문을 받는 시간을 갖습니다.

5 단계 : <포토타임 후 귀가>
완성된 작품을 준비된 포토존에서 예쁘게 촬영 후 예쁘게 포장해드립니다.','1시간 30분',to_date('2023-02-16', 'YYYY-MM-DD'),'9시 30분',1,40000,'시나몬플라워캔들.jpg',29);
--행 39
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'반짝반짝 향기가득 보석방향제 만들기','메리고용기와 함께 보석방향제 120g 제작됩니다.
보석방향제를 만들고 남은 왁스로 왁스타블렛 한구까지 같이 가져가실 수 있어요 ~!

선물용으로 추천드려요','1 단계 : 전반적인 수업내용 설명
보석방향제 컬러와 향료고르기

2 단계 : 제작단계
제작내용른 클래스 내용이라 오시면 확인하실수 있어요

3 단계 : 완성 및 촬영
포토존에서 촬영후 이쁘게 포장해요','1시간 30분',to_date('2023-02-12', 'YYYY-MM-DD'),'12시',3,40000,'보석방향제.jpg',16);
--행 40
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'미니미 귀여운 선인장캔들만들기 2ea','부담없는 크기고 분위기 있고 좋아하는 향을 넣어~꼭피우지 않아도 은은한 향기로 가득~
선인장부터 화분까지 1부터 10까지 직접 만드는 수업

어렵지 않은 수업으로 석고로 컬러를 입힌 화분을 만들고
몰드를 이용하여 선인장을 만들고
취향에 맞는 향을 넣어 멋지게 완성시킵니다.

감성 문구로 마무리함으로 더 멋진 작품을 만드는 수업이에요','1 단계 : <재료소개 및 수업 설명>
오늘 만들 캔들설명및 도구 사용법을 설명합니다.

2 단계 : <화분만들기>
선인장에 들어갈 화분을 석고를 이용하여 직접 채색부터 시작합니다.

3 단계 : <선인장캔들만들기>
직접향선택과 컬러선택하여 선인장을 만들어 굳힙니다.

4 단계 : <캔들만들기 마무리와 질문>
감성문구를 이용하여 마무리하고 준비되어있는 포토존에서 사진촬영후 마무리합니다.','1시간 30분',to_date('2023-02-07', 'YYYY-MM-DD'),'9시',9,35000,'선인장캔들.jpeg',39);
--행 41
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'케이크캔들 만들기(M)','케이크를 먹자니 부담스럽고
기념일은 챙기고 싶은 그런 날!
정말 좋은 케이크캔들 클래스를 소개합니다!

기념하고 간직하기에
정말 좋은 캔들이에요^^

﻿
지름 약 10cm / 높이 약 6.5cm
도시락케이크 사이즈입니다
레터링, 과일, 크림파이핑, 슈가데코
등으로 꾸며줄거에요~
원하는 향을 고르고
원하는 색을 조색하고
직접 깍지파이핑까지 합니다!

베이킹 과정과 흡사하므로 정말
재밌는 수업으로 추천드려요 :)','1 단계 : 향료선택
마음에 드는 향 선택

2 단계 : 케이크디자인
케이크 디자인 스케치

3 단계 : 케이크 바디 제작
케이크 바디 제작

4 단계 : 케이크 데코
케이크 데코

5 단계 : 마무리 및 포토타임
마무리 및 포토타임','3시간',to_date('2023-02-20', 'YYYY-MM-DD'),'9시',1,70000,'케이크캔들.jpg',34);
--행 42
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'부케 캔들 one-day class','부케 캔들 클래스는
플라워를 듬뿍 넣은 필라캔들 / 영롱한 젤 캔들홀더 + 티라이트 4구 / 걸어놓는 향기소품 왁스타블렛 2ea를 만들어가실 수 있는 수업이예요.','1 단계 : 부케 플라워 컨디셔닝
제작물에 맞게 꽃을 정리합니다.

2 단계 : 부케 캔들 디자인
홀더/필라캔들/왁스타블렛 제품에 따라 다르게 디자인합니다.

3 단계 : 향, 컬러 선택
20가지가 넘는 향 중에 원하는 향을 선택, 28가지의 컬러 중에 원하는 색을 선택합니다.

4 단계 : 캔들 제작
제작 유의사항을 숙지한 후 캔들을 제작합니다.

5 단계 : 완성작 촬영
캔들을 완성 후, 준비된 포토존에서 촬영합니다.','1시간',to_date('2023-02-10', 'YYYY-MM-DD'),'16시',4,50000,'부케 캔들.jpg',29);
--행 43
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,4,'귀염뽀짝 캔들 만들기 원데이 클래스','[원데이 클래스]
커플, 친구, 가족과 함께 하는 클래스 / 혼자 하는 클래스 모두 환영해요!
똥손, 왕초보 무조건 괜찮습니다^^
영어,중국어로도 수업 가능합니다! (미리 일정 조율은 필요해요)','1 단계 : 캔들 고르기 & 재료 소개
만들고 싶은 캔들을 고르고 재료에 대해 알아본다

2 단계 : 향료, 염료 고르기
만들고 싶은 캔들에 들어갈 향과 색을 고른다.

3 단계 : 몰드에 붓기
배합한 왁스+향료+염료를 몰드에 붓고 굳힌다.

4 단계 : 데코 및 촬영
캔들을 탈형한 후 데코 및 포토존에서 촬영을 한다.','1시간',to_date('2023-02-07', 'YYYY-MM-DD'),'10시',5,48000,'귀염뽀짝 캔들.jpg',29);
--행 44
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'레이어드 실반지 만들기(3개)','20대 중후반 또는 30대 초반의 악세사리를 좋아하고, 반지 레이어드에 관심이 많은 여성분들을 위한 클래스','1. 반지 디자인 정하기
(3가지 반지 디자인 선택!)
2. 반지 사이즈 측정
3. 은 땜질 연습하기
4. 사이즈에 맞게 반지 만들기
5. 매끈하게 반지 정리해주기
6. 광내기','1시간 30분',to_date('2023-02-01', 'YYYY-MM-DD'),'15시',2,50000,'실반지 레이어드.jpg',13);
--행 45
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'커플/우정 클래스: 세상 유일 이니셜 팔찌 만들기','"우리만의 커플/우정 팔찌"를  직접 만들어 보는 원데이 클래스입니다.  뻔한 데이트가 지겨운 커플,
기념일을 앞두고 있는 커플,
사랑하는 사람에게 특별한 선물을 하고싶은 분,
뻔한 모임이 지겨운 친구들,
의미있는 추억을 남기고 싶은 친구들,
사랑하는 친구에게 특별한 선물을 하고싶은 분,
예쁜 악세사리를 좋아하는 분,
만들기를 좋아하시는 분,
이색 체험을 즐기고 싶은 분,
모두 모두 "어른들의 놀이터"
프랑꼬아트랩으로 놀러오세요~!
손재주가 없어도 괜찮아요,
KDJA(한국디자인쥬얼리연구협회)소속 전문 강사님들이 초보자분들도 쉽게 만들 수 있도록 상세히 가르쳐드립니다.','1. 본 작품을 만들기 전 도구 사용법과 기초 기법 1가지를 배웁니다.
2. 연습 시간을 충분히 갖습니다.
3. 디자인 샘플을 참고로원하는 디자인을 구상합니다. (준비된 재료 내에서 자유롭게 디자인 가능)
4. 우리 만의 팔찌 만들기: 사이즈 체크부터, 완성까지 직접 만들어요: )
5. 프랑꼬만의 특별 서비스: 두 분 만의 이니셜 각인 팬던트 만들기!
6. 완성 후 포토 타임 ♥','1시간',to_date('2023-02-27', 'YYYY-MM-DD'),'13시',6,50000,'세상 유일 이니셜 팔찌 만들기.jpg',10);
--행 46
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'어머니 선물하기 좋은 전통 한복머리장식 뒤꽂이 만들기','🌸선물하기 좋은 전통헤어장식 만들기🌸

(유핀 or 빗핀 중 선택가능)



✔️유핀타입- 2개 제작✔️
--->> 뒷꽂이 2가지 = 기본 1개 + 응용 1개
(스톤컬러 : 6가지 색상 중 선택가능)
(유핀 : 실버로 진행)

✔️빗핀타입- 1개 제작✔️
(스톤컬러 : 6가지 색상 중 선택가능)
(빗핀 : 실버로 진행)

--->> 클래스에 오시면 충분한 설명을 들은 후~ 유핀 또는 빗핀 중 하나를 선택하시게 되세요~!!**

--->> 결혼식, 돌잔치, 파티 한복스타일에 아름답게 스타일링 가능한 "그라엘 한복 뒤꽂이"을 취향에 맞게 직접 만들어 보는 클래스입니다.

--->> 은사와 같은 컬러의 고가 수입 실버와이어를 이용하여 만드는 고급 퀄리티 전통 헤어장식입니다.','✔️ 사전 질문지 작성

✔️ 와이어공예 악세사리에 대한 설명

✔️ 와이어공예에 필요한 기본 도구사용법 익히기

✔️ 다양한 종류의 와이어 꼬임 익히기

✔️ 나만의 와이어 악세사리 만들기 (재료선택)

✔️ 내가 만든 악세사리 예쁘게 촬영하기~💕','2시간 30분',to_date('2023-02-04', 'YYYY-MM-DD'),'13시 30분',4,58000,'어머니 선물하기 좋은 전통 한복머리장식 뒤꽂이 만들기.jpg',1);
--행 47
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'탄생석 담수진주반지+레이어드볼반지+후기서비스반지1종 더!!!!!','10대20대 30대 이상 ~~ 여성분들

반지를 좋아하고 자기탄생석에 관심이 많으신분

친구와 연인또는 가족 지인모두 선물하고싶은분

악세사리를 좋아하는 모든사람

핸드메이드 반지를 평소에 만들고 싶었던 분

배정된시간 말고~~~
원하시는 시간이 따로 있으신분들은
메세지 주시면 최대한 맞출수있어요 ~~

주로 친구분들, 가족, 언니 동생 우정반지로 서로의추억과
특별한 추억을 쌓기 위해 많이 찾아주십니다','1. 도구와재료 사용법 소개 본인에 맞는 손가락 호수 상담(5분)

2. 본인의 생일에 맞는 탄생석팬던트 고르기(5분)

3. 탄생석팬던트와 재료로 탄생석반지와 레이어드 반지 제작하기(30분)

4. 제작완성후 사진촬영 하기 (5분)','1시간',to_date('2023-02-20', 'YYYY-MM-DD'),'11시 40분',3,30000,'탄생석 담수진주반지+레이어드볼반지+후기서비스반지1종 더.jpg',30);
--행 48
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'반짝반짝 주얼리와 함께 하는 나만의 힐링 데이 !','써지컬체인 * 스와로브스키 진주 레이어드 목걸이
팬던트 * 스와로브스키 진주 반지
를 제작하시는 클래스입니다.


써지컬 체인을 원하시는 길이에 맞춰 커팅하고 스와로브스키 진주를 꿰어 연결하는 방법을 배웁니다.
원하시는 팬던트를 직접 골라 제작하실 수 있습니다.


원하시는 팬던트를 직접 골라 스와로브스키 진주반지 또한 제작합니다.','1) 간단한 인사와 소개 (5분)

2) 사이즈 측정 및 조정 (5분)

3) 부자재 선정 및 준비 (10분)

4) 제품 제작 (65분)

5) 사진 촬영 및 마무리 (5분)
','1시간 30분',to_date('2023-02-23', 'YYYY-MM-DD'),'15시 40분',5,45000,'반짝반짝 주얼리와 함께 하는 나만의 힐링 데이 .jpg',29);
--행 49
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'나에게 주는 선물 쉐이커 키링만들기','영롱영롱 누구나 좋아하는 쉐이커키링만들기!


레진아트가 처음인 초보자도 쉽게 만들 수 있는 쉐이커!
시작부터 마무리까지 직접 하실 수 있도록 도와드려요:)','[진행순서]



1. 쉐이커몰드 선택하기

2. 원하는 색으로 조색, 틀만들기

3. 필름지 마감, 구슬 및 재료 넣기

4. 키링 마무리 및 사진촬영','2시간',to_date('2023-02-06', 'YYYY-MM-DD'),'10시 40분',4,45000,'나에게 주는 선물 쉐이커 키링만들기.png',25);
--행 50
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'써지컬스틸 팬던트 매듭팔찌','연인과 친구와 같이 또는 선물용 팔찌를 만들고 싶다면 강추 드려요!
써지컬스틸 팬던트와 매듭으로 데일리팔찌를 만들 수 있답니다 :)','써지컬스틸 팬던트 선택 - 매듭 짓기 - 마무리 및 사진촬영','1시간',to_date('2023-02-28', 'YYYY-MM-DD'),'15시 40분',4,25000,'써지컬스틸 팬던트 매듭팔찌.jpg',2);
--행 51
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'데일리&유니크 발찌 원데이 클래스 (커플/우정 클래스)','우리만의 커플 발찌를 직접 만들어 보는 원데이 클래스입니다.


초보자분들을 대상으로 진행되는 수업입니다.
손재주가 없다고 걱정하지 마세요!



KDJA(한국디자인쥬얼리연구협회)소속
전문 강사님들이 초보자분들도 쉽게 만들 수 있도록
상세히 가르쳐드립니다: )


충분한 연습 시간도 드려요 :)','[원데이 발찌 클래스 커리큘럼]_1시간 소요



1단계 : 도구 사용법과 기법 배우기

본 작품을 만들기 전 도구 사용법과 기초 기법 1가지를 배웁니다



2단계 : 연습시간

연습 시간을 충분히 갖습니다.



3단계 : 디자인 구상

디자인 샘플을 참고로 원하는 디자인을 구상합니다.

(준비된 재료 내에서 자유롭게 디자인 가능)



4단계 : 데일리&유니크 발찌 만들기

사이즈 체크부터, 완성까지 직접 만들어요. :)



5단계 : 프랑꼬만의 특별 서비스

두 분만의 이니셜 각인 팬던트 만들기!



6단계 : 포토타임

완성 후 포토 타임
','1시간',to_date('2023-02-11', 'YYYY-MM-DD'),'10시',6,55000,'데일리&유니크 발찌 원데이 클래스 (커플/우정 클래스).jpg',29);
--행 52
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'귀여운 가죽 카드지갑 만들기 원데이클래스:)','가죽공예가 처음이신 분들꼐 추천하는 클래스 입니다,
소규모로 프라이빗 수업을 받고 싶으신 분
꼼꼼한 지도를 원하시는 분
특별한 선물을 생각중이신 분
특별한 커플/우정 아이템을 직접 만들어 보고 싶은 분
이니셜이 적힌 하나 뿐인 아이템을 갖고 싶은 분','1.가죽공예 설명: 가죽종류, 가죽공예 기본도구 및 사용방법 설명

2.단면마감: 잘려있는 가죽의 단면 부분을 엣지코트로 칠하기

3.목타&새들스티치: 목타 후 가죽 전통 바느질 방법인 새들스티치 하기

4.각인하기: 원하는 영문/숫자/기호 새기기

5.포장하기: 투명비닐은 무상제공되며, 코튼파우치(이니설 도장포함)은 유상제공 됩니다.','2시간 30분',to_date('2023-02-16', 'YYYY-MM-DD'),'14시',4,40000,'귀여운 가죽 카드지갑 만들기 원데이클래스.png',38);
--행 53
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'에어팟프로,에어팟,에어팟3 블루투스이어폰 베지터블소가죽케이스 만들기!','생활기스로부터 보호해 줄 가죽케이스!

에어팟프로, 에어팟, 에어팟3 fit이 일체형으로 제작되었으며

베지터블 소가죽으로 고급스러움까지 담았습니다.



1. 최고급 이탈리아 베지터블 소가죽

2. 한번에 열고 닫는 편리함

3. 핸드메이드 새들스티치 기법으로 강한 내구성

4. 유,무선 충전도 쉽고 빠르게

5. 끈적임없는 우수한 접착력



✔️사이즈 : 46x61x22mm, 두께 : 1.3mm

베지터블 소가죽으로 고급스러움까지 담았습니다. 클래스 입문 과정으로 목타를 뚫고 새들스티치 바느질 작업이 진행됩니다. 그리고 마감의 퀄리티를 높이기 위해 토코놀 작업을 진행합니다.
','베지터블 소가죽으로 고급스러움까지 담았습니다. 클래스 입문 과정으로 목타를 뚫고 새들스티치 바느질 작업이 진행됩니다.
그리고 마감의 퀄리티를 높이기 위해 토코놀 작업을 진행합니다.
','2시간',to_date('2023-02-13', 'YYYY-MM-DD'),'12시',6,50000,'에어팟프로,에어팟,에어팟3 블루투스이어폰 베지터블소가죽케이스 만들기.jpg',11);
--행 54
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'애플워치 스트랩 만들기','_ MATERIAL

천연 고급 베지터블 이태리 소가죽을 사용합니다.


_ COLOR

그린 / 그레이 / 캐슈넛 / 아몬드 / 브라운 / 블랙 / 인디핑크 (7가지)


_ FEATURE

심플한 디자인으로 스티치 포인트가 있는 애플워치스트랩 입니다.','1. 재단된 가죽을 마감재로 마감합니다.

2. 목타를 사용하여 가죽에 구멍을 뚫습니다.

3. 각인을 원하시는 분들은 이니셜각인을 찍습니다.

4. 원하시는 실 색상을 골라 새들스티치를 이용해 손바느질 합니다.

5. 마감하여 완성합니다.','2시간',to_date('2023-02-13', 'YYYY-MM-DD'),'9시',4,68000,'애플워치 스트랩 만들기.png',38);
--행 55
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'가죽가방 데일리백 미니크로스백 만들기 가죽공예 원데이클래스','이 공간을 통해 가죽공예를 접하시는 모든 분들이 즐겁게 작업하시고,
또 그 즐거움의 여운의 일상 속에 오래도록 스며들기를 바라겠습니다.

🏷 미니 크로스백_Ribbon bag

광택이 나는 고급 소가죽에 귀여운 리본을 추가해보았습니다.


핸드폰과 지갑을 넣어 간단히 들고 다니기 좋은 아이템으로,
패딩에도 셔츠에도 무난하게 잘 어울리는 리본백입니다.','🏷 수업 커리큘럼

1. 수업 설명 및 바느질 (120분) :

공방에 도착하시면, 수업 순서를

설명 드린 후 바느질을 시작합니다.

새들스티치 기법을 이용해 몸통을 만들고

미싱으로 스트랩을 만듭니다.



2. 몸통-스트랩 연결 (30분) :

몸통에 스트랩을 리본 모양으로 엮어

가방을 완성합니다.



3. 사진촬영 및 마무리 (30분) :

예쁘게 작업하신 결과물을 공방 곳곳의

포토존에서 예쁘게 촬영하실 수 있습니다.','1시간',to_date('2023-02-19', 'YYYY-MM-DD'),'12시',8,90000,'가죽가방 데일리백 미니크로스백 만들기 가죽공예 원데이클래스.jpg',15);
--행 56
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'힐링하며 원데이 가죽체험하기(업사이클링 가죽가방만들기)','체험을 위해 재단된 DIY 패키지를 준비하였습니다.



■체험가격은 재료비 포함입니다.



■가죽소재와 색상은 소진시 랜덤으로 달라질 수 있습니다.

예약 후 방문하셔서 확인 가능합니다.



■이 작업은 통가죽의 아랫가죽을 이용한

업사이클링 가죽제품 만들기입니다.

재단된 패키지에 구멍을 뚫고 바느질해서

가죽 클러치를 완성하는

체험을 하실수 있습니다~','■이 작업은

본드를 칠하고

지퍼를 붙이고,

바느질 구멍을 뚫고,

바느질 하는

체험을 하실수 있습니다~','3시간',to_date('2023-02-27', 'YYYY-MM-DD'),'16시 30분',6,90000,'힐링하며 원데이 가죽체험하기(업사이클링 가죽가방만들기).jpg',5);
--행 57
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'고급진 가죽으로 만드는 가죽 팔찌 원데이 클래스','리얼 가죽 팔찌 원데이 클래스''인데요,

우리만의 커플가죽 팔찌를 직접 만들어 보는

원데이 클래스입니다.



초보자분들을 대상으로 진행되는 수업입니다.

손재주가 없다고 걱정하지 마세요!



KDJA(한국디자인쥬얼리연구협회)소속

전문 강사님들이 초보자분들도 쉽게 만들 수 있도록

상세히 가르쳐드립니다: )



충분한 연습 시간도 드려요 :)


','[원데이 가죽팔찌 클래스 커리큘럼]_평균 1시간 20분 소요



1단계 : 도구 사용법과 기법 배우기

본 작품을 만들기 전 도구 사용법과 기초 기법 1가지를 배웁니다



2단계 : 연습시간

연습 시간을 충분히 갖습니다.



3단계 : 디자인 구상

디자인 샘플을 참고로 원하는 디자인을 구상합니다.

(준비된 재료 내에서 자유롭게 디자인 가능)



4단계 : 고급진 가죽 팔찌 만들기

사이즈 체크부터, 완성까지 직접 만들어요. :)



5단계 : 추가 옵션 선택하기

레이저 각인 또는 추가 팬던트 선택 !



6단계 : 포토타임

완성 후 포토 타임','1시간 30분',to_date('2023-02-07', 'YYYY-MM-DD'),'16시',6,60000,'고급진 가죽으로 만드는 가죽 팔찌 원데이 클래스.jpg',37);
--행 58
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'[핑거니팅]벨벳 자이언트얀 가방 만들기','설날선물 벨벳 자이언트얀가방 만들기

요즘 정말 핫한 자이언트 얀 가방 원데이 클래스를 진행합니다.



가장 핫한 5가지 색상을 준비했습니다.

아이보리

진그레이

인디핑크

네이비

브라운



사이즈는 3가지가 가능합니다.

미니도트백 - 21 x 17 cm (가로,세로)

도트백 - 23 x 18 cm (가로,세로)

2줄숄더백- 25 x 21 cm (가로,세로/끈길이 35cm)



자이언트 얀 가방은

손뜨개의 코바늘 기법과 대바늘 기법을 섞어서 만들었습니다.



기본 원리와 공식을 이해하기 쉽게 설명, 안내문을 드리고

집에서도 내가 할 수 있도록 동영상 안내도 추후에 드립니다.



열 손가락 중 엄지, 검지, 중지 세 손가락만으로 만드는 핑거니팅 기법으로

만드는 자이언트 얀 가방 함께 만들어 보아요!



만드는 방법이 유튜브를 통해 많이 소개되고 있지만

막상 내가 직접 해 보려고 하면 예쁜 모양 만들기가 쉽지 않고

헷갈려서 그냥 구매하는 게 편하겠다 생각하시는 분들이 많으세요.



하지만, 친절하고 꼼꼼한 달달마망 선생님과 함께 한다면

뚝딱 가방을 완성할 수 있습니다.
','기본 원리와 공식을 이해하기 쉽게 설명, 안내문을 드리고

집에서도 내가 할 수 있도록 동영상 안내도 추후에 드립니다.','1시간 30분',to_date('2023-02-02', 'YYYY-MM-DD'),'10시',3,49000,'[핑거니팅]벨벳 자이언트얀 가방 만들기.jpg',36);
--행 59
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,5,'사랑스런 나의 반려 동물 목걸이 만들기','# 펫 클래스

본 상품은 부산 서면에 위치한 예쁜 악세사리 공방에서 반려동물의 목걸이를 직접 만들어 보는 원데이 클래스 상품입니다.

우리 강아지, 고양이에게 어울릴 목걸이도 만들고, 예쁜 사진도 찍고, 특별한 추억 하나 만들고 가세요 :)
','1. 초보자 분들을 대상으로 하는 클래스입니다.



2. 1인부터 클래스 가능하며, 목걸이 1작품을 제작하실 수 있습니다.



준비된 재료 내에서 자유롭게 디자인 하실 수 있습니다. (체인/비즈+실크볼 중 선택)','1시간',to_date('2023-02-17', 'YYYY-MM-DD'),'16시',6,70000,'사랑스런 나의 반려 동물 목걸이 만들기.png',23);
--행 60
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'2023년 자수 달력 만들기 원데이클래스','​기초적인 7가지 자수기법을 배우고 예쁜 달력까지 만들어갈 수 있는 기회!

평소 프랑스자수를 경험해 보고 싶으신 초보분들은 이번 기회를 통해 경험해 보세요^^','7가지 간단한 기법으로 새해 달력 하나를 완성할 수 있어요


보통 원데이클래스를 진행하면 수업 시간 내에 완성해 가실 수 있지만,

이번 자수 달력 만들기 원데이클래스는 수를 놓아야 하는 양이 조금 많은 수업이에요


​수업 시간 내에 달력을 완성할 수 있는 기법들은 모두 배울 수 있지만,

완성해가기에는 조금 부족한 시간이에요

그래서 재료가 포함된 자수 패키지로 수업을 진행하고

완성하지 못한 부분은 가져가셔서 마무리하실 수 있어요^^
','3시간',to_date('2023-02-19', 'YYYY-MM-DD'),'16시',4,75000,'2023년 자수 달력 만들기 원데이클래스.jpg',19);
--행 61
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'내 손으로 만드는 토끼 필통 OR 파우치','🐰완성작 정보

엠보싱 원단의 토끼가 전면과 후면에 큼지막하게 있고,

앙증맞은 귀와 꼬리로 입체감을 더한 필통&파우치입니다.

지퍼형이라 내용물이 쏟아지지 않게 보관 가능합니다.



잠자는 표정, 볼터치의 귀여운 요소들도 찾아 볼 수 있습니다.



[크기] 파우치: 가로 20cm, 세로 15cm(사이즈는 재는 위치에 따라 다를 수 있음)

필통: 가로 23cm, 세로 9cm(사이즈는 재는 위치에 따라 다를 수 있음)





🐰준비물

- 가위, 자','🐰커리큘럼

1. 작품과 재료 설명

2. 제단하기 - 겉감 원단에 앞면, 뒷면, 바닥을 그려준 후 시접을 남기고 오려줍니다.

겉감에 얼굴, 엉덩이 패턴을 그려줍니다.

3. 아플리케하기 - 겉감과 얼굴, 엉덩이 패턴을 아플리케로 붙여줍니다.

4. 퀼팅하기 - 안감·퀼팅솜·겉감 순서대로 시침 후 바느질해줍니다

5. 바이어스 - 겉감 크기대로 테두리 정리 후 바이어스 해줍니다.

6. 자수놓기 - 수실로 얼굴과 수염, 포인트 문구(Z)를 수 놓아줍니다.

7. 지퍼달기 - 지퍼를 달아줍니다.

8. 포인트 주기 - 토끼 볼에 볼터치 펜으로 포인트를 줍니다

9. 완성하기 - 마무리하여 완성합니다.','6시간',to_date('2023-02-26', 'YYYY-MM-DD'),'11시',4,100000,'내 손으로 만드는 토끼 필통 OR 파우치.jpg',2);
--행 62
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'나만의 우든펜(우드펜) 원데이 클래스','20대,30대
공예를 좋아하는 사람
고급스런 선물
펜 매니아들에게 추천하는 클래스','1. 우든펜 깍기 - 목선반을 이용하여 펜을 깍기



2.우든펜 마감 - 오일 및 코팅



3.우든펜 조립 및 마감 - 펜프레스를 이용 조립후, 레이저 각인기로 자신만의 문구를 각인','2시간',to_date('2023-02-17', 'YYYY-MM-DD'),'16시',4,45000,'나만의 우든펜(우드펜) 원데이 클래스.jpg',10);
--행 63
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'우드×북바인딩 원데이 클래스','북바인딩이란,

낱장의 종이를 묶어 책으로 꾸미는 일입니다.

표지를 종이가 아닌 목재를 사용해

나무와 북바인딩을 접목시켜봤어요.



목재 준비부터 속지들을 직접 엮어보는 클래스입니다.

무지 속지로 다이어리, 수첩, 가계부 등

다양한 용도로 활용할 수 있습니다.

1. 목공 체험을 원하시는 분
2. 북바인딩을 해보고 싶으셨던 분
3. 이색 데이트를 원하는 커플
4. 특별한 취미를 원하시는 분
5. 혼자만의 취미 생활을 원하시는 분','
1. 사포하기 -목재를 부드럽게 사포합니다.

2. 구멍 뚫기 -드릴로 구멍을 뚫어 줍니다.

3. 버닝하기 -원하는 문구나 작은 그림을 버닝해줍니다.

4. 칠 하기 -원하는 색상으로 칠해줍니다.

5. 바인딩하기 -목재와 내지들을 바인딩해줍니다.','3시간',to_date('2023-02-26', 'YYYY-MM-DD'),'16시',4,50000,'우드×북바인딩 원데이 클래스.jpg',30);
--행 64
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,' 힐링하며 원데이 가죽체험하기(필통만들기)','■체험을 위해 재단된 DIY 패키지를 준비하였습니다.



■체험가격은 재료비 포함입니다.



■제품에 사용했던 가죽이 사용되고

재료소진시 가죽소재와 색상은

달라질 수 있습니다.

예약 후 방문하셔서 확인 가능합니다.','■이 작업은

본드를 칠하고

지퍼를 붙이고,

바느질 구멍을 뚫고,

바느질 하는

체험을 하실수 있습니다~','2시간',to_date('2023-02-09', 'YYYY-MM-DD'),'11시',5,50000,' 힐링하며 원데이 가죽체험하기(필통만들기).png',8);
--행 65
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'내 연필은 소중하니까, 연필모자 6color set 만들기','내 연필은 소중하니까! 연필모자



다양한 가죽과 가죽도구의 이름과 사용방법을 배우실 수 있어요.

색실을 이용한 아기자기한 나만의 연필모자을 만드는 수업입니다.



총 6가지 색상의 연필모자 set 를 만들어 볼 수 있습니다.

톡톡한 두께의 천연소가죽 오플을 사용하며

느낌에 따라 참장식, 이니셜 각인(서비스) 등도 가능해요.','5분 : 가죽공예 소개 및 강사소개

50분 : 가죽 타공, 가죽 바느질, 참장식 달기

5분 : 마무리 및 이쁜 감성사진 찍기','1시간',to_date('2023-02-28', 'YYYY-MM-DD'),'16시',10,35000,'내 연필은 소중하니까, 연필모자 6color set 만들기.jpg',32);
--행 66
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'표지부터 이니셜까지 취향대로! 커스텀 다이어리 만들기','🧞‍♂️원하는 걸 실현할 수 있는 북바인딩 클래스🔮

원하는 표지, 원하는 실 색상, 원하는 이니셜

모두 다 내 마음대로! 커스텀 수제노트 만들기

만드는 사람마다 다 달라서

재미있는 커스텀 북바인딩

그 매력 함께 알아볼까요?','✔️왓위원트만의 이니셜 바인딩

왓위원트 자체 제작 이니셜 바인딩을 배우고, 책등에 영어 대문자, 숫자, 기호(별, 하트, 번개)를 직접 새길 수 있어요.

알록달록 실 색상을 고르고 노트를 엮다 보면 시간 가는 줄 모를 거예요!



✔️취향에 맞게 선택하는 표지

표지를 위한 빈티지 서적, 박스, 쇼핑백들이 다양하게 준비되어 있어요. 간직하고 싶으신 종이를 사이즈에 맞춰 오시면 표지로 만들 수 있어요!

(앞뒤 면 각각 13 x 18cm 이상 크기)



✔️마시면서 사부작사부작 만들기

만들기에 집중하다 보면 시간이 훅 가는데요, 이 시간 더 즐겁도록 웰컴 드링크를 제공해 드립니다.

(커피, 음료수, 맥주 중 택 1)



✔️곰손도 뚝딱! 재밌게 집중하는 과정

과정이 정해져 있는 공예이기 때문에 손재주가 없어도 걱정하지 마세요! 종이접기, 풀칠, 펀칭, 책을 엮는 스티치까지 과정별로 차근차근 알려드릴게요 :)','2시간 30분',to_date('2023-02-02', 'YYYY-MM-DD'),'9시',6,45000,'표지부터 이니셜까지 취향대로! 커스텀 다이어리 만들기.jpg',39);
--행 67
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'[북바인딩] 2023 달력 + 미니 노트 만들기','🔥미리 준비하는 2023년

11, 12, 1월. 딱 3개월만 스페셜하게 열리는 limited class.

왓위원트만의 감성을 담은 ''2023년 달력''과 함께 ''미니 노트 3권''을 만들 수 있어요.

놓치지 말고 함께 새해 준비해 볼까요?','🪡여러 가지 바인딩 기법 배우기.

싱글 섹션, 체인, 스티치, 동양식 바인딩까지 하루에 모두 경험해볼 수 있어요!



🧵베이직하지만 유니크해요.

베이직한 디자인에 내가 고른 실로 유니크함을 더해보세요!','2시간',to_date('2023-02-05', 'YYYY-MM-DD'),'16시',6,38000,'[북바인딩] 2023 달력 + 미니 노트 만들기.jpg',8);
--행 68
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'책 만들기 공방_ 하드커버 미니북 만들기','하드커버 미니북 만들기입니다. 여러분의 손으로 예쁜 책을 직접 만들어보세요.

파주에 가면 인쇄 박물관도 있고, 출판사들도 많지요. 책은 출판사에서만 만든다고 생각하셨죠? 이제 그 어렵다는 책 만들기에 여러분도 도전해보실 수 있습니다. 출판사에서 책을 만드는 방식을 단순화시켜 여러분도 체험해볼 수 있게 만든 프로그램입니다.

책을 만들기 위해서는 원고가 있어야 하는데, 본인이 써놓은 글이 없는 분들을 위해 준비한 클래스입니다.

책의 완성품은 하드커버 미니북 형태입니다.','① 편집 체험 - 전문가의 안내를 따라 아래한글로 가편집 작업 체험하기

② 내지 인쇄 - 다른 사람의 원고(저작권 만료된 원고)로 편집이 끝난 파일을 종이에 인쇄

③ 표지 인쇄 - 기존에 작업된 표지 디자인을 종이에 인쇄

④ 내지 인쇄한 것 분류 작업 - 페이지별로 순서 정리

⑤ 내지 낱장을 묶는 작업 - 기계 또는 본드 작업으로 내지 묶기

⑥ 내지 끝부분 재단 작업 - 재단기로 여백 절단

⑦ 헤드밴드 부착 작업 - 본드를 발라서 부착

⑧ 하드커버 표지 만들기 - 보드지에 풀을 발라 표지 씌우기

⑨ 내지와 표지를 결합 - 풀과 본드를 발라 결합

⑩ 코너 금장식 달기 - 하드커버 표지에 금장식을 달아 마무리','1시간',to_date('2023-02-10', 'YYYY-MM-DD'),'15시',6,30000,'책 만들기 공방_ 하드커버 미니북 만들기.png',33);
--행 69
INSERT INTO TBLCLASS (SEQ, CSEQ, NAME, INTRO, COURSE, TIME, DUEDATE, DUETIME, MEMBERCNT, PRICE, IMAGE, SSEQ) VALUES (seqClass.nextVal,6,'가죽책갈피 북마크 만들기 가죽공예 원데이클래스','이 공간을 통해 가죽공예를

접하시는 모든 분들이 즐겁게 작업하시고,

또 그 즐거움의 여운의 일상 속에

오래도록 스며들기를 바라겠습니다.







🏷 가죽 책갈피_Love You

하트 안에 원하시는 메시지를

각인문구로 새겨 마음을 전하실 수 있는

가죽 책갈피 Love You 입니다.







🏷 사이즈

가로 5cm, 세로 5cm','1. 수업 설명 및 바느질 (90분) :

공방에 도착하시면, 수업 순서를

설명 드린 후 바느질을 시작합니다.

새들스티치 기법을 이용해 손바느질을 합니다.



2. 단면마감 (60분) :

바느질을 마친 후, 단면을 마감하는

목적의 엣지코트를 바릅니다.

깔끔한 단면마감을 위해

2차례 엣지코트를 도포합니다.



3. 사진촬영 및 마무리 (30분) :

예쁘게 작업하신 결과물을 공방 곳곳의

포토존에서 예쁘게 촬영하실 수 있습니다.
🏷 재료 소개

리본라움에서 진행되는 클래스는

가죽 / 실 / 엣지코트 / 각인 모두

직접 고르시기에 본인의 개성을 담은,

더욱더 특별한 굿즈를 만드실 수 있습니다.



1. 가죽

물리적인 가공작업을 최소화해

가죽 특유의 무늬가 잘 살아있고, 내구성이 높은

풀 그레인 소가죽을 이용합니다.

15가지 컬러가 준비되어 있으며

예약 후 가죽 색상 차트를 보내드립니다.



2. 각인서비스

각인의 경우 한 번의 작업을 위해

여러 차례의 테스트가 필요하기 때문에

미리 원하시는 각인 문구와 위치를 말씀해주시면

공방장이 사전작업을 해놓습니다.

영어 대/소문자, 숫자, 특수문자

하트 ! ? @ - _ . , · / : ; ( ) " '' # % & 가능하며,

폰트와 크기는 변경불가합니다.



3. 실

프랑스 H사에서 사용하는 것으로 유명한

최고급 천연린넨사 ''린카블레''를 사용합니다.

약 50가지 컬러의 실이 준비되어 있으며

새들스티치 기법을 이용해 제작하기 때문에

올 풀림 없이 오랫동안 사용하실 수 있습니다.



4. 엣지코트

엣지코트는 가죽 단면을 보호하는 마감제로

유니크한 엣지코트 컬러는 제품에

디자인적인 효과를 주기도 합니다.

이태리의 ''페니체'' 제품을 사용하며

약 70가지 컬러의 엣지코트가 준비되어 있습니다.','1시간',to_date('2023-02-12', 'YYYY-MM-DD'),'15시 30분',8,25000,'가죽책갈피 북마크 만들기 가죽공예 원데이클래스.jpg',20);


select * from tblMemberClass;


--tblMemberClass

insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 37, 62, '2023-01-23', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 32, 51, '2023-01-30', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 36, 53, '2023-01-14', 2);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 5, 1, '2023-01-11', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 36, 49, '2023-01-17', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 46, 62, '2023-01-24', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 22, 36, '2023-01-28', 2);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 48, 40, '2023-01-24', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 34, 28, '2023-01-20', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 19, 6, '2023-01-09', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 32, 31, '2023-01-20', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 14, 9, '2023-01-15', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 37, 45, '2023-01-22', 2);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 13, 56, '2023-01-11', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 26, 6, '2023-01-21', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 7, 51, '2023-01-03', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 3, 19, '2023-01-12', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 3, 49, '2023-01-24', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 15, 54, '2023-01-16', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 47, 27, '2023-01-10', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 13, 41, '2023-01-16', 3);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 28, 3, '2023-01-25', 2);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 5, 49, '2023-01-09', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 11, 35, '2023-01-09', 1);
insert into tblMemberClass(seq, mseq, cseq, rdate, rmembercnt) values (seqMemberClass.nextVal, 40, 7, '2023-01-25', 3);

select * from tblMainBoard;
--메인게시판 글

insert into tblMainBoard values (seqMainBoard.NextVal, '메인게시판 사용 수칙입니다.', '메인 게시판 이용 시 규칙을 준수해주시고
타인에게 불쾌감을 주는 표현 및 게시글은 삭제조치 됩니다^^', default, '' , 1);
insert into tblMainBoard values (seqMainBoard.NextVal, '피드 이용 문의드립니다.', '혹시 피드에 사진이 여러 장 올라가는 기능 추가
건의드려도 될까요~?', default, '', 2);
insert into tblMainBoard values (seqMainBoard.NextVal, '클래스 이용 관련 질문', '클래스는 어떻게 검색해서 어떻게 등록하나요?'
, default, '', 5);
insert into tblMainBoard values (seqMainBoard.NextVal, '오프라인 공방 방문 문의드려요~', '공방을 방문하고싶은데 여기 문의하면 되나요?'
, default, '', 10);
insert into tblMainBoard values (seqMainBoard.NextVal, '이 사이트 너무 편하고 강추드려요!', '여러 공방이랑 클래스 한눈에 볼수있고
매칭도 너무 편리합니다! 다들 많이 이용해보세요^^', default, '', 16);
insert into tblMainBoard values (seqMainBoard.NextVal, '사이트 이용하려면 회원가입이 필수인가요...?ㅠㅠ',
'클래스를 가입할건 아니고 공방 둘러보거나 다른분들 작품 구경하고싶어도 회원가입 후 이용해야 하나요?'
, default, '', 21);
insert into tblMainBoard values (seqMainBoard.NextVal, '공방 운영자분들 정보 공유해요~', '저희 각자 공방 게시판 이용보단
여기 메인 게시판에서 공유할만한 정보가 있으면 함께 공유합시다!', default, '', 51);
insert into tblMainBoard values (seqMainBoard.NextVal, '부모님 명절 선물로 어떤게 좋을까요', '크고 비실용적인 것 말고
앤틱하고 아기자기한 것으로 추천 부탁드립니다!', default, '', 34);
insert into tblMainBoard values (seqMainBoard.NextVal, '직장인도 부담없이 들을수 있는 클래스 추천해주세요!',
'종류는 사무용품이나 악세사리면 좋을것같아요!', default, '', 39);
insert into tblMainBoard values (seqMainBoard.NextVal, '클래스 후기 작성은 여기서 해도 되나요??', '얼마전에 도자기 공예 원데이 클래스를
들었는데, 후기를 작성하고싶습니다!', default, '', 39);


select * from tblMainBoardAnswer;
--메인게시판 댓글 aseq,bseq

insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '모두 잘 숙지해주시고 건전한 게시판 이용 지향합시다!',
default, 1 , 1);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '추후 업데이트 예정입니다! 감사합니다!', default, 1, 2);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '클래스 목록 페이지에서 검색 또는 추천 클래스를 조회 후
가입 신청 가능하십니다.', default, 1, 3);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '공방 관련 게시글은 해당 공방 게시판을 이용해주세요.', default, 1, 4);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '맞습니다~ 관리자님 꾸준한 관리도 칭찬해요~~', default, 9, 5);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '클래스를 등록할게 아니라면 비회원도 이용 가능합니다!', default, 1, 6);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '이게 맞는것같습니다~ 저희끼리도 꾸준히 소통해요!', default, 77, 7);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '앤틱하고 실용적인 주방 목공예품 추천드려요~', default, 88, 8);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '원데이클래스로 뜨개 공예 종류 추천드려요!', default, 47, 9);
insert into tblMainBoardAnswer values (seqMainBoardAnswer.NextVal, '클래스 후기 또한 해당 공방의 게시판에 남겨주세요!', default, 1, 10);


select * from tblFeedLike;
--피드 좋아요

insert into tblFeedLike values (seqFeedLike.NextVal, 1, 2);
insert into tblFeedLike values (seqFeedLike.NextVal, 1, 3);
insert into tblFeedLike values (seqFeedLike.NextVal, 2, 4);
insert into tblFeedLike values (seqFeedLike.NextVal, 3, 5);
insert into tblFeedLike values (seqFeedLike.NextVal, 4, 6);
insert into tblFeedLike values (seqFeedLike.NextVal, 5, 7);
insert into tblFeedLike values (seqFeedLike.NextVal, 6, 8);
insert into tblFeedLike values (seqFeedLike.NextVal, 7, 9);
insert into tblFeedLike values (seqFeedLike.NextVal, 8, 10);
insert into tblFeedLike values (seqFeedLike.NextVal, 9, 11);
insert into tblFeedLike values (seqFeedLike.NextVal, 10, 12);
insert into tblFeedLike values (seqFeedLike.NextVal, 11, 13);
insert into tblFeedLike values (seqFeedLike.NextVal, 11, 14);